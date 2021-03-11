unit MiniSoft.Atualiza;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, IdComponent,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, dxGDIPlusClasses, IdBaseComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, iniFiles, IdException, Winapi.ShellAPI,
  Winapi.WinInet, System.Zip, Conexao;

type
  TfrmAtualiza = class(TForm)
    FDQuery1: TFDQuery;
    IdFTP1: TIdFTP;
    Image1: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FnTamanhoTotal: integer;
  function ObterDiretorioDoExecutavel: string;
  function ConectarAoServidorFTP: boolean;
  function ObterNumeroVersaoLocalVendas: smallint;
  function ObterNumeroVersaoLocalBase: smallint;
  function ObterNumeroVersaoFTPVendas: smallint;
  function ObterNumeroVersaoFTPBase: smallint;
  procedure BaixarAtualizacaoVendas;
  procedure DescompactarAtualizacaoVendas;
  procedure AtualizarNumeroVersaoBase;
  procedure BaixaArquivoAtualizacaoFTP;
  procedure AtualizarNumeroVersaoVendas;
  procedure BaixarAtualizacaoBase;
  procedure AtualizaBase;
  end;

var
  frmAtualiza: TfrmAtualiza;
  carrega : String;
implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmAtualiza.AtualizaBase;
begin
      Memo1.Clear;
                  memo1.Lines.LoadFromFile(GetCurrentDir + '\AtualizaBaseFB.txt');
                 with FdQuery1 do
                 begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add(memo1.Text);
                  fdquery1.ExecSQL;
                 end;
end;

procedure TfrmAtualiza.AtualizarNumeroVersaoBase;
var
  oArquivoLocal, oArquivoFTP: TIniFile;
  sNumeroNovaVersao: string;
begin
  // abre os dois arquivos INI
  oArquivoFTP := TIniFile.Create(ObterDiretorioDoExecutavel + 'FTP.ini');
  oArquivoLocal := TIniFile.Create(ObterDiretorioDoExecutavel + 'conf.ini');
  try
    // obtém o número da nova versão no arquivo "VersaoFTP.ini"...
    sNumeroNovaVersao := oArquivoFTP.ReadString('AtualizacaoFTP', 'Base', '');

    // ... e grava este número no arquivo "VersaoLocal.ini"
    oArquivoLocal.WriteString('Atualizacao', 'Base', sNumeroNovaVersao);
  finally
    FreeAndNil(oArquivoFTP);
    FreeAndNil(oArquivoLocal);
  end;
end;



procedure TfrmAtualiza.AtualizarNumeroVersaoVendas;
var
  oArquivoLocal, oArquivoFTP: TIniFile;
  sNumeroNovaVersao: string;
begin
  // abre os dois arquivos INI
  oArquivoFTP := TIniFile.Create(ObterDiretorioDoExecutavel + 'FTP.ini');
  oArquivoLocal := TIniFile.Create(ObterDiretorioDoExecutavel + 'conf.ini');
  try
    // obtém o número da nova versão no arquivo "VersaoFTP.ini"...
    sNumeroNovaVersao := oArquivoFTP.ReadString('AtualizacaoFTP', 'Vendas', '');

    // ... e grava este número no arquivo "VersaoLocal.ini"
    oArquivoLocal.WriteString('Atualizacao', 'Vendas', sNumeroNovaVersao);
  finally
    FreeAndNil(oArquivoFTP);
    FreeAndNil(oArquivoLocal);
  end;
end;

procedure TfrmAtualiza.BaixaArquivoAtualizacaoFTP;
begin
if FileExists(ObterDiretorioDoExecutavel + 'FTP.ini') then
    DeleteFile(ObterDiretorioDoExecutavel + 'FTP.ini');

  // baixa o arquivo "VersaoFTP.ini" para o computador
  IdFTP1.Get('atualizacao/FTP.ini', ObterDiretorioDoExecutavel + 'FTP.ini', True, True);
end;



procedure TfrmAtualiza.BaixarAtualizacaoBase;
begin
  try
    // deleta o arquivo "Atualizacao.rar", caso exista,
    // evitando erro de arquivo já existente
    if FileExists(ObterDiretorioDoExecutavel + 'AtualizaBaseFB_bkp.txt') then
      DeleteFile(ObterDiretorioDoExecutavel + 'AtualizaBaseFB_bkp.txt');

    RenameFile(ObterDiretorioDoExecutavel + 'AtualizaBaseFB.txt',
    ObterDiretorioDoExecutavel + 'AtualizaBaseFB_bkp.txt');
    // obtém o tamanho da atualização e preenche a variável "FnTamanhoTotal"
    FnTamanhoTotal := IdFTP1.Size('atualizacao/AtualizaBaseFB.txt');

    // faz o download do arquivo "Atualizacao.rar"
    IdFTP1.Get('atualizacao/AtualizaBaseFB.txt',
      ObterDiretorioDoExecutavel + 'AtualizaBaseFB.txt', True, True);
  except
    On E:Exception do
    begin
      // ignora a exceção "Connection Closed Gracefully"
      if E is EIdConnClosedGracefully then
        Exit;

      ShowMessage('Erro ao baixar a atualização: ' + E.Message);

      // interrompe a atualização
      Abort;
    end;
  end;
end;

procedure TfrmAtualiza.BaixarAtualizacaoVendas;
begin
  try
    // deleta o arquivo "Atualizacao.rar", caso exista,
    // evitando erro de arquivo já existente
    if FileExists(ObterDiretorioDoExecutavel + 'PDV_bkp.zip') then
      DeleteFile(ObterDiretorioDoExecutavel + 'PDV_bkp.zip');

    RenameFile(ObterDiretorioDoExecutavel + 'PDV.zip',
    ObterDiretorioDoExecutavel + 'PDV_bkp.zip');
    // obtém o tamanho da atualização e preenche a variável "FnTamanhoTotal"
    FnTamanhoTotal := IdFTP1.Size('atualizacao/PDV.zip');

    // faz o download do arquivo "Atualizacao.rar"
    IdFTP1.Get('atualizacao/PDV.zip',
      ObterDiretorioDoExecutavel + 'PDV.zip', True, True);
  except
    On E:Exception do
    begin
      // ignora a exceção "Connection Closed Gracefully"
      if E is EIdConnClosedGracefully then
        Exit;

      ShowMessage('Erro ao baixar a atualização: ' + E.Message);

      // interrompe a atualização
      Abort;
    end;
  end;
end;

function TfrmAtualiza.ConectarAoServidorFTP: boolean;
begin
  if IdFTP1.Connected then
    IdFTP1.Disconnect;
  try
    IdFTP1.Connect;
    result := True;
  except
    On E:Exception do
    begin
      //ShowMessage('Erro ao acessar o servidor de atualização: ' + E.Message);
      Close;
      result := False;
    end;
  end;
end;



procedure TfrmAtualiza.DescompactarAtualizacaoVendas;
var
  sNomeArquivoAtualizacao: string;
  zipFile : TzipFile;
begin
  // deleta o backup anterior, ou melhor, da versão anterior,
  // evitando erro de arquivo já existente
  if FileExists(ObterDiretorioDoExecutavel + 'PDV_bkp.exe') then
    DeleteFile(ObterDiretorioDoExecutavel + 'PDV_bkp.exe');

  // Renomeia o executável atual (desatualizado) para "Sistema_Backup.exe"
  RenameFile(ObterDiretorioDoExecutavel + 'PDV.exe',
    ObterDiretorioDoExecutavel + 'PDV_bkp.exe');

  // armazena o nome do arquivo de atualização em uma variável
  sNomeArquivoAtualizacao := ObterDiretorioDoExecutavel + 'PDV.zip';

  // executa a linha de comando do 7-Zip para descompactar o arquivo baixado
  //ShellExecute(0, nil, 'Rar',  PWideChar(' e -aoa ' +
    //sNomeArquivoAtualizacao + ' -o' + ObterDiretorioDoExecutavel), '', SW_SHOW);
    zipFile := TZipFile.Create;
  try
   zipFile.Open(ObterDiretorioDoExecutavel + 'PDV.zip', zmRead);
   zipFile.ExtractAll();
   zipFile.Close;
  finally
   zipFile.free;
  end;
end;

procedure TfrmAtualiza.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f4 then
   abort;
end;

procedure TfrmAtualiza.FormShow(Sender: TObject);
begin
timer1.Enabled := true;
end;

procedure TfrmAtualiza.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
var
  nTamanhoTotal, nTransmitidos, nPorcentagem: real;
begin
  if FnTamanhoTotal = 0 then
    Exit;

  Application.ProcessMessages;

  // obtém o tamanho total do arquivo em bytes
  nTamanhoTotal := FnTamanhoTotal div 1024;

  // obtém a quantidade de bytes já baixados
  nTransmitidos := AWorkCount div 1024;

  // calcula a porcentagem de download
  nPorcentagem := (nTransmitidos * 100) / nTamanhoTotal;

  // atualiza o componente TLabel com a porcentagem

    Label1.Caption :='Baixando Atualização. Aguarde!';
    ProgressBar1.Position := AWorkCount div 1024;




  // atualiza a barra de preenchimento do componente TProgressBar


end;

procedure TfrmAtualiza.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
ProgressBar1.Max := FnTamanhoTotal div 1024;
end;

function TfrmAtualiza.ObterDiretorioDoExecutavel: string;
begin
result := ExtractFilePath(Application.ExeName);
end;

function TfrmAtualiza.ObterNumeroVersaoFTPBase: smallint;
var
  sNumeroVersao: string;
  oArquivoINI: TIniFile;
begin
   oArquivoINI := TIniFile.Create(ObterDiretorioDoExecutavel + 'FTP.ini');
  try
    // lê o número da versão
    sNumeroVersao := oArquivoINI.ReadString('FTP', 'Base', EmptyStr);

    // retira os pontos (exemplo: de "1.0.1" para "101")
    sNumeroVersao := StringReplace(sNumeroVersao, '.', EmptyStr, [rfReplaceAll]);

    // converte o número da versão para número
    result := StrToIntDef(sNumeroVersao, 0);
  finally
    FreeAndNil(oArquivoINI);
  end;
end;

function TfrmAtualiza.ObterNumeroVersaoFTPVendas: smallint;
var
  sNumeroVersao: string;
  oArquivoINI: TIniFile;
begin
  // deleta o arquivo "AtualizacoaFTP.ini" do computador, caso exista,
  // evitando erro de arquivo já existente
 // if FileExists(ObterDiretorioDoExecutavel + 'AtualizacoaFTP.ini') then
  //  DeleteFile(ObterDiretorioDoExecutavel + 'AtualizacoaFTP.ini');

  // baixa o arquivo "VersaoFTP.ini" para o computador
  //IdFTP1.Get('atualizacao/AtualizacoaFTP.ini', ObterDiretorioDoExecutavel + 'AtualizacoaFTP.ini', True, True);

  // abre o arquivo "VersaoFTP.ini"
  oArquivoINI := TIniFile.Create(ObterDiretorioDoExecutavel + 'FTP.ini');
  try
    // lê o número da versão
    sNumeroVersao := oArquivoINI.ReadString('AtualizacaoFTP', 'Vendas', EmptyStr);

    // retira os pontos (exemplo: de "1.0.1" para "101")
    sNumeroVersao := StringReplace(sNumeroVersao, '.', EmptyStr, [rfReplaceAll]);

    // converte o número da versão para número
    result := StrToIntDef(sNumeroVersao, 0);
  finally
    FreeAndNil(oArquivoINI);
  end;
end;

function TfrmAtualiza.ObterNumeroVersaoLocalBase: smallint;
var
  sNumeroVersao: string;
  oArquivoINI: TIniFile;
begin
  // abre o arquivo "VersaoLocal.ini"
  oArquivoINI := TIniFile.Create(ObterDiretorioDoExecutavel + 'conf.ini');
  try
    // lê o número da versão
    sNumeroVersao := oArquivoINI.ReadString('Atualizacao', 'Base', EmptyStr);

    // retira os pontos (exemplo: de "1.0.0" para "100")
    sNumeroVersao := StringReplace(sNumeroVersao, '.', EmptyStr, [rfReplaceAll]);

    // converte o número da versão para número
    result := StrToIntDef(sNumeroVersao, 0);
  finally
    FreeAndNil(oArquivoINI);
  end;
end;



function TfrmAtualiza.ObterNumeroVersaoLocalVendas: smallint;
var
  sNumeroVersao: string;
  oArquivoINI: TIniFile;
begin
  // abre o arquivo "VersaoLocal.ini"
  oArquivoINI := TIniFile.Create(ObterDiretorioDoExecutavel + 'conf.ini');
  try
    // lê o número da versão
    sNumeroVersao := oArquivoINI.ReadString('Atualizacao', 'Vendas', EmptyStr);

    // retira os pontos (exemplo: de "1.0.0" para "100")
    sNumeroVersao := StringReplace(sNumeroVersao, '.', EmptyStr, [rfReplaceAll]);

    // converte o número da versão para número
    result := StrToIntDef(sNumeroVersao, 0);
  finally
    FreeAndNil(oArquivoINI);
  end;
end;

procedure TfrmAtualiza.Timer1Timer(Sender: TObject);
var
  nNumeroVersaoLocalVendas, nNumeroVersaoFTPVendas: smallint;
  nNumeroVersaoLocalGerencial, nNumeroVersaoFTPGerencial: smallint;
  nNumeroVersaoLocalOrca, nNumeroVersaoFTPOrca: smallint;
  nNumeroVersaoLocalBase, nNumeroVersaoFTPBase: smallint;
  I : integer;
begin
 timer1.Enabled := false;
  if InternetCheckConnection('http://www.atualinformatica.com.br/', 1, 0)  then
 begin
 i := 0;
  if not ConectarAoServidorFTP then
    Exit;
    BaixaArquivoAtualizacaoFTP;

  nNumeroVersaoLocalVendas := ObterNumeroVersaoLocalVendas;
  nNumeroVersaoFTPVendas := ObterNumeroVersaoFTPVendas;


  nNumeroVersaoLocalBase := ObterNumeroVersaoLocalBase;
  nNumeroVersaoFTPBase := ObterNumeroVersaoFTPBase;

  if nNumeroVersaoLocalVendas < nNumeroVersaoFTPVendas then
  begin
    carrega := 'Vendas';
    BaixarAtualizacaoVendas;
    DescompactarAtualizacaoVendas;
    AtualizarNumeroVersaoVendas;
    i := 1;

  end;

  if nNumeroVersaoLocalBase < nNumeroVersaoFTPBase  then
  begin
    Carrega := 'Base';
    BaixarAtualizacaoBase;
    AtualizarNumeroVersaoBase;
    AtualizaBase;
    i := 1;
  end
  else
    Close;
  if i <> 1 then
  begin
    label1.Caption :='Liberando Sistema!';
    Application.ProcessMessages
  end;

  case i of
      1 :
      begin
       label1.Caption :=('Atualização concluída com sucesso. A aplicação será reiniciada.');
       Application.ProcessMessages;
       sleep(1000);
       ShellExecute(Handle, nil, PChar(Application.ExeName), '', nil, SW_SHOWNORMAL);
       Application.Terminate;
      end;
  end;
 end
 else
 begin
   Close;
 end;


end;

end.
