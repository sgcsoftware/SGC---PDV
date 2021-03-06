unit Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.UI,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,iniFiles,Vcl.Forms, Vcl.Dialogs, Winapi.WinInet,FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, Winapi.Windows,
  ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFEClass, ACBrDANFCeFortesFr,
  ACBrBase, ACBrDFe, ACBrNFe, ACBrNFeDANFEFR, ACBrNFeDANFeRLClass,
  ACBrNFeDANFeESCPOS, ACBrPosPrinter, frxClass, frxDBSet, frxDesgn,
  frxIBXComponents, frxTableObject, uDWConstsData, uRESTDWPoolerDB, uDWAbout,
  FireDAC.Phys.IBBase, pcnConversaoNFe;

type
  TDm = class(TDataModule)
    MySQLDriver: TFDPhysMySQLDriverLink;
    Revenda: TFDConnection;
    FDQuery1: TFDQuery;
    FDquery: TFDQuery;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    frxPrevenda: TfrxDBDataset;
    frxitensPrevenda: TfrxDBDataset;
    frxPrevendaMod1: TfrxReport;
    frxHistoricoDeProdutos: TfrxDBDataset;
    HistoricoDeProduto: TFDQuery;
    frxHistoricoDeProduto: TfrxReport;
    frxHistoricoProdutoReal: TfrxReport;
    frxDuplicata: TfrxReport;
    frxContasAReceber: TfrxDBDataset;
    frxCarne: TfrxReport;
    frxNotaPromissoria: TfrxReport;
    frxReceibo: TfrxReport;
    frxContaReceberRel1: TfrxReport;
    frxContasAreceberAvencer: TfrxReport;
    frxContasAreceberAtrasado: TfrxReport;
    frxContasAreceberPago: TfrxReport;
    frxReportTableObject1: TfrxReportTableObject;
    frxIBXComponents1: TfrxIBXComponents;
    frxDesigner1: TfrxDesigner;
    frxGlobal: TfrxDBDataset;
    frxProdutos: TfrxDBDataset;
    frxViaCliente: TfrxReport;
    frxDBViaCliente: TfrxDBDataset;
    ACBrNFe: TACBrNFe;
    Con: TFDConnection;
    DriverFB: TFDPhysFBDriverLink;
    Cursor: TFDGUIxWaitCursor;
    ContasAReceber: TFDQuery;
    Prevenda: TFDQuery;
    ItensPrevenda: TFDQuery;
    FDNfce: TFDQuery;
    FDProduto: TFDQuery;
    Global: TFDQuery;
    RelatorioLX300: TfrxReport;
    procedure DataModuleCreate(Sender: TObject);
    procedure frxPrevendaMod1BeforePrint(Sender: TfrxReportComponent);
    procedure ACBrNFeStatusChange(Sender: TObject);
    procedure ACBrNFeTransmitError(const HttpError, InternalError: Integer;
      const URL, DadosEnviados, SoapAction: string; var Retentar,
      Tratado: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MiniSoft.View.Principal;

{$R *.dfm}

procedure TDm.ACBrNFeStatusChange(Sender: TObject);
begin
 case ACBrNFe.Status of
    stIdle:
      begin

      end;

    stNFeStatusServico:
      begin


        frmPrincipal.Panel9.Caption := 'Verificando Status do servico...';
      end;

    stNFeRecepcao:
      begin


        frmPrincipal.Panel9.Caption := 'Enviando dados da NFe...';

      end;

    stNfeRetRecepcao:
      begin


        frmPrincipal.Panel9.Caption := 'Recebendo dados da NFe...';

      end;

    stNfeConsulta:
      begin


        frmPrincipal.Panel9.Caption := 'Consultando NFe...';

      end;

    stNfeCancelamento:
      begin


        frmPrincipal.Panel9.Caption := 'Enviando cancelamento de NFe...';

      end;

    stNfeInutilizacao:
      begin


        frmPrincipal.Panel9.Caption := 'Enviando pedido de Inutiliza??o...';

      end;

    stNFeRecibo:
      begin


        frmPrincipal.Panel9.Caption := 'Consultando Recibo de Lote...';

      end;

    stNFeCadastro:
      begin


        frmPrincipal.Panel9.Caption := 'Consultando Cadastro...';

      end;

    stNFeEmail:
      begin


        frmPrincipal.Panel9.Caption := 'Enviando Email...';

      end;

    stNFeCCe:
      begin


        frmPrincipal.Panel9.Caption := 'Enviando Carta de Corre??o...';

      end;

    stNFeEvento:
      begin


        frmPrincipal.Panel9.Caption := 'Enviando Evento...';

      end;
  end;

  Application.ProcessMessages;
end;

procedure TDm.ACBrNFeTransmitError(const HttpError, InternalError: Integer;
  const URL, DadosEnviados, SoapAction: string; var Retentar, Tratado: Boolean);
begin
    if Retentar = false then
    begin

    end;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
var
SERVER,CONECTION_NAME, USER,DRIVER, SENHA, LIB, DB: string;
var PORTA: String;
var CONF: TiniFile;
Flags : Cardinal;
begin

     Revenda.Offline;


     MySQLDriver.VendorLib := GetCurrentDir + '\libmysql.dll';
     CONF := TIniFile.Create(ExtractFilePath(Application.exeName) + '\conf.ini');
     DB := CONF.ReadString('banco','database','');
     PORTA := CONF.ReadString('banco','porta','');
     Con.DriverName := 'fB';
     con.Params.values['User_name'] := 'sysdba';
     con.Params.values['Password'] := 'masterkey';
     con.Params.values['Port'] := PORTA;
     con.Params.Values['DataBase'] := DB;
     try
        Con.Connected := true;
      except
        ShowMessage('Erro ao Conectar a Base!')
      end;

      {Usu?rio:
      atuali72
      Senha:
      Y15sieT35x }
      Revenda.Connected := false;
      Revenda.Params.Clear;
      Revenda.DriverName := 'MySQL';
   if InternetCheckConnection('http://www.atualinformatica.com.br/', 1, 0) then
      begin
        Revenda.Params.Add('Server='   +'cpanel.atualinformatica.com.br');
        Revenda.Params.Add('User_name='+'atuali72_pegasus');
        Revenda.Params.Add('Password=' + 'Mn98326521');
        Revenda.Params.Add('Port='     +'3306');
        Revenda.Params.Add('Database=' + 'atuali72_revendas');
          try
            Revenda.Connected := true;
        except
            //ShowMessage('Banco de Dados n?o Conectado');

        end;
      end;


end;


procedure TDm.frxPrevendaMod1BeforePrint(Sender: TfrxReportComponent);
var
 NomeArquivo :string;
begin
  NomeArquivo := ExtractFilePath(Application.ExeName) + 'Logo.png';

  if (FileExists(NomeArquivo) and (frxPrevendaMod1.FindComponent('img_logo')<> nil)) then
  begin
    TfrxPictureView(frxPrevendaMod1.FindComponent('img_logo')).Picture.LoadFromFile(NomeArquivo);
  end;
end;

end.
