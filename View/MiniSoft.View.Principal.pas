unit MiniSoft.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, MiniSoft.Funcoes,
  MiniSoft.Controller.NfceItens, MiniSoft.Model.NfceItens, MiniSoft.View.Login,
  MiniSoft.Model.Permissao, MiniSoft.Controller.Permissao,
  MiniSoft.Model.Principal, Vcl.ComCtrls, MiniSoft.Controller.Nfce,
  MiniSoft.Model.Nfce, MiniSoft.Controller.Produtos, MiniSoft.Model.Produtos,
  Vcl.ExtDlgs, Vcl.Menus, iniFiles, MiniSoft.Model.ABREFECHACAIXA,
  MiniSoft.View.RelatoriodeVendas, ACBrBase, ACBrTEFD, ConfigFile.Model,
  ACBrTEFDClass, ACBrPosPrinter, System.UITypes, System.DateUtils, ACBrUtil, ACBrTEFDCliSiTef,
  sSkinManager, uDWConstsData, uRESTDWPoolerDB, System.Threading, sPanel,
  MiniSoft.Model.HistoricoDeProduto, MiniSoft.Controller.HistoricoDeProduto,
  RLReport, acPNG, Vcl.Mask, RzEdit, RzSpnEdt, Vcl.AppEvnts;

type
  tEstadoEcfSimulado = (tpsLivre, tpsVenda, tpsSubTotal, tpsTotalPagar, tpsPagamento, tpsRelatorio);
  tpPagamento        = (tpDinheiro, tpCartao);
  TfrmPrincipal = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    Panel9: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Image1: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    pn_totalaPagar: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel1: TPanel;
    DSCupom: TDataSource;
    DBGrid2: TDBGrid;
    DSProd: TDataSource;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    Image2: TImage;
    Label1: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    qtdItens: TLabel;
    Label2: TLabel;
    lb_NVenda: TLabel;
    PopupMenu1: TPopupMenu;
    NFCe1: TMenuItem;
    ConsultaStatusSefaz1: TMenuItem;
    SelecionarImpressora1: TMenuItem;
    Produtos1: TMenuItem;
    lb_NumeroVenda: TLabel;
    Panel12: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    TipoImportacao: TLabel;
    NumeroImportacao: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    importadesconto: TLabel;
    importasubtotal: TLabel;
    importaTotal: TLabel;
    importacaoCodigo: TLabel;
    Label8: TLabel;
    Timer2: TTimer;
    Aparncia1: TMenuItem;
    Panel20: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    edt_pesquisa: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    FecharCaixa1: TMenuItem;
    Label11: TLabel;
    ImportaStatus: TLabel;
    RelatriodeVendas1: TMenuItem;
    ACBrTEFD1: TACBrTEFD;
    EF1: TMenuItem;
    ACBrPosPrinter1: TACBrPosPrinter;
    EFAdmin1: TMenuItem;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Memo1: TMemo;
    SpeedButton8: TSpeedButton;
    FDProd: TFDQuery;
    FDCupom: TFDQuery;
    Panel29: TPanel;
    Panel30: TPanel;
    Image3: TImage;
    Timer3: TTimer;
    Edit2: TPanel;
    Edit1: TPanel;
    ResumodeVendas1: TMenuItem;
    ConfiguraesNFCe1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edt_pesquisaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure edt_pesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Image2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2Enter(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure NFCe1Click(Sender: TObject);
    procedure ConsultaStatusSefaz1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Aparncia1Click(Sender: TObject);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure RelatriodeVendas1Click(Sender: TObject);
    procedure EF1Click(Sender: TObject);
    procedure ACBrTEFD1AguardaResp(Arquivo: string; SegundosTimeOut: Integer;
      var Interromper: Boolean);
    procedure ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1DepoisConfirmarTransacoes(
      RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
      Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: string);
    procedure ACBrTEFD1RestauraFocoAplicacao(var Tratado: Boolean);
    procedure ACBrTEFD1CliSiTefExibeMenu(Titulo: string; Opcoes: TStringList;
      var ItemSelecionado: Integer; var VoltarMenu: Boolean);
    procedure ACBrTEFD1CliSiTefObtemCampo(Titulo: string; TamanhoMinimo,
      TamanhoMaximo, TipoCampo: Integer;
      Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: AnsiString;
      var Digitado, VoltarMenu: Boolean);
    procedure EFAdmin1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SelecionarImpressora1Click(Sender: TObject);
    procedure DSCupomDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Panel30Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ResumodeVendas1Click(Sender: TObject);
    procedure ConfiguraesNFCe1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
    IndiceTransacaoTef: Integer;
    FContador : Integer;
    IdProduto : Integer;
    idProdCupom : Integer;
    procedure FinalizaF3;
    procedure LancaProdutoCupom(qtdCupom, Codigo, Tipo, sub, codsub : String);
    procedure CodigoProduto;
    procedure CodigoProdutoPesquisa;
    procedure ProdutoBuscaAvancada;
    procedure AbreCupom;
    procedure SQLPesquisa;

    procedure DeletaProduto;
    procedure GravaNFCe;
    procedure LancaProdutoPrevenda;
    procedure ReabreVenda;
    procedure AbreConsulta;
    procedure ImportaPrevenda;
    procedure CarregaImagem(Promocao : string);
    procedure LogaSemLogin;


  public
    { Public declarations }
    FF7 : string;
    CodigoNFCe : Integer;
    Global : TPrincipalModel;
    PerM : TPermissaoModel;
    PerC : TPermissaoController;
    estadoSimuladoEcf: tEstadoEcfSimulado;
    fCancelado       : Boolean;
    procedure CaixaLivre;
    procedure CarregaGlobal;
    procedure CarregaUser(Codigo : Integer; CodigoU : Integer; LoginU : String);
    procedure MudaBusca;
    procedure LimpaVenda;
    procedure FinalizaDinheiro;
    procedure VerificaCaixaAberto;
    procedure TEF;
    procedure PesquisaProduto;
    procedure TotalCompra;
    procedure GerarNFCeTEF(NumNFe: String; valorVenda: Currency; emissaoOffLine: Boolean);
    function verificarSaldoRestante: Currency;
    procedure EfetuaPagamento(formaPagamento: tpPagamento);
    procedure finalizarCupomNFCe;
    procedure ConfiguraACBrPosPrint;
    procedure ConectaTEF;
    procedure AtualizaItemCupom;
    procedure EditaProduto;
    procedure AddItemCupom (CodigoBarra, Qtd, Valor, Total, Descricao,
  Randomico, ord, Un: String);
    function PadL(const S: string; const ComprimentoFinal: integer;
  const Complemento: string): string;
    function ValidaCertificado : boolean;
    function SubtraiData(DataI, DataF: TDateTime): Integer;
    procedure AvisaNotasEmContingencia;
  end;

var
  frmPrincipal: TfrmPrincipal;
  GTime, TipoPesquisa : Integer;
  Randomico : String;
  Codigo, QtdCupom, ConfirBalanca, valorProdutoBalanca, ImagemProduto : String;

implementation

{$R *.dfm}

uses MiniSoft.View.Finalizar, MiniSoft.View.AlteraProduto,
  MiniSoft.View.Produtos, MiniSoft.View.NFCe, MiniSoft.View.Prevenda,
  MiniSoft.View.Consulta, MiniSoft.Atualiza, MiniSoft.View.Aparencia,
  MiniSoft.View.FechaCaixa, MiniSoft.View.ConfTEF, MiniSoft.View.OnExibeMenu,
  MiniSoft.View.onObtemMenu, synachar, MiniSoft.Controller.Usuarios,
  MiniSoft.Model.Usuarios, MiniSoft.View.SelecionaImpressora,
  MiniSoft.View.ProdutosCupom, MiniSoft.View.DeletaProduto,
  MiniSoft.View.ResumoDeVendas, MiniSoft.View.ConfNFCe;

procedure TfrmPrincipal.AbreConsulta;
begin
 if frmConsulta = nil then
    frmConsulta := TfrmConsulta.Create(self);
    frmConsulta.ShowModal;
    FreeandNil(frmConsulta);
end;

procedure TfrmPrincipal.AbreCupom;
var
NfceM : TNfceModel;
NfceC : TNfceController;
num : Integer;
x : String;
q1 : TFDquery;
begin

    memo1.Clear;
    randomize;
    num := Round(random(99999));

    x := FormatDateTime('ddmmyyyy', now);
    Randomico := x+inttostr(num);
    NfceM := TNfceModel.create;
    NfceC := TNfceController.create;
    try
      with NfceM do
      begin
       NFC_CODIGO := 0;
       NFC_IDE_UF := '';
       NFC_DEST_XNOME := 'Consumidor Final';
       NFC_IDE_NATOP := 'Venda de Mercadoria';
       NFC_IDE_MOD := 65;
       NFC_IDE_SERIE := 1;
       NFC_IDE_NNF := 0;
       NFC_IDE_DHEMI := now;
       NFC_DEST_CNPJ := '';
       NFC_BENEFICIARIO := Global.PRI_CPFCNPJ;
       NFC_RANDOMICO :=  Randomico;
       NFC_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
       NFC_XMOTIVO := 'Aberto';
       NFC_COD_USUARIO := PerM.CodigoUser;
       NFC_FECHADA := 'N';
       NFC_TIPO := 'F';

      end;
      NfceC.Inserir(NfceM);


    finally
      FreeandNil(NfceM);
      FreeandNil(NfceC);
    end;

    with FDCupom do
    begin
      close;
      sql.Clear;
      sql.Add('select * from TB_NFCEITENS where NFC_BENEFICIARIO = '+QuotedStr(Global.PRI_CPFCNPJ));
      sql.Add('and NFC_RANDOMICO='+QuotedStr(Randomico));
      sql.Add('order by nfc_codigo');
      open;
      last;
      TNumericField(FieldByName('NFC_PROD_QCOM')).DisplayFormat := '###,###,##0.000';
      TNumericField(FieldByName('NFC_PROD_VPROD')).DisplayFormat := '###,###,##0.00';
      TNumericField(FieldByName('NFC_PROD_VUNCOM')).DisplayFormat := '###,###,##0.00';
    end;

    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

    try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Add('select * from TB_NFCE where NFC_BENEFICIARIO='+QuotedStr(Global.PRI_CPFCNPJ));
        sql.Add('and NFC_RANDOMICO='+QuotedStr(Randomico));
        open;
        lb_NVenda.Caption :=  q1.FieldByName('nfc_codigo').AsString;
      end;
    finally
      FreeandNil(q1);
    end;
end;

procedure TfrmPrincipal.ACBrTEFD1AguardaResp(Arquivo: string;
  SegundosTimeOut: Integer; var Interromper: Boolean);
var
  Msg: String;
begin
  Msg := '';
  if (ACBrTEFD1.GPAtual in [ gpCliSiTef, gpVeSPague]) then // É TEF dedicado ?
  begin
    if (Arquivo = '23') then //and (not bCancelarResp.Visible) then  // Está aguardando Pin-Pad ?
    begin
      if ACBrTEFD1.TecladoBloqueado then
      begin
        ACBrTEFD1.BloquearMouseTeclado(False); // Desbloqueia o Teclado
          // TODO: nesse ponto é necessário desbloquear o Teclado, mas permitir
          //       um clique apenas no botão cancelar.... FALTA CORRIGIR NO DEMO
      end;

      Msg := 'Tecle "ESC" para cancelar.';
        // bCancelarResp.Visible := True ;
      fCancelado := False;
    end;
  end
  else
    Msg := 'Aguardando: ' + Arquivo + ' ' + IntToStr(SegundosTimeOut);

  if Msg <> '' then
      // StatusBar1.Panels[2].Text := Msg;
    Application.ProcessMessages;

  if fCancelado then
    Interromper := True;
end;

procedure TfrmPrincipal.ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
var
f : TFuncoesGerais;
begin
///// compila e coloca lá que resolve
/////
//  f := TFuncoesGerais.create;
//  try
//  if Req.Header = 'CRT' then
//  begin
//  /// seguinte seu problema está aqui.
//  ///  se for querer filtrar vai dar problemas
//  ///  ele está obrigadno algo e ali esse cartão é voucher
//    //passo se é debito ou credito
//
//    //blz,
//    if Assigned(frmFinalizar) then
//      if f.RetDec(frmFinalizar.edt_fpCarCredito.Text) > 0 then
//        Req.GravaInformacao(731,000,'1')
//      else
//      if f.RetDec(frmFinalizar.edt_fpCarDebito.Text) > 0 then
//        Req.GravaInformacao(731,000,'2');
//
//    // passo as parcelas
//    if Assigned(frmFinalizar) then
//      Req.GravaInformacao(018,000,'1');//frmFinaliza.NFCe.qtdParcelasCartao.ToString);
//  end;
//  finally
//    FreeandNil(f);
//  end;
end;

procedure TfrmPrincipal.ACBrTEFD1CliSiTefExibeMenu(Titulo: string;
  Opcoes: TStringList; var ItemSelecionado: Integer; var VoltarMenu: Boolean);
Var
  AForm: TfrmOnExibeMenu;
  MR   : TModalResult;
begin
  AForm := TfrmOnExibeMenu.Create(self);
  try
    AForm.panel2.Caption := 'Escolha Uma Opção!';
    AForm.ListBox1.Items.AddStrings(Opcoes);

    MR := AForm.ShowModal;

    VoltarMenu := (MR = mrRetry);

    if (MR = mrOK) then
      ItemSelecionado := AForm.ListBox1.ItemIndex;
  finally
    FreeandNil(AForm);
  end;
end;

procedure TfrmPrincipal.ACBrTEFD1CliSiTefObtemCampo(Titulo: string;
  TamanhoMinimo, TamanhoMaximo, TipoCampo: Integer;
  Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: AnsiString;
  var Digitado, VoltarMenu: Boolean);
Var
  AForm: TfrmOnObtemMenu;
  MR   : TModalResult;
begin
  AForm := TfrmOnObtemMenu.Create(self);
  try
    AForm.panel2.Caption  := Titulo;
    AForm.TamanhoMaximo := TamanhoMaximo;
    AForm.TamanhoMinimo := TamanhoMinimo;
    AForm.Operacao      := Operacao;
    AForm.TipoCampo     := TipoCampo;
    AForm.Edit1.Text    := Resposta; { Para usar Valores Previamente informados }

    MR := AForm.ShowModal;

    Digitado   := (MR = mrOK);
    VoltarMenu := (MR = mrRetry);

    if Digitado then
      Resposta := AForm.Edit1.Text;
  finally
    FreeandNil(AForm);
  end;
end;

procedure TfrmPrincipal.ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
  Resp: TACBrTEFDResp; var RetornoECF: Integer);
begin
  begin
  try
    case Operacao of
      opeFechaCupom:
        estadoSimuladoEcf := tpsLivre;

      opeFechaGerencial, opeFechaVinculado:
        estadoSimuladoEcf := tpsRelatorio;

      opePulaLinhas:
        begin
          ACBrPosPrinter1.PularLinhas(7);
          Sleep(200);
        end;

      opeImprimePagamentos:
        begin
        end;
    end;
    RetornoECF := 1;
  except
    RetornoECF := 0;
  end;
end;
end;

procedure TfrmPrincipal.ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string;
  Valor: Double; var RetornoECF: Integer);
begin
  try
    RetornoECF := 1;
  except
    RetornoECF := 0;
  end;
end;

procedure TfrmPrincipal.ACBrTEFD1ComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
  try
    case TipoRelatorio of
      trGerencial, trVinculado:
      begin
        ConfiguraACBrPosPrint;
        ACBrPosPrinter1.Imprimir(ImagemComprovante.Text, True);
        ACBrPosPrinter1.ImprimirLinha('');
        ACBrPosPrinter1.ImprimirLinha('');
        ACBrPosPrinter1.ImprimirLinha('');
        ACBrPosPrinter1.ImprimirLinha('');
        ACBrPosPrinter1.ImprimirLinha('');
        ACBrPosPrinter1.CortarPapel;
      end;
    end;
    RetornoECF := 1;
  except
    RetornoECF := 0;
  end;
end;

procedure TfrmPrincipal.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
begin
    estadoSimuladoEcf := tpsPagamento;
  RetornoECF        := 1;
end;

procedure TfrmPrincipal.ACBrTEFD1DepoisConfirmarTransacoes(
  RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  I: Integer;
begin
  for I := 0 to RespostasPendentes.Count - 1 do
  begin
    with RespostasPendentes[ I ] do
    begin
        //      Memo1.Lines.Add('Confirmado: ' + Header + ' ID: ' + IntToStr(ID));
        //
        //      Memo1.Lines.Add('Rede: ' + Rede + ' NSU: ' + NSU + ' Valor: ' + FormatFloat('###,###,##0.00', ValorTotal));
        //      Memo1.Lines.Add('Campo 11: ' + LeInformacao(11, 0).AsString);
    end;
  end;
end;

procedure TfrmPrincipal.ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
  Mensagem: string; var AModalResult: TModalResult);
  var
  Fim        : TDateTime;
  OldMensagem: String;
begin
  case Operacao of

    opmOK:
      AModalResult := MessageDlg(Mensagem, System.UITypes.TMsgDlgType.mtInformation, [ System.UITypes.TMsgDlgBtn.mbOK ], 0);

    opmYesNo:
      AModalResult := MessageDlg(Mensagem, System.UITypes.TMsgDlgType.mtConfirmation, [ System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo ], 0);

    opmExibirMsgOperador, opmRemoverMsgOperador:
     panel9.caption := Mensagem;

    opmExibirMsgCliente, opmRemoverMsgCliente:
      panel9.caption := Mensagem;

    opmDestaqueVia:
      begin
        OldMensagem := panel9.caption;
        try
          panel9.caption := Mensagem;
            //pMensagemOperador.Visible := True ;
            // pMensagem.Visible         := True ;

            { Aguardando 3 segundos }
          Fim := IncSecond(now, 3);
          repeat
            sleep(200);
            panel9.caption := Mensagem + ' ' + IntToStr(SecondsBetween(Fim, now));
            Application.ProcessMessages;
          until (now > Fim);

        finally
          panel9.caption := OldMensagem;
        end;
      end;
  end;

  Application.ProcessMessages;
end;


procedure TfrmPrincipal.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
  var RetornoECF: string);
var
  ASubTotal: Double;
begin
  case Operacao of
    ineSubTotal:
      begin
        ASubTotal := StringToFloatDef(frmFinalizar.edt_fpCarCredito.text, 0) + StringToFloatDef(frmFinalizar.edt_fpCarDebito.text, 0);
       // ASubTotal := ASubTotal - StringToFloatDef(frmFinalizar.pn_Total.Caption, 0){ + Tratar Desconto e Acrescimo aqui: StringToFloatDef(edValorDescAcre.Text, 0)};
        RetornoECF := FloatToStr(ASubTotal);
        if estadoSimuladoEcf = tpsPagamento then
          RetornoECF := FloatToStr(0);
      end;

    ineTotalAPagar:
      RetornoECF := '0';

    ineEstadoECF:
      begin
        Case estadoSimuladoEcf of
          tpsLivre:
            RetornoECF := 'L';
          tpsVenda:
            RetornoECF := 'V';
          tpsPagamento:
            RetornoECF := 'P';
          tpsRelatorio:
            RetornoECF := 'R';
          else
            RetornoECF := 'O';
        end;
      end;
  end;
end;

procedure TfrmPrincipal.ACBrTEFD1RestauraFocoAplicacao(var Tratado: Boolean);
begin
  frmprincipal.BringToFront;

  Tratado := False; { Deixa executar o código de Foco do ACBrTEFD }

end;

procedure TfrmPrincipal.AddItemCupom(CodigoBarra, Qtd, Valor, Total, Descricao,
  Randomico, ord, Un: String);
  var
  Panel : TPanel;
  lab, lab2 : TLabel;
  num : Integer;
  nomep, nomelab, nomelab2 : String;
begin
   {randomize;
   num := Round(random(99999));
   nomep := 'Panel'+inttostr(num);
   nomelab := inttostr(num)+'lab';
   nomelab2 := inttostr(num)+'lab2';
   Panel := TPanel.Create(self);
   Panel.Parent := panel27;
   panel.Name := 'Panel'+inttostr(num);
   Panel.Align := alTop;
   Panel.BevelKind := bkFlat;
   Panel.BevelOuter := bvLowered;
   Panel.Caption := '';
   Panel.Alignment := taCenter;
   Panel.Width := 589;


   lab := TLabel.Create(self);
   lab.Parent := panel;
   lab.Align := alTop;
   lab.Alignment := taLeftJustify;
   lab.Caption := CodigoBarra+'                                                                                                   '+Qtd+'           '+Valor+'            '+Total;
   lab.Font.Name := 'Segoe UI Semibold';
   lab.Font.Size := 9;

   lab2 := TLabel.Create(self);
   lab2.Parent := panel;
   lab2.Align := alTop;
   lab2.Alignment := taCenter;
   lab2.Caption := Descricao;
   lab2.Font.Name := 'Segoe UI Semibold';
   lab2.Font.Size := 9;
   lab.Font.Color := clBlue;  }


   if Memo1.GetTextLen = 0 then
   Memo1.Lines.Add('Código de Barra               Qtd        Valor       Total');
   Memo1.Lines.Add(ord+' - '+ Descricao);
   Memo1.Lines.Add(PadL(CodigoBarra, 18,'')+'     '+un+'    '+PadL(Qtd, 9,'')+'   '+PadL(valor, 9,'')+'   '+PadL(total, 9,''));
   Memo1.Lines.Add('---------------------------------------------------------------');
end;

procedure TfrmPrincipal.Aparncia1Click(Sender: TObject);
begin
 if frmApresentacao = nil then
    frmApresentacao := TfrmApresentacao.Create(nil);
    frmApresentacao.ShowModal;
    FreeandNil(frmApresentacao);
end;

procedure TfrmPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
ShowMessage(e.Message);
end;

procedure TfrmPrincipal.AtualizaItemCupom;
begin
    FDCupom.Refresh;
   // FdCupom.Last;
   // TotalCompra;
end;

procedure TfrmPrincipal.AvisaNotasEmContingencia;
var
q1 : TFDquery;
begin
   q1 := TFDquery.Create(nil);
   q1.Connection := dm.Con;
   try
     with q1 do
     begin
      Close;
      SQL.Clear;
      SQL.Add('select * from TB_NFCE where nfc_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
      SQL.add('and NFC_XMOTIVO='+QuotedStr('Contingência'));
      Open;
      if not IsEmpty then
       panel30.Caption := 'Existem Notas em Contigência!'
       else
       panel30.Caption := '';
     end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TfrmPrincipal.CaixaLivre;
begin
 panel9.Caption := 'CAIXA LIVRE';
 Edit2.Caption := '0,000';
 Edit1.Caption := '0,000';
 Panel16.Caption := '0,00';
 pn_totalaPagar.Caption := '0,00';
 lb_NVenda.Caption := '0';
 lb_NumeroVenda.Caption := '0';
 FDCupom.Close;
 Randomico := '';
 panel12.Visible := false;
 ImportaStatus.Caption := '';
 TipoImportacao.Caption := 'Não';
 qtdItens.Caption := 'Qtd Itens : 0';
 frmPrincipal.Memo1.Clear;
 FContador := 0;

end;

procedure TfrmPrincipal.CarregaGlobal;
begin
   dm.Global.Refresh;
    Global := TPrincipalModel.Create;
    try
    with Global do
    begin
    PRI_CODIGO:=Dm.Global.FieldByName('PRI_CODIGO').asinteger;
    PRI_CPFCNPJ:=Dm.Global.FieldByName('PRI_CPFCNPJ').AsString;
    PRI_RAZAO:=Dm.Global.FieldByName('PRI_RAZAO').AsString;
    PRI_FANTASIA:=Dm.Global.FieldByName('PRI_FANTASIA').AsString;
    PRI_RESPONSAVEL:=Dm.Global.FieldByName('PRI_RESPONSAVEL').AsString;
    PRI_IE:=Dm.Global.FieldByName('PRI_IE').AsString;
    PRI_IM:=Dm.Global.FieldByName('PRI_IM').AsString;
    PRI_ENDERECO:=Dm.Global.FieldByName('PRI_ENDERECO').AsString;
    PRI_MUNICIPIO:=Dm.Global.FieldByName('PRI_MUNICIPIO').AsString;
    PRI_NUMERO:=Dm.Global.FieldByName('PRI_NUMERO').AsString;
    PRI_CEP:=Dm.Global.FieldByName('PRI_CEP').AsString;
    PRI_TELEFONE:=Dm.Global.FieldByName('PRI_TELEFONE').AsString;
    PRI_CNAE:=Dm.Global.FieldByName('PRI_CNAE').AsString;
    PRI_UF:=Dm.Global.FieldByName('PRI_UF').AsString;
    PRI_CODIGO_REVENDA:=Dm.Global.FieldByName('PRI_CODIGO_REVENDA').asinteger;
    PRI_UUID:=Dm.Global.FieldByName('PRI_UUID').AsString;
    PRI_IBGEEMITENTE:=Dm.Global.FieldByName('PRI_IBGEEMITENTE').AsString;
    PRI_NFE_NUMERO_S_CERTIFICADO:=Dm.Global.FieldByName('PRI_NFE_NUMERO_S_CERTIFICADO').AsString;
    PRI_NFE_SENHA_CERTIFICADO:=Dm.Global.FieldByName('PRI_NFE_SENHA_CERTIFICADO').AsString;
    PRI_NFE_CRIPTOGRAFIA:=Dm.Global.FieldByName('PRI_NFE_CRIPTOGRAFIA').AsString;
    PRI_NFE_SERVIDOR:=Dm.Global.FieldByName('PRI_NFE_SERVIDOR').AsString;
    PRI_NFE_DANFE:=Dm.Global.FieldByName('PRI_NFE_DANFE').AsString;
    PRI_NFE_EMISSAO:=Dm.Global.FieldByName('PRI_NFE_EMISSAO').AsString;
    PRI_NFE_REGIME:=Dm.Global.FieldByName('PRI_NFE_REGIME').AsString;
    PRI_NFE_ULT_NFE_S1:=Dm.Global.FieldByName('PRI_NFE_ULT_NFE_S1').asinteger;
    PRI_NFE_ULT_NFE_S2:=Dm.Global.FieldByName('PRI_NFE_ULT_NFE_S2').asinteger;
    PRI_NFE_CONF1:=Dm.Global.FieldByName('PRI_NFE_CONF1').AsString;
    PRI_NFE_CONF2:=Dm.Global.FieldByName('PRI_NFE_CONF2').AsString;
    PRI_NFE_CONF3:=Dm.Global.FieldByName('PRI_NFE_CONF3').AsString;
    PRI_NFE_CONF4:=Dm.Global.FieldByName('PRI_NFE_CONF4').AsString;
    PRI_NFE_CONF5:=Dm.Global.FieldByName('PRI_NFE_CONF5').AsString;
    PRI_NFE_CONF6:=Dm.Global.FieldByName('PRI_NFE_CONF6').AsString;
    PRI_NFE_CONF7:=Dm.Global.FieldByName('PRI_NFE_CONF7').AsString;
    PRI_NFE_CONF8:=Dm.Global.FieldByName('PRI_NFE_CONF8').AsString;
    PRI_NFE_CONF9:=Dm.Global.FieldByName('PRI_NFE_CONF9').AsString;
    PRI_NFE_CONF10:=Dm.Global.FieldByName('PRI_NFE_CONF10').AsString;
    PRI_NFE_CONF11:=Dm.Global.FieldByName('PRI_NFE_CONF11').AsString;
    PRI_NFE_CONF12:=Dm.Global.FieldByName('PRI_NFE_CONF12').AsString;
    PRI_NFE_CONF13:=Dm.Global.FieldByName('PRI_NFE_CONF13').AsString;
    PRI_NFE_CONF14:=Dm.Global.FieldByName('PRI_NFE_CONF14').AsString;
    PRI_NFE_CONF15:=Dm.Global.FieldByName('PRI_NFE_CONF15').AsString;
    PRI_NFE_CONF16:=Dm.Global.FieldByName('PRI_NFE_CONF16').AsString;
    PRI_NFE_CONF17:=Dm.Global.FieldByName('PRI_NFE_CONF17').AsString;
    PRI_NFE_CONF18:=Dm.Global.FieldByName('PRI_NFE_CONF18').AsString;
    PRI_NFE_CONF19:=Dm.Global.FieldByName('PRI_NFE_CONF19').AsString;
    PRI_NFE_CONF20:=Dm.Global.FieldByName('PRI_NFE_CONF20').AsString;
    PRI_NFE_CONF21:=Dm.Global.FieldByName('PRI_NFE_CONF21').AsString;
    PRI_EMAIL_HOST:=Dm.Global.FieldByName('PRI_EMAIL_HOST').AsString;
    PRI_EMAIL_PORTA:=Dm.Global.FieldByName('PRI_EMAIL_PORTA').AsString;
    PRI_EMAIL_EMAIL:=Dm.Global.FieldByName('PRI_EMAIL_EMAIL').AsString;
    PRI_EMAIL_SENHA:=Dm.Global.FieldByName('PRI_EMAIL_SENHA').AsString;
    PRI_PDC_VENDA_NFCE:=Dm.Global.FieldByName('PRI_PDC_VENDA_NFCE').AsString;
    PRI_PDC_VENDA_NFCE_ID:=Dm.Global.FieldByName('PRI_PDC_VENDA_NFCE_ID').asinteger;
    PRI_PDC_DUPLICATAS:=Dm.Global.FieldByName('PRI_PDC_DUPLICATAS').AsString;
    PRI_PDC_DUPLICATAS_ID:=Dm.Global.FieldByName('PRI_PDC_DUPLICATAS_ID').asinteger;
    PRI_PDC_TROCA_DEVOLUCOES:=Dm.Global.FieldByName('PRI_PDC_TROCA_DEVOLUCOES').AsString;
    PRI_PDC_TROCA_DEVOLUCOES_ID:=Dm.Global.FieldByName('PRI_PDC_TROCA_DEVOLUCOES_ID').asinteger;
    PRI_PRODUTOS_CONF1:=Dm.Global.FieldByName('PRI_PRODUTOS_CONF1').AsString;
    PRI_PRODUTOS_CONF2:=Dm.Global.FieldByName('PRI_PRODUTOS_CONF2').AsString;
    PRI_PRODUTOS_CONF3:=Dm.Global.FieldByName('PRI_PRODUTOS_CONF3').AsString;
    PRI_PRODUTOS_CONF4:=Dm.Global.FieldByName('PRI_PRODUTOS_CONF4').AsString;
    PRI_PRODUTOS_CONF5:=Dm.Global.FieldByName('PRI_PRODUTOS_CONF5').AsString;
    PRI_PRODUTOS_CONF6:=Dm.Global.FieldByName('PRI_PRODUTOS_CONF6').AsString;
    PRI_PRODUTOS_CONF7:=Dm.Global.FieldByName('PRI_PRODUTOS_CONF7').AsString;
    PRI_PRODUTOS_CONF8:=Dm.Global.FieldByName('PRI_PRODUTOS_CONF8').AsString;
    PRI_PREVENDA_CONF1:=Dm.Global.FieldByName('PRI_PREVENDA_CONF1').AsString;
    PRI_PREVENDA_CONF2:=Dm.Global.FieldByName('PRI_PREVENDA_CONF2').AsString;
    PRI_PREVENDA_CONF3:=Dm.Global.FieldByName('PRI_PREVENDA_CONF3').AsString;
    PRI_PREVENDA_CONF4:=Dm.Global.FieldByName('PRI_PREVENDA_CONF4').AsString;
    PRI_PDV_IDCSC:=Dm.Global.FieldByName('PRI_PDV_IDCSC').AsString;
    PRI_PDV_CODIGOCSC:=Dm.Global.FieldByName('PRI_PDV_CODIGOCSC').AsString;
    PRI_PDV_SERVIDOR:=Dm.Global.FieldByName('PRI_PDV_SERVIDOR').AsString;
    PRI_PDV_DANFE:=Dm.Global.FieldByName('PRI_PDV_DANFE').AsString;
    PRI_PDV_EMISSAO:=Dm.Global.FieldByName('PRI_PDV_EMISSAO').AsString;
    PRI_PDV_ULT_NFCE_S1:=Dm.Global.FieldByName('PRI_PDV_ULT_NFCE_S1').asinteger;
    PRI_PDV_ULT_NFCE_S2:=Dm.Global.FieldByName('PRI_PDV_ULT_NFCE_S2').asinteger;
    PRI_CLIENTE_CONF1:=Dm.Global.FieldByName('PRI_CLIENTE_CONF1').AsString;
    PRI_CLIENTE_CONF2:=Dm.Global.FieldByName('PRI_CLIENTE_CONF2').AsString;
    PRI_CLIENTE_CONF3:=Dm.Global.FieldByName('PRI_CLIENTE_CONF3').AsString;
    PRI_CLIENTE_CONF4:=Dm.Global.FieldByName('PRI_CLIENTE_CONF4').AsString;
    PRI_CLIENTE_CONF5:=Dm.Global.FieldByName('PRI_CLIENTE_CONF5').AsString;
    PRI_CLIENTE_CONF6:=Dm.Global.FieldByName('PRI_CLIENTE_CONF6').AsString;
    PRI_CLIENTE_CONF7:=Dm.Global.FieldByName('PRI_CLIENTE_CONF7').AsString;
    PRI_CLIENTE_CONF8:=Dm.Global.FieldByName('PRI_CLIENTE_CONF8').AsString;
    PRI_CR_JUROSVENDAPRAZO:=Dm.Global.FieldByName('PRI_CR_JUROSVENDAPRAZO').AsString;
    PRI_CR_JUROSPARCELAATRAZADA:=Dm.Global.FieldByName('PRI_CR_JUROSPARCELAATRAZADA').AsString;
    PRI_CR_JUROSIMPLES:=Dm.Global.FieldByName('PRI_CR_JUROSIMPLES').AsString;
    PRI_CR_JUROCOMPOSTO:=Dm.Global.FieldByName('PRI_CR_JUROCOMPOSTO').AsString;
    PRI_CR_JUROSVENDAPRAZO_PARCELAS:=Dm.Global.FieldByName('PRI_CR_JUROSVENDAPRAZO_PARCELAS').asinteger;
    PRI_CR_JUROSVENDAPRAZO_PORC:=Dm.Global.FieldByName('PRI_CR_JUROSVENDAPRAZO_PORC').Asfloat;
    PRI_CR_JUROSVENDAPRAZO_ATR_PORC:=Dm.Global.FieldByName('PRI_CR_JUROSVENDAPRAZO_ATR_PORC').asFloat;
    PRI_CR_MULTA:=Dm.Global.FieldByName('PRI_CR_MULTA').asFloat;
    PRI_FP_BOLETO:=Dm.Global.FieldByName('PRI_FP_BOLETO').AsString;
    PRI_FP_CARTAO:=Dm.Global.FieldByName('PRI_FP_CARTAO').AsString;
    PRI_FB_CHEQUE:=Dm.Global.FieldByName('PRI_FB_CHEQUE').AsString;
    PRI_FB_CREDIARIO:=Dm.Global.FieldByName('PRI_FB_CREDIARIO').AsString;
    PRI_FB_DINHEIRO:=Dm.Global.FieldByName('PRI_FB_DINHEIRO').AsString;
    PRI_FB_VALE_ALIMENTACAO:=Dm.Global.FieldByName('PRI_FB_VALE_ALIMENTACAO').AsString;
    PRI_FB_VALE_REFEICAO:=Dm.Global.FieldByName('PRI_FB_VALE_REFEICAO').AsString;
    PRI_COMISSAO_PRODUTO:=Dm.Global.FieldByName('PRI_COMISSAO_PRODUTO').AsString;
    PRI_COMISSAO_GRUPO:=Dm.Global.FieldByName('PRI_COMISSAO_GRUPO').AsString;
    PRI_COMISSAO_VENDEDOR:=Dm.Global.FieldByName('PRI_COMISSAO_VENDEDOR').AsString;
    PRI_COMISSAO_FP:=Dm.Global.FieldByName('PRI_COMISSAO_FP').AsString;
    PRI_COMISSAO_FP_DINHEIRO:=Dm.Global.FieldByName('PRI_COMISSAO_FP_DINHEIRO').asfloat;
    PRI_COMISSAO_FP_DEBITO:=Dm.Global.FieldByName('PRI_COMISSAO_FP_DEBITO').asfloat;
    PRI_COMISSAO_FP_CREDITO:=Dm.Global.FieldByName('PRI_COMISSAO_FP_CREDITO').asfloat;
    PRI_COMISSAO_FP_CREDIARIO:=Dm.Global.FieldByName('PRI_COMISSAO_FP_CREDIARIO').asfloat;
    PRI_COMISSOA_FP_CHEQUE:=Dm.Global.FieldByName('PRI_COMISSOA_FP_CHEQUE').asfloat;
    PRI_APAGAR:=Dm.Global.FieldByName('PRI_APAGAR').AsString;
    PRI_BANCO:=Dm.Global.FieldByName('PRI_BANCO').AsString;
    PRI_CLIENTES:=Dm.Global.FieldByName('PRI_CLIENTES').AsString;
    PRI_PRODUTOS:=Dm.Global.FieldByName('PRI_PRODUTOS').AsString;
    PRI_CAIXA:=Dm.Global.FieldByName('PRI_CAIXA').AsString;
    PRI_COMPRAS:=Dm.Global.FieldByName('PRI_COMPRAS').AsString;
    PRI_NFE:=Dm.Global.FieldByName('PRI_NFE').AsString;
    PRI_NFSE:=Dm.Global.FieldByName('PRI_NFSE').AsString;
    PRI_CTE:=Dm.Global.FieldByName('PRI_CTE').AsString;
    PRI_MDFE:=Dm.Global.FieldByName('PRI_MDFE').AsString;
    PRI_ORCAMENTO:=Dm.Global.FieldByName('PRI_ORCAMENTO').AsString;
    PRI_OS:=Dm.Global.FieldByName('PRI_OS').AsString;
    PRI_PDV:=Dm.Global.FieldByName('PRI_PDV').AsString;
    PRI_PREVENDA:=Dm.Global.FieldByName('PRI_PREVENDA').AsString;
    PRI_RECEBER:=Dm.Global.FieldByName('PRI_RECEBER').AsString;
    PRI_PDC_DUPLICATAS := Dm.Global.FieldByName('PRI_PDC_DUPLICATAS').AsString;
    PRI_PDC_DUPLICATAS_ID := Dm.Global.FieldByName('PRI_PDC_DUPLICATAS_ID').AsInteger;
    PRI_NFE_CONF22 := Dm.Global.FieldByName('PRI_NFE_CONF22').AsString;
    PRI_NFE_CFOPPADRAO := Dm.Global.FieldByName('PRI_NFE_CFOPPADRAO').AsString;
    PRI_BAIRRO := Dm.Global.FieldByName('PRI_BAIRRO').AsString;
    PRI_PDC_VENDA_NFE := Dm.Global.FieldByName('PRI_PDC_VENDA_NFE').AsString;
    PRI_PDC_VENDA_NFE_ID := Dm.Global.FieldByName('PRI_PDC_VENDA_NFE_ID').AsInteger;
    PRI_PRE_CONF1 := Dm.Global.FieldByName('PRI_PRE_CONF1').AsString;
    PRI_PRE_CONF2 := Dm.Global.FieldByName('PRI_PRE_CONF2').AsString;
    PRI_PRE_CONF3 := Dm.Global.FieldByName('PRI_PRE_CONF3').AsString;
    PRI_PRE_CONF4 := Dm.Global.FieldByName('PRI_PRE_CONF4').AsString;
    PRI_PRE_CONF5 := Dm.Global.FieldByName('PRI_PRE_CONF5').AsString;
    PRI_PRE_CONF6 := Dm.Global.FieldByName('PRI_PRE_CONF6').AsString;
    PRI_PRE_CONF7 := Dm.Global.FieldByName('PRI_PRE_CONF7').AsString;
    PRI_PRE_CONF8 := Dm.Global.FieldByName('PRI_PRE_CONF8').AsString;
    PRI_PRE_CONF9 := Dm.Global.FieldByName('PRI_PRE_CONF9').AsString;
    PRI_PRE_CONF10 := Dm.Global.FieldByName('PRI_PRE_CONF10').AsString;
    PRI_COMISSAO_AORECEBER := Dm.Global.FieldByName('PRI_COMISSAO_AORECEBER').AsString;
    PRI_COMISSAO_AOFATURAR := Dm.Global.FieldByName('PRI_COMISSAO_AOFATURAR').AsString;
    PRI_PDC_RECEBIMENTOS :=  Dm.Global.FieldByName('PRI_PDC_RECEBIMENTOS').AsString;
    PRI_PDC_RECEBIMENTOS_ID :=  Dm.Global.FieldByName('PRI_PDC_RECEBIMENTOS_ID').AsInteger;
    PRI_PDV_CONF1 := Dm.Global.FieldByName('PRI_PDV_CONF1').AsString;
    PRI_PDV_CONF2 := Dm.Global.FieldByName('PRI_PDV_CONF2').AsString;
    PRI_PDV_CONF3 := Dm.Global.FieldByName('PRI_PDV_CONF3').AsString;
    PRI_PDV_CONF4 := Dm.Global.FieldByName('PRI_PDV_CONF4').AsString;
    PRI_PDV_CONF5 := Dm.Global.FieldByName('PRI_PDV_CONF5').AsString;
    PRI_PDV_FRASE := Dm.Global.FieldByName('PRI_PDV_FRASE').AsString;
    PRI_PDV_CONF6 := Dm.Global.FieldByName('PRI_PDV_CONF6').AsString;
    PRI_CAIXA_CONF1 := Dm.Global.FieldByName('PRI_CAIXA_CONF1').AsString;
    PRI_CAIXA_CONF2 := Dm.Global.FieldByName('PRI_CAIXA_CONF2').AsString;
    PRI_VENCIMENTO_CERTIFICADO := Dm.Global.FieldByName('PRI_VENCIMENTO_CERTIFICADO').AsDateTime;
    PRI_PDV_CONF7 := Dm.Global.FieldByName('PRI_PDV_CONF7').AsString;
    PRI_PDV_CONF8 := Dm.Global.FieldByName('PRI_PDV_CONF8').AsString;
    ValidaCertificado;
    end;
    finally

    end;



end;

procedure TfrmPrincipal.CarregaImagem(Promocao : string);
var
caminho : String;
ler : TiniFile;
begin

    try
     if Promocao = 's' then
     begin
     // Image1.Visible := False;
     // Image3.visible := true;
      OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Promocao.png';
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      Panel9.Font.Color := clYellow;

     end
     else
     begin
      Panel9.Font.Color := clWhite;
     // Image1.Visible := true;
     // Image3.visible := false;
      ler := TIniFile.Create(ExtractFilePath(Application.exeName) + '\conf.ini');
     if ler.ReadString('imagem','CaminhoProdutos  ','') = ''  then
       begin
        if ImagemProduto <> '' then
        begin
        OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\img\Produtos\'+ImagemProduto  ;
        Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        end
        else
        begin
        OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Logo.png';
        Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        end

       end
       else
       begin
        if ImagemProduto <> '' then
        begin
         Caminho := ler.ReadString('imagem','CaminhoProdutos  ','') ;
         OpenPictureDialog1.FileName := Caminho+'\'+ImagemProduto ;
         Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        end
        else
        begin
         OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Logo.png';
         Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        end;
       end
     end;
    except

    end;




end;

procedure TfrmPrincipal.CarregaUser(Codigo, CodigoU: Integer; LoginU: String);
begin
      PerM := TPermissaoModel.create;
      PerC := TPermissaoController.create;
      try
       perc.Ler(PerM, Codigo, CodigoU, LoginU);
      finally
      end;

label8.Caption := Global.PRI_PDV_FRASE;
label10.Caption := 'Operador :'+' ' + PerM.Login;
frmPrincipal.VerificaCaixaAberto;
end;

procedure TfrmPrincipal.CodigoProduto;
var
funcao : TFuncoesGerais;
digitoBalanca : String;
x : String;
begin
 funcao := TFuncoesGerais.create;
 try


 digitoBalanca := Copy(panel9.Caption, 1, 1);
 QtdCupom := Copy(edt_pesquisa.Text, 1, Pos ('*',edt_pesquisa.Text) -1);

  if QtdCupom = '' then
  begin
  QtdCupom:= '1';
  end;
    Codigo := Copy(edt_pesquisa.Text , Pos('*', edt_pesquisa.Text) + 1, Length(edt_pesquisa.Text));

    if Randomico = '' then
    begin
      AbreCupom;
    end;
    if funcao.SoLetra(Codigo) = false then
    begin
     ShowMessage('Código Inválido Selecione o Item!');
     abort;
    end;

    if (Length(panel9.Caption) >= 10) and (digitoBalanca = '2')and (funcao.RetornaAst(edt_pesquisa.Text) = false) then
    begin
    ConfirBalanca     := 'sim';
    codigo            := Copy(panel9.Caption, 3, 5);
    QtdCupom := Copy(panel9.Caption, 8, 2) + ',' + Copy(panel9.Caption, 10, 3);

    end;

    LancaProdutoCupom(QtdCupom,Codigo,'NFCe','','');
 finally
   FreeandNil(funcao);
 end;
end;

procedure TfrmPrincipal.CodigoProdutoPesquisa;
var
funcao : TFuncoesGerais;
begin
 funcao := TFuncoesGerais.create;
 try
 QtdCupom := Copy(panel9.Caption, 1, Pos ('*',panel9.Caption) -1);
  if QtdCupom = '' then
  begin
  QtdCupom:= '1';
  end;
    Codigo := FDProd.FieldByName('codigo').AsString;
    if Randomico = '' then
    begin
      AbreCupom;
    end;
    if funcao.SoLetra(Codigo) = false then
    begin
     ShowMessage('Código Inválido!');
     abort;
    end;
    LancaProdutoCupom(QtdCupom,Codigo, 'NFCe', FDProd.FieldByName('sub').AsString, FDProd.FieldByName('codsub').AsString);
 finally
   FreeandNil(funcao);
 end;
end;

procedure TfrmPrincipal.ConectaTEF;
begin
if not (ACBrTEFD1.Inicializado(ConfigIni.TEFModelo)) then
 begin
 if ConfigIni.TEF then
  begin
    panel9.caption := 'Carregando Configurações do TEF. Aguarde...';
    TEF;
   end;
 end;
end;

procedure TfrmPrincipal.ConfiguraACBrPosPrint;
var
  LPrinterModelo: TACBrPosPrinterModelo;
begin
  LPrinterModelo := ppTexto;
  if ConfigIni.ModeloImpressora = 'Elgin' then
    LPrinterModelo := ppCustomPos
  else
    if ConfigIni.ModeloImpressora = 'Epson' then
      LPrinterModelo := ppEscPosEpson
    else
      if ConfigIni.ModeloImpressora = 'Bematech' then
        LPrinterModelo := ppEscBematech;

  with ACBrPosPrinter1 do
  begin
    Desativar;
    ControlePorta      := True;
    ColunasFonteNormal := 48;
    PaginaDeCodigo     := TACBrPosPaginaCodigo.pc850;
    Modelo             := LPrinterModelo;
    if LPrinterModelo = ppTexto then
      porta :=  'IMPRESSORAVIRTUAL.txt'
    else
      porta           := 'RAW:' + ConfigIni.ImpressoraPadrao;
    LinhasBuffer      := 0;
    LinhasEntreCupons := 7;
    //CortarPapel(False);
    Ativar;

  end;
end;

procedure TfrmPrincipal.ConfiguraesNFCe1Click(Sender: TObject);
begin
    if FrmConfNfe = nil then
       FrmConfNfe := TFrmConfNfe.create(self);
       try
         FrmConfNfe.showmodal;
       finally
         FreeandNil(FrmConfNfe);
       end;
end;

procedure TfrmPrincipal.ConsultaStatusSefaz1Click(Sender: TObject);
var
NFCeM : TNfceModel;
begin
   NFCeM := TNfceModel.create;
   try
    NFCeM.LerConfNfce;
    NFCeM.TestaStatus;
   finally
     FreeandNil(NFCeM);
   end;
end;

procedure TfrmPrincipal.DBGrid1CellClick(Column: TColumn);
begin
idProdCupom := FDCupom.FieldByName('nfc_codigo').AsInteger;
panel16.Caption := formatfloat('###,###,##0.00', FDCupom.FieldByName('NFC_PROD_VPROD').AsFloat);
panel9.Caption := FDCupom.FieldByName('NFC_PROD_XPROD').AsString;
edit2.Caption := formatfloat('###,###,##0.00', FDCupom.FieldByName('NFC_PROD_VUNCOM').AsFloat);
edt_pesquisa.SetFocus;
end;

procedure TfrmPrincipal.DBGrid1DblClick(Sender: TObject);
begin
 if not FDCupom.IsEmpty then
 begin
  if frmAlteraProduto = nil then
     frmAlteraProduto := TfrmAlteraProduto.create(self);
     frmAlteraProduto.codigo := FDCupom.FieldByName('nfc_codigo').AsInteger;
     frmAlteraProduto.ShowModal;
     FreeandNil(frmAlteraProduto);
     edt_pesquisa.SetFocus;
     FDCupom.Refresh;
     TotalCompra;
 end;
end;

procedure TfrmPrincipal.DBGrid2DblClick(Sender: TObject);
begin
   try
     CodigoProdutoPesquisa;
    finally
      edt_pesquisa.SetFocus;
      dbgrid2.Visible := false;
    end;
end;

procedure TfrmPrincipal.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
Tasks: array [0..2] of ITask;
begin
if key = VK_RETURN then
   begin
    try
     Tasks[0] := TTask.Create(CodigoProdutoPesquisa);
     Tasks[0].Start;

    finally
      edt_pesquisa.SetFocus;
      dbgrid2.Visible := false;
    end;
   end;
end;

procedure TfrmPrincipal.DeletaProduto;
var
ItemM : TNfceItensModel;
ItemC : TNfceItensController;
prodM : TProdutoModel;
q1, prod : TFDquery;
f : TFuncoesGerais;
HistM : THistoricoDeProdutoModel;
HistC : THistoricoDeProdutoController;
qtd : double;
begin

    if FrmDeletaProduto = nil then
    FrmDeletaProduto := TFrmDeletaProduto.create(self);
    try
     FrmDeletaProduto.showmodal;
     if FrmDeletaProduto.FAcao = '' then
     abort;
     q1 := TFDquery.create(nil);
     q1.Connection := dm.Con;


     prod := TFDquery.create(nil);
     prod.Connection := dm.Con;
     prod.CachedUpdates :=true;
     f := TFuncoesGerais.create;
     HistM := THistoricoDeProdutoModel.create;
     HistC := THistoricoDeProdutoController.create;

     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(lb_NVenda.Caption));
       sql.Add('and nfc_ord ='+QuotedStr(FrmDeletaProduto.edit1.Text));
       open;
       if not IsEmpty then
       begin
          if Application.MessageBox(pchar('Deletar o Item '+q1.FieldByName('NFC_PROD_XPROD').AsString),'Atenção!',mb_yesno + mb_iconquestion)= idyes then
          begin

             prod.close;
             prod.sql.Clear;
             prod.sql.Add('select * from tb_produtos where pro_codigo='+QuotedStr(q1.FieldByName('NFC_PROD_CPROD').AsString));
             prod.open;

             HistC.LerR(HistM,q1.FieldByName('NFC_RANDOMICOPRODUTO').AsString);
             qtd := HistM.HIS_QTD_ESTOQUE + q1.FieldByName('NFC_PROD_QCOM').AsFloat;
             HistC.DeletarR(HistM,q1.FieldByName('NFC_RANDOMICOPRODUTO').AsString);
             HistM.RecalculaHistorico(q1.FieldByName('NFC_PROD_CPROD').asString,inttostr(HistM.HIS_CODIGO), qtd);
             prod.Edit;
             prod.FieldByName('PRO_QUANTIDADE').AsFloat := prod.FieldByName('PRO_QUANTIDADE').AsFloat + q1.FieldByName('NFC_PROD_QCOM').AsFloat;
             prod.Post;
             prod.ApplyUpdates;
             prod.CommitUpdates;
             q1.Delete;

             with FDCupom do
           begin
           close;
           sql.Clear;
           sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(lb_NVenda.Caption));
           open;
            memo1.Clear;
            while not FDCupom.Eof do
            begin
            AddItemCupom(FDCupom.FieldByName('NFC_PROD_CEAN').AsString,formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_QCOM').Asfloat),formatfloat('###,###,##0.00',FDCupom.FieldByName('NFC_PROD_VUNCOM').Asfloat),formatfloat('###,###,##0.00',FDCupom.FieldByName('NFC_PROD_VPROD').Asfloat),FDCupom.FieldByName('NFC_PROD_XPROD').AsString,'', FDCupom.FieldByName('NFC_ORD').AsString, FDCupom.FieldByName('NFC_PROD_UCOM').AsString);
            FDCupom.Next;
            end;
            TotalCompra;

            if IsEmpty then
            begin
              Panel9.Caption := 'Entre com o Produto!';
              pn_totalaPagar.Caption := '0.00';
              Panel16.Caption := '0.00';
              edit1.Caption := '0.000';
              edit2.Caption := '0.00';
            end;
           end
          end;
       end
       else
       ShowMessage('Item não Localizado!');
     end;

    finally
      FreeandNil(FrmDeletaProduto);
      FreeandNil(q1);
      FreeandNil(prod);
      FreeandNil(HistM);
      FreeandNil(HistC);
    end;
 { if not FDCupom.IsEmpty then
  begin
      ItemM := TNfceItensModel.create;
      ItemC := TNfceItensController.create;
      prodM := TProdutoModel.create;
      try
      ProdM.VoltaHistorico(FDCupom.FieldByName('NFC_PROD_CPROD').AsInteger,strtoint(lb_NVenda.Caption),
      FDCupom.FieldByName('NFC_PROD_QCOM').AsFloat);
      ItemC.Deletar(ItemM, idProdCupom);

      FDCupom.Refresh;
      FdCupom.Last;
      panel16.Caption := formatfloat('###,###,##0.00', FDCupom.FieldByName('NFC_PROD_VPROD').AsFloat);
      panel9.Caption := FDCupom.FieldByName('NFC_PROD_XPROD').AsString;
      edit2.Text := formatfloat('###,###,##0.00', FDCupom.FieldByName('NFC_PROD_VUNCOM').AsFloat);
      TotalCompra;
      finally
       FreeandNil(ItemM);
       FreeandNil(ItemC);
      end;
    try
    if FDCupom.IsEmpty then
       OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Logo.png';
       Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    except

    end;

  end
     }
end;

procedure TfrmPrincipal.DSCupomDataChange(Sender: TObject; Field: TField);
begin
  //ShowScrollBar(DBGrid1.handle, SB_VERT, False);
end;

procedure TfrmPrincipal.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  f : TFuncoesGerais;
  q1 : TFdquery;
begin
 if key = vk_return then
 begin
   f := TFuncoesGerais.create;
   try

    if not FDCupom.IsEmpty then
    begin
     FDCupom.Edit;
     FDCupom.FieldByName('NFC_PROD_QCOM').AsFloat := f.RetDec(edit1.Caption);
     //edit2.Text := formatfloat('###,###,###0.000', f.RetDec(edit1.Text));
     FDCupom.FieldByName('NFC_PROD_VPROD').AsFloat :=  FDCupom.FieldByName('NFC_PROD_VUNCOM').AsFloat * FDCupom.FieldByName('NFC_PROD_QCOM').AsFloat;
     FDCupom.post;
     FDCupom.ApplyUpdates;
     FDCupom.CommitUpdates;
     FDCupom.Refresh;
     TotalCompra;
     panel16.Caption := formatfloat('###,###,##0.00', FDCupom.FieldByName('NFC_PROD_VPROD').AsFloat);
     panel9.Caption := FDCupom.FieldByName('NFC_PROD_XPROD').AsString;
     edit1.Caption := formatfloat('###,###,##0.00', FDCupom.FieldByName('NFC_PROD_QCOM').AsFloat);
    end;



   edit2.SetFocus;

   finally

   FreeandNil(f);
   end;

 end;
end;

procedure TfrmPrincipal.Edit2Enter(Sender: TObject);
begin
//edit2.SelectAll;
end;

procedure TfrmPrincipal.Edit2Exit(Sender: TObject);
begin
edt_pesquisa.SetFocus;
end;

procedure TfrmPrincipal.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  f : TFuncoesGerais;
  q1 : TFDquery;
begin
 if key = vk_return then
 begin
   f := TFuncoesGerais.create;
   try

    if not FDCupom.IsEmpty then
    begin
     FDCupom.Edit;
     FDCupom.FieldByName('NFC_PROD_VUNCOM').AsFloat := f.RetDec(edit2.Caption);
     edit2.Caption := formatfloat('###,###,###0.000', f.RetDec(edit2.Caption));
     FDCupom.FieldByName('NFC_PROD_VPROD').AsFloat :=  FDCupom.FieldByName('NFC_PROD_VUNCOM').AsFloat * FDCupom.FieldByName('NFC_PROD_QCOM').AsFloat;
     FDCupom.post;
     FDCupom.ApplyUpdates;
     FDCupom.CommitUpdates;
     FDCupom.Refresh;
     TotalCompra;
     panel16.Caption := formatfloat('###,###,##0.00', FDCupom.FieldByName('NFC_PROD_VPROD').AsFloat);
     panel9.Caption := FDCupom.FieldByName('NFC_PROD_XPROD').AsString;
     edit2.Caption := formatfloat('###,###,##0.00', FDCupom.FieldByName('NFC_PROD_VUNCOM').AsFloat);
    end;



   edt_pesquisa.SetFocus;

   finally

   FreeandNil(f);
   end;

 end;
end;

procedure TfrmPrincipal.EditaProduto;
var
ItemM : TNfceItensModel;
ItemC : TNfceItensController;
prodM : TProdutoModel;
q1, prod : TFDquery;
f : TFuncoesGerais;
HistM : THistoricoDeProdutoModel;
HistC : THistoricoDeProdutoController;
qtd : double;
begin

    if FrmDeletaProduto = nil then
    FrmDeletaProduto := TFrmDeletaProduto.create(self);
    try

     FrmDeletaProduto.showmodal;
     if FrmDeletaProduto.FAcao = '' then
     abort;
     q1 := TFDquery.create(nil);
     q1.Connection := dm.Con;
     q1.CachedUpdates := true;

     prod := TFDquery.create(nil);
     prod.Connection := dm.Con;
     prod.CachedUpdates := true;
     f := TFuncoesGerais.create;
     HistM := THistoricoDeProdutoModel.create;
     HistC := THistoricoDeProdutoController.create;

     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(lb_NVenda.Caption));
       sql.Add('and nfc_ord ='+QuotedStr(FrmDeletaProduto.edit1.Text));
       open;
       if not IsEmpty then
       begin
       if frmAlteraProduto = nil then
       frmAlteraProduto := TfrmAlteraProduto.Create(self);
        try
        frmAlteraProduto.Codigo := q1.FieldByName('nfc_codigo').AsInteger;
        frmAlteraProduto.FCodigoProduto := q1.FieldByName('NFC_PROD_CPROD').AsInteger;
        frmAlteraProduto.FQtd := q1.FieldByName('NFC_PROD_QCOM').AsFloat;
        frmAlteraProduto.showmodal;


             prod.close;
             prod.sql.Clear;
             prod.sql.Add('select * from tb_produtos where pro_codigo='+QuotedStr(q1.FieldByName('NFC_PROD_CPROD').AsString));
             prod.open;

             HistC.LerR(HistM,q1.FieldByName('NFC_RANDOMICOPRODUTO').AsString);
             qtd := HistM.HIS_QTD_ESTOQUE + qtdEdita - f.RetDec(frmAlteraProduto.Edit1.Text);
             HistM.HIS_QTD_VENDA := f.RetDec(frmAlteraProduto.Edit1.Text);
             HistM.HIS_QTD_ESTOQUE := qtd;

             HistC.Alterar(HistM);
             HistM.RecalculaHistorico(q1.FieldByName('NFC_PROD_CPROD').asString,inttostr(HistM.HIS_CODIGO), qtd);
             prod.Edit;
             prod.FieldByName('PRO_QUANTIDADE').AsFloat := prod.FieldByName('PRO_QUANTIDADE').AsFloat + qtdEdita - f.RetDec(frmAlteraProduto.Edit1.Text);
             prod.Post;
             prod.ApplyUpdates;
             prod.CommitUpdates;

             with FDCupom do
           begin
           close;
           sql.Clear;
           sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(lb_NVenda.Caption));
           open;
            memo1.Clear;
            while not FDCupom.Eof do
            begin
            AddItemCupom(FDCupom.FieldByName('NFC_PROD_CEAN').AsString,formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_QCOM').Asfloat),formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_VUNCOM').Asfloat),formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_VPROD').Asfloat),FDCupom.FieldByName('NFC_PROD_XPROD').AsString,'', FDCupom.FieldByName('NFC_ORD').AsString, FDCupom.FieldByName('NFC_PROD_UCOM').AsString);
            FDCupom.Next;
            end;
            TotalCompra;
           end
         finally
         FreeandNil(frmAlteraProduto);

         end;
       end
       else
       ShowMessage('Item não Localizado!');
     end;

    finally
      FreeandNil(FrmDeletaProduto);
      FreeandNil(q1);
      FreeandNil(prod);
      FreeandNil(HistM);
      FreeandNil(HistC);
    end;

end;

procedure TfrmPrincipal.edt_pesquisaChange(Sender: TObject);

begin
pesquisaproduto

end;


procedure TfrmPrincipal.edt_pesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
Tasks: array [0..2] of ITask;
begin
if (key = VK_DOWN) and (DBGrid2.Visible = True) then
 begin
  dbgrid2.SetFocus;
  DBGrid2.SelectedIndex := DBGrid2.SelectedIndex  ;
 end;
  if key = vk_return then
   begin
    try
     if edt_pesquisa.Text = '' then
     begin
       abort;
     end;

    Tasks[0] := TTask.Create(CodigoProduto);
    Tasks[0].Start;
    finally

     DBGrid2.Visible := false;
    end;

   end;
 if key = VK_TAB then
    begin
    // edit2.SetFocus;
     //edit2.SelectAll;
    end;
end;

procedure TfrmPrincipal.EF1Click(Sender: TObject);
begin
 if frmConfTEF = nil then
    frmConfTEF := TfrmConfTEF.Create(self);
    try
      frmConfTEF.ShowModal;
    finally
      FreeandNil(frmConfTEF);
    end;
end;

procedure TfrmPrincipal.EFAdmin1Click(Sender: TObject);
begin
  ConfiguraACBrPosPrint;
  estadoSimuladoEcf := tpsLivre;
  ACBrTEFD1.ADM(ConfigIni.TEFModelo)
end;

procedure TfrmPrincipal.EfetuaPagamento(formaPagamento: tpPagamento);
var
  StatusTransacao  : Boolean;
  nfceN            : String;
  LCredito, LDebito: Double;
  f : TFuncoesGerais;
begin
f := TFuncoesGerais.create;
try
  nfceN    := frmPrincipal.lb_NumeroVenda.Caption;
  LCredito := f.RetDec(frmFinalizar.edt_fpCarCredito.Text);
  LDebito  := f.RetDec(frmFinalizar.edt_fpCarDebito.Text);

  if (LDebito <= 0) and (LCredito <= 0) then
    raise Exception.Create('Valores de pagamento não deve ser Zero');

  if formaPagamento = tpDinheiro then
  begin
      //MemoCupomTEF.Lines.Add('Pagamento [Dinheiro:' + frmFinaliza.edt_dinheiro.Text + ']');

      {Tratar com sua rotina em dinheiro}
  end
  else
    if formaPagamento = tpCartao then
    begin
      if not (ACBrTEFD1.Inicializado(ConfigIni.TEFModelo)) then
        raise Exception.Create('ACBrTEFD não inicializado.');

      if LDebito > 0 then
      begin
          //ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 2;
        StatusTransacao := ACBrTEFD1.CRT(LDebito, '01');

      end;
      if LCredito > 0 then
      begin
          //ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 3;
        StatusTransacao := ACBrTEFD1.CRT(LCredito, '04');
      end;

      if StatusTransacao then
      begin
        Inc(IndiceTransacaoTef);

          //        if not (ACBrTEFD1.AutoFinalizarCupom) then
          //          MemoCupomTEF.Lines.Add('Pagamento [Cartao:' + frmFinaliza.edt_cartaoDebito.Text + ']
          //          [NSU:' + ACBrTEFD1.RespostasPendentes[ IndiceTransacaoTef ].NSU + '][Rede:' +
          //              ACBrTEFD1.RespostasPendentes[ IndiceTransacaoTef ].Rede + ']');
          //
        frmprincipal.panel9.caption := 'Transação aprovada'; //, Favor Travar o dados do comprovante', 'Informação', MB_OK + MB_ICONINFORMATION);
        //ConfiguraACBrPosPrint;
        frmFinalizar.GravaPrevenda;
        frmFinalizar.FinalizaVenda;

        frmprincipal.panel9.caption := 'Venda Concluída';
        sleep(500);
        frmprincipal.panel9.caption := 'Caixa Livre';
      end
      else
      begin
        frmprincipal.panel9.caption := 'Transação Negada';
          //Application.MessageBox('Transação Negada', 'Informação', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;

  //frmFinaliza.edt_cartaoDebito.Text := FloatToStr(StringToFloatDef(frmFinaliza.edt_cartaoDebito.Text.Replace('.',''), 0)
  //+ StringToFloatDef(frmFinaliza.label11.Text, 0));

finally
  FreeandNil(f);
end;
end;

procedure TfrmPrincipal.FecharCaixa1Click(Sender: TObject);
var
afM : TAbreFechaCaixa;
Codigo, Codigox1 : Integer;
begin

  afM := TAbreFechaCaixa.create;
  Codigo := afm.VerificaCaixaAbertoModel('F');
  try
   if Codigo <> 0 then
   begin
      if frmAbreFechaCaixa = nil then
         frmAbreFechaCaixa := TfrmAbreFechaCaixa.create(self);
         frmAbreFechaCaixa.codigoid.caption := formatfloat('000000', Codigo);
          frmAbreFechaCaixa.tipo := 'F';
         frmAbreFechaCaixa.showmodal;
         FreeandNil(frmAbreFechaCaixa);
   end
   else
   begin
     Codigo := afm.VerificaCaixaDiaAbertoModel('F');
     Codigox1 := afm.VerificaCaixaDiaAbertoModel('R');
     if Codigo <> 0 then
        begin
          if frmAbreFechaCaixa = nil then
         frmAbreFechaCaixa := TfrmAbreFechaCaixa.create(self);
         frmAbreFechaCaixa.codigoid.caption := formatfloat('000000', Codigo);
         frmAbreFechaCaixa.codigoid2.caption := formatfloat('000000', Codigox1);
          frmAbreFechaCaixa.tipo := 'F';
         frmAbreFechaCaixa.showmodal;
         FreeandNil(frmAbreFechaCaixa);
        end;
   end;
  finally
    FreeAndNil(afM);
  end;

end;

procedure TfrmPrincipal.FinalizaDinheiro;
begin
FF7 := 's';
SpeedButton2.Enabled := false;
VerificaCaixaAberto;
OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Logo.png';
Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
if FDCupom.IsEmpty then
      abort;
 if frmFinalizar = nil then
    frmFinalizar := TfrmFinalizar.Create(self);
    try
     frmFinalizar.FinalizaDinheiro;
    finally
      FreeandNil(frmFinalizar);
      SpeedButton2.Enabled := True;
      FF7 := '';
    end;
 AvisaNotasEmContingencia;
end;

procedure TfrmPrincipal.FinalizaF3;
var
f : TFuncoesGerais;
begin
   ConectaTEF;
   OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Logo.png';
   Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
   if FDCupom.IsEmpty then
      abort;
   GravaNFCe;
   f := TFuncoesGerais.create;
   try
    if frmFinalizar = nil then
   frmFinalizar := TfrmFinalizar.Create(self);
   frmFinalizar.TotalApagar := f.RetDec(pn_totalaPagar.Caption);
   frmFinalizar.ShowModal;
   AvisaNotasEmContingencia;
   FreeandNil(frmFinalizar);
   finally
     FreeandNil(f);
   end;
end;

procedure TfrmPrincipal.finalizarCupomNFCe;
begin

end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then
     abort;
  if key = VK_F2 then
  begin
    MudaBusca;
  end;
    if key = VK_DELETE then
  begin
    DeletaProduto;
  end;

  if key = VK_F3 then
  begin
    FinalizaF3;
  end;


  if key = vk_f6 then
  begin
    if not FDCupom.IsEmpty then
    begin

   //  GravaNFCe;
     LimpaVenda;
    end;
  end;

  if key = vk_f5 then
  begin
    AbreConsulta;
  end;

  if key = vk_f10 then
  begin
    ImportaPrevenda;
  end;

  if key = vk_F7 then
  begin
    if FF7 <> 's' then
    try
       SpeedButton2.Enabled := false;
       FinalizaDinheiro;
    finally
      FF7 := '';
      SpeedButton2.Enabled := True;
    end;
  end;

  //if key = VK_INSERT then
   //  begin
   //    edit2.SetFocus;
   //  end;

      if ((Shift = [ssCtrl]) and (key = 73)) then
  begin
    if frmProdutoCupom = nil then
     frmProdutoCupom := TfrmProdutoCupom.create(self);
     frmProdutoCupom.showmodal;
     FreeandNil(frmProdutoCupom);
  end;

  if key = VK_INSERT then
  begin
    EditaProduto;
  end;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
  end;
  if key = #27 then
  begin
     if Application.MessageBox('Sair do Sistema?','Atenção', mb_yesno + mb_iconquestion) = idyes then
   begin
    if not FDCupom.IsEmpty then
     begin
     GravaNFCe;
    end;
    application.Terminate;
   end;
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
if frmAtualiza = nil then
   frmAtualiza := TfrmAtualiza.Create(self);
   frmAtualiza.ShowModal;
   FreeandNil(frmAtualiza);

  edt_pesquisa.SetFocus;
  dm.Global.close;
  dm.Global.sql.Clear;
  dm.Global.sql.add('select * from tb_principal');
  dm.Global.Open;
  if (dm.Global.RecordCount > 1) or (dm.Global.FieldByName('PRI_PDV_CONF5').AsString = 'True') then
  begin
    if frmLogin = nil then
    frmLogin := TfrmLogin.Create(self);
    frmlogin.showmodal;
    FreeandNil(frmlogin);
  end
  else
  begin
    if frmLogin = nil then
    frmLogin := TfrmLogin.Create(self);
    LogaSemLogin;
    FreeandNil(frmlogin);
  end;

TipoPesquisa := 0;
AvisaNotasEmContingencia;


end;

procedure TfrmPrincipal.GerarNFCeTEF(NumNFe: String; valorVenda: Currency;
  emissaoOffLine: Boolean);
begin

end;

procedure TfrmPrincipal.GravaNFCe;
var
q1 : TFDquery;
f : TFuncoesGerais;
begin
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;
    q1.CachedUpdates := true;
    f := TFuncoesGerais.create;
    try
    with q1 do
     begin
      close;
      sql.Clear;
      sql.Add('select * from TB_NFCE where nfc_codigo='+QuotedStr(lb_NVenda.Caption));
      open;
      edit;
      Q1.FieldByName('NFC_TOTAL_VPROD').AsFloat := F.RetDec(pn_totalaPagar.Caption);
      //FieldByName('NFC_TOTAL_VNF').AsFloat := F.RetDec(pn_totalaPagar.Caption);
      Q1.FieldByName('NFCE_IMPORTACAO').AsString := TipoImportacao.Caption;
      Q1.FieldByName('NFCE_CODIGOIMPORTACAO').AsInteger := strtoint(importacaoCodigo.Caption);
      Q1.FieldByName('NFCE_NUMEROIMPORTACAO').AsInteger := strtoint(NumeroImportacao.Caption);
      Q1.FieldByName('NFC_COD_USUARIO').AsInteger := PerM.CodigoUser;
      post;
      ApplyUpdates;
      CommitUpdates;
     end;
    finally
      FreeandNil(q1);
      FreeandNil(f);
    end;
end;

procedure TfrmPrincipal.Image2Click(Sender: TObject);
begin
  MudaBusca;

end;

procedure TfrmPrincipal.ImportaPrevenda;
begin
if frmPrevenda = nil then
    frmPrevenda := TfrmPrevenda.Create(self);
    frmPrevenda.ShowModal;
    if frmPrevenda.Codigo > 0 then
    begin
      panel12.Visible := True;
      TipoImportacao.Caption := 'Pré-Venda';
      NumeroImportacao.Caption := inttostr(frmPrevenda.Numero );
      importacaoCodigo.Caption := inttostr(frmPrevenda.codigo );
      importadesconto.Caption := formatfloat('###,###,##0.00', frmprevenda.Desconto);
      importasubtotal.Caption := formatfloat('###,###,##0.00', frmprevenda.Subtotal);
      importaTotal.Caption := formatfloat('###,###,##0.00', frmprevenda.total);
      ImportaStatus.Caption := frmprevenda.Status;
      LancaProdutoPrevenda;
    end;
    FreeandNil(frmPrevenda);
end;

procedure TfrmPrincipal.LancaProdutoCupom(qtdCupom, Codigo, Tipo, sub, codsub : String);
var
ItensCupomM : TNfceItensModel;
ItensCupomC : TNfceItensController;
num : Integer;
q1 : TFDquery;
ProdM : TProdutoModel;
ProdC : TProdutoController;
funcao : TFuncoesGerais;
valorUni : Double;
Tasks: array [0..2] of ITask;
chave : String;
begin

    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

    edt_pesquisa.clear;
  try
    ProdM := TProdutoModel.create;
    ProdC := TProdutoController.create;
    if Codigo = '' then
    begin
      ShowMessage('Entre com o Produto!');
      abort;
    end;
    chave := funcao.GetRandomPassword(15, 3);
    ProdC.Ler(ProdM,Codigo, funcao.RetDec(QtdCupom), strtoint(lb_NVenda.Caption),Tipo, chave, sub, codsub);
    ItensCupomM := TNfceItensModel.create;
    ItensCupomC := TNfceItensController.create;
    funcao := TFuncoesGerais.create;
    if lb_NVenda.caption <> '0' then
    FContador := FContador + 1;

    try
     with ItensCupomM, ProdM, funcao do
     begin
      if CodigoDaCaixa = '' then
      begin
       valorUni := PRO_PRECOVENDA;
       NFC_CODIGO := 0;
       NFC_PROD_CPROD := PRO_CODIGO;
       NFC_PROD_CEAN := PRO_CODIGOBARRA;
       NFC_PROD_XPROD := PRO_DESCRICAO;
       NFC_PROD_UCOM := PRO_UNIDADE;
       NFC_PROD_VUNCOM := PRO_PRECOVENDA;
       NFC_BENEFICIARIO := Global.PRI_CPFCNPJ;
       NFC_RANDOMICO := Randomico;
       NFC_PROD_QCOM := RetDec(QtdCupom);
       NFC_PROD_VPROD := NFC_PROD_QCOM * NFC_PROD_VUNCOM;
       NFC_CODIGO_NFCE := strtoint(lb_NVenda.Caption);
       NFC_CUSTOPRODUTO := PRO_CUSTO * NFC_PROD_QCOM;
       NFC_ORD := inttostr(FContador);
       NFC_RANDOMICOPRODUTO := chave;
       Panel9.Caption := PRO_DESCRICAO;
       edit2.Caption := formatfloat('###,###,##0.000', PRO_PRECOVENDA);
       edit1.Caption := formatfloat('###,###,##0.000', NFC_PROD_QCOM);
       panel16.Caption := formatfloat('###,###,##0.00', NFC_PROD_VPROD);
       ImagemProduto := PRO_IMAGEMPROD;
       CarregaImagem(TemPromocao);
       pn_totalaPagar.Caption := FormatFloat('###,###,##0.00', NFC_PROD_VPROD + RetDec(pn_totalaPagar.Caption));
       AddItemCupom(NFC_PROD_CEAN, formatfloat('###,###,##0.000', NFC_PROD_QCOM),formatfloat('###,###,##0.00', NFC_PROD_VUNCOM), formatfloat('###,###,##0.00', NFC_PROD_VPROD),NFC_PROD_XPROD,'', NFC_ORD, NFC_PROD_UCOM);
      end
      else
      begin
       valorUni := PRO_PRECOCAIXA;
       NFC_CODIGO := 0;
       NFC_PROD_CPROD := PRO_CODIGO;
       NFC_PROD_CEAN := PRO_CODIGOBARRA2;
       NFC_PROD_XPROD := PRO_DESCRICAO2;
       NFC_PROD_UCOM := PRO_UNIDADE2;
       NFC_PROD_VUNCOM := PRO_PRECOCAIXA;
       NFC_BENEFICIARIO := Global.PRI_CPFCNPJ;
       NFC_RANDOMICO := Randomico;
       NFC_PROD_QCOM := RetDec(QtdCupom);
       NFC_PROD_VPROD := NFC_PROD_QCOM * NFC_PROD_VUNCOM;
       NFC_CODIGO_NFCE := strtoint(lb_NVenda.Caption);
       NFC_CUSTOPRODUTO := PRO_CUSTO * NFC_PROD_QCOM;
       NFC_ORD := inttostr(FContador);
       NFC_RANDOMICOPRODUTO := chave;
       Panel9.Caption := PRO_DESCRICAO2;
       edit2.Caption := formatfloat('###,###,##0.000', PRO_PRECOCAIXA);
       edit1.Caption := formatfloat('###,###,##0.000', NFC_PROD_QCOM);
       panel16.Caption := formatfloat('###,###,##0.00', NFC_PROD_VPROD);
       ImagemProduto := PRO_IMAGEMPROD;
       CarregaImagem(TemPromocao);
       pn_totalaPagar.Caption := FormatFloat('###,###,##0.00', NFC_PROD_VPROD + RetDec(pn_totalaPagar.Caption));
       AddItemCupom(NFC_PROD_CEAN, formatfloat('###,###,##0.000', NFC_PROD_QCOM),formatfloat('###,###,##0.00', NFC_PROD_VUNCOM), formatfloat('###,###,##0.00', NFC_PROD_VPROD),NFC_PROD_XPROD,'',NFC_ORD, NFC_PROD_UCOM);
      end;
     end;
     ItensCupomC.Inserir(ItensCupomM);
    finally
      ProdM := TProdutoModel.create;
      ProdC := TProdutoController.create;
      FreeandNil(ItensCupomM);
      FreeandNil(ItensCupomC);
      FreeandNil(funcao);
    end;
  finally
    FreeandNil(q1);
  end;

  AtualizaItemCupom;



end;

procedure TfrmPrincipal.LancaProdutoPrevenda;
var
q1 : TFDquery;
f : TFuncoesGerais;
qtd, codigo : String;
begin
   if Randomico = '' then
    begin
      AbreCupom;
    end;

    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

    f := TFuncoesGerais.create;
    try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Add('select * from TB_ITENSPREVENDA where PRE_CODIGO_PREVENDA ='+QuotedStr(importacaoCodigo.Caption));
        open;
        while not eof do
        begin
          LancaProdutoCupom(formatfloat('###,###,##0.000',q1.FieldByName('PRE_QUANTIDADE').asfloat),q1.FieldByName('PRE_CODIGO_PRODUTO').AsString, 'Pré-Venda','','');
          next;
        end;
      end;
    finally
      FreeandNil(q1);
      FreeandNil(f);
    end;
end;

procedure TfrmPrincipal.LimpaVenda;
begin

  if not FDCupom.IsEmpty then
  begin
    if application.MessageBox('Deseja Cancelar a Venda, Todos os dados do lançamento serão apagados!','Atenção', mb_yesno + mb_iconquestion) = idyes then
     CaixaLivre;
     OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Logo.png';
     Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

  end;
end;

procedure TfrmPrincipal.LogaSemLogin;
var
UsuarioModel : TUsuariosModel;
UsuarioController : TUsuariosController;
begin
    //ValidaLogin(combobox1.Text, combobox2.Text,Edit2.Text);
    UsuarioModel := TUsuariosModel.create;
    UsuarioController := TUsuariosController.create;

    try
      UsuarioController.Logar(UsuarioModel,dm.Global.FieldByName('pri_CPFCNPJ').AsString,
      'Caixa', '1234');
      if UsuarioModel.usu_logado = 'True' then
        begin
         frmPrincipal.CarregaGlobal;
         frmLogin.LiberaSistema;
         frmPrincipal.CarregaUser(UsuarioModel.USU_CODIGO_NIVEL, UsuarioModel.USU_CODIGO, UsuarioModel.USU_LOGIN);

        end
         else
         begin
         ShowMessage('Senha Inválida!');
         Application.Terminate;
         end;
    finally
      FreeandNil(UsuarioModel);
      FreeandNil(UsuarioController);

    end;
end;

procedure TfrmPrincipal.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edt_pesquisa.SetFocus;
end;

procedure TfrmPrincipal.MudaBusca;
begin
if TipoPesquisa = 0 then
  begin
  TipoPesquisa := 1;
  //OpenPictureDialog1.FileName := GetCurrentDir + '\img\on.png' ;
  //Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  //label1.Caption := '[F2] - Busca Avançada';
  //label1.Font.Color := clBlue;
  if edt_pesquisa.Text = '' then
     panel9.Caption := 'Entre com o Produto!';
  end
  else
  begin
  TipoPesquisa := 0;
  //OpenPictureDialog1.FileName := GetCurrentDir + '\img\off.png' ;
  //Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  //label1.Caption := '[F2] - Busca Padrão - Código / Código de Barras';
  //label1.Font.Color := clGray;
  dbgrid2.Visible := False;
  if edt_pesquisa.Text = '' then
     panel9.Caption := 'Entre com o Produto!';
  end;
end;

procedure TfrmPrincipal.NFCe1Click(Sender: TObject);
begin
 if frmNFCe = nil then
    frmNFCe := TfrmNFCe.Create(self);
    frmNFCe.ShowModal;
    if frmNFCe.Codigo > 0 then
    begin
      ReabreVenda;
    end;
    FreeandNil(frmNFCe);
end;

function TfrmPrincipal.PadL(const S: string; const ComprimentoFinal: integer;
  const Complemento: string): string;
var
Texto: string;
begin
  Texto := S;
  while Length(Texto) < ComprimentoFinal do
    Texto := Texto + ' ';
    Result := Texto;
end;



procedure TfrmPrincipal.Panel30Click(Sender: TObject);
begin
 if panel30.Caption <> '' then
 begin
    if frmNFCe = nil then
    frmNFCe := TfrmNFCe.Create(self);
    frmNFCe.FContingencia := 's';
    frmNFCe.ShowModal;
    if frmNFCe.Codigo > 0 then
    begin
      ReabreVenda;
    end;
    FreeandNil(frmNFCe);
 end;
end;

procedure TfrmPrincipal.Panel9Click(Sender: TObject);
begin
edt_pesquisa.SetFocus;
end;

procedure TfrmPrincipal.PesquisaProduto;
var
funcoes : TFuncoesGerais;
p : String;
begin
funcoes := TFuncoesGerais.create;
panel9.Caption := edt_pesquisa.Text;
 p := Copy(edt_pesquisa.Text , Pos('*', edt_pesquisa.Text) + 1, Length(edt_pesquisa.Text));
 if funcoes.SoLetra(p) = true then
 begin
  TipoPesquisa := 1;
  MudaBusca;
 end
 else
 begin
  TipoPesquisa := 0;
  MudaBusca;

 end;
if TipoPesquisa = 1 then
begin
try


   Timer1.Enabled := false;
if edt_pesquisa.Text = '' then
   begin
     dbgrid2.Visible := false;
     panel9.Caption := 'Passe o Leitor!';
   end
   else
   begin
     dbgrid2.Visible := true;
     dbgrid2.Width := panel9.Width;
     dbgrid2.Height := panel7.Height;
     if funcoes.SoLetra(p) = true then
        begin
           with FDProd do
           begin
             close;
             sql.Clear;
             sql.add('select * from (select first 100  tb_produtos.pro_codigo as codigo,tb_produtos.PRO_REFERENCIA as referencia, tb_produtos.pro_codigobarra as barra, tb_produtos.pro_descricao as nome, tb_produtos.pro_unidade as und,');
             sql.add('tb_produtos.pro_quantidade as qtd, tb_produtos.pro_precovenda as valor, tb_produtos.PRO_QUANTIDADEREAL as qtdReal, tb_produtos.PRO_sub as sub, tb_produtos.PRO_CODIGOSUB as codsub from tb_produtos');
             sql.add('union all');
             sql.add('select tb_subproduto.sub_codigoproduto as codigo, tb_subproduto.sub_referencia as referencia, tb_subproduto.sub_codigobarra as barra, tb_subproduto.sub_descricao as nome,');
             sql.add('tb_subproduto.sub_und as und, floor(tb_produtos.pro_quantidade / tb_subproduto.sub_qtdund)  as qtd, tb_subproduto.sub_preco as valor, tb_subproduto.sub_qtdreal as qtdReal,tb_subproduto.sub as sub,tb_subproduto.SUB_CODIGO as codsub');
             sql.add('from  tb_produtos left join tb_subproduto  on tb_subproduto.sub_codigoproduto = tb_produtos.pro_codigo ) tb_produtos where codigo like'+QuotedStr('%'+p+'%'));
             sql.Add('order by codigo');
             open;
             if IsEmpty then
             begin
               with FDProd do
               begin
                close;
                sql.Clear;
                sql.add('select * from (select first 100  tb_produtos.pro_codigo as codigo,tb_produtos.PRO_REFERENCIA as referencia, tb_produtos.pro_codigobarra as barra, tb_produtos.pro_descricao as nome, tb_produtos.pro_unidade as und,');
                sql.add('tb_produtos.pro_quantidade as qtd, tb_produtos.pro_precovenda as valor, tb_produtos.PRO_QUANTIDADEREAL as qtdReal, tb_produtos.PRO_sub as sub,tb_produtos.PRO_CODIGOSUB as codsub from tb_produtos');
                sql.add('union all');
                sql.add('select tb_subproduto.sub_codigoproduto as codigo, tb_subproduto.sub_referencia as referencia, tb_subproduto.sub_codigobarra as barra, tb_subproduto.sub_descricao as nome,');
                sql.add('tb_subproduto.sub_und as und, floor(tb_produtos.pro_quantidade / tb_subproduto.sub_qtdund)  as qtd, tb_subproduto.sub_preco as valor, tb_subproduto.sub_qtdreal as qtdRealtb_subproduto.sub as sub,tb_subproduto.SUB_CODIGO as codsub');
                sql.add('from  tb_produtos left join tb_subproduto  on tb_subproduto.sub_codigoproduto = tb_produtos.pro_codigo ) tb_produtos where barra like'+QuotedStr('%'+p+'%'));
                sql.Add('order by barra');
                open;
                end;
             end;
           end;
        end
        else
         begin
          with FDProd do
           begin
             close;
             sql.Clear;
             sql.add('select * from (select first 100  tb_produtos.pro_codigo as codigo,tb_produtos.PRO_REFERENCIA as referencia, tb_produtos.pro_codigobarra as barra, tb_produtos.pro_descricao as nome, tb_produtos.pro_unidade as und,');
             sql.add('tb_produtos.pro_quantidade as qtd, tb_produtos.pro_precovenda as valor, tb_produtos.PRO_QUANTIDADEREAL as qtdReal, tb_produtos.PRO_sub as sub,tb_produtos.PRO_CODIGOSUB as codsub from tb_produtos where tb_produtos.pro_descricao like'+QuotedStr('%'+p+'%'));
            // sql.Add('order by tb_produtos.pro_descricao asc)');
             sql.add(' union all');
             sql.add('select tb_subproduto.sub_codigoproduto as codigo, tb_subproduto.sub_referencia as referencia, tb_subproduto.sub_codigobarra as barra, tb_subproduto.sub_descricao as nome,');
             sql.add('tb_subproduto.sub_und as und, floor(tb_produtos.pro_quantidade / tb_subproduto.sub_qtdund)  as qtd, tb_subproduto.sub_preco as valor, tb_subproduto.sub_qtdreal as qtdReal,tb_subproduto.sub as sub,tb_subproduto.SUB_CODIGO as codsub');
             sql.add('from  tb_produtos left join tb_subproduto  on tb_subproduto.sub_codigoproduto = tb_produtos.pro_codigo) order by nome desc');
             open;

             if FDProd.FieldByName('nome').AsString = '' then
             begin
             close;
             sql.Clear;
             sql.add('select * from (select first 100  tb_produtos.pro_codigo as codigo,tb_produtos.PRO_REFERENCIA as referencia, tb_produtos.pro_codigobarra as barra, tb_produtos.pro_descricao as nome, tb_produtos.pro_unidade as und,');
             sql.add('tb_produtos.pro_quantidade as qtd, tb_produtos.pro_precovenda as valor, tb_produtos.PRO_QUANTIDADEREAL as qtdReal, tb_produtos.PRO_sub as sub,tb_produtos.PRO_CODIGOSUB as codsub from tb_produtos where tb_produtos.PRO_REFERENCIA like'+QuotedStr('%'+p+'%'));
           //  sql.Add('order by tb_produtos.PRO_REFERENCIA  asc)');
             sql.add('union all');
             sql.add('select tb_subproduto.sub_codigoproduto as codigo, tb_subproduto.sub_referencia as referencia, tb_subproduto.sub_codigobarra as barra, tb_subproduto.sub_descricao as nome,');
             sql.add('tb_subproduto.sub_und as und, floor(tb_produtos.pro_quantidade / tb_subproduto.sub_qtdund)  as qtd, tb_subproduto.sub_preco as valor, tb_subproduto.sub_qtdreal as qtdReal, tb_subproduto.sub as sub,tb_subproduto.SUB_CODIGO as codsub');
             sql.add('from  tb_produtos left join tb_subproduto  on tb_subproduto.sub_codigoproduto = tb_produtos.pro_codigo) order by referencia desc');
             open;
             end;
          end;
        end;
        TNumericField(FDProd.FieldByName('codigo')).DisplayFormat := '00000';
        TNumericField(FDProd.FieldByName('valor')).DisplayFormat := '###,###,##0.00';
        TNumericField(FDProd.FieldByName('qtd')).DisplayFormat := '###,###,##0.00';
        TNumericField(FDProd.FieldByName('qtdReal')).DisplayFormat := '###,###,##0.00';
   end;

finally
  FreeandNil(funcoes);
  Gtime := 0;
end;
end;
end;

procedure TfrmPrincipal.ProdutoBuscaAvancada;
begin
//edt_pesquisa.Text :=
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
 if frmProdutos = nil then
    frmProdutos := TfrmProdutos.Create(self);
    frmProdutos.ShowModal;
    FreeandNil(frmProdutos);
end;

procedure TfrmPrincipal.ReabreVenda;
var
q1 : TFDquery;
f : TFuncoesGerais;
qtd, codigo : String;
begin
    with FDCupom do
    begin
      close;
      sql.Clear;
      sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(inttostr(frmNFCe.Codigo)));
      open;
      while not FDCupom.Eof do
        begin
          AddItemCupom(FDCupom.FieldByName('NFC_PROD_CEAN').AsString,formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_QCOM').Asfloat),formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_VUNCOM').Asfloat),formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_VPROD').Asfloat),FDCupom.FieldByName('NFC_PROD_XPROD').AsString,'', FDCupom.FieldByName('NFC_ORD').AsString, FDCupom.FieldByName('NFC_PROD_UCOM').AsString);
          FDCupom.Next;
        end;
      TotalCompra;


      TNumericField(FieldByName('NFC_PROD_QCOM')).DisplayFormat := '###,###,##0.000';
      TNumericField(FieldByName('NFC_PROD_VPROD')).DisplayFormat := '###,###,##0.00';
      TNumericField(FieldByName('NFC_PROD_VUNCOM')).DisplayFormat := '###,###,##0.00';
      q1 := TFDquery.Create(nil);
      q1.Connection := dm.Con;

      f := TFuncoesGerais.create;
      try
       with q1 do
       begin
        close;
        sql.Clear;
        sql.Add('select * from TB_NFCE where NFC_CODIGO ='+QuotedStr(inttostr(frmNFCe.Codigo)));
        open;

        if frmNFCe.FContingencia = 's' then
        begin
        AbreCupom;
        FDCupom.First;
        //lb_NumeroVenda.Caption := '0';
         with FDCupom do
         begin
           close;
           sql.Clear;
           sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(inttostr(frmNFCe.Codigo)));
           open;
           while not eof do
           begin
           edit;
           FieldByName('NFC_RANDOMICO').AsString := Randomico;
           FieldByName('NFC_CODIGO_NFCE').AsInteger := strtoint(lb_NVenda.Caption);
           AddItemCupom(FDCupom.FieldByName('NFC_PROD_CEAN').AsString,formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_QCOM').Asfloat),formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_VUNCOM').Asfloat),formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_VPROD').Asfloat),FDCupom.FieldByName('NFC_PROD_XPROD').AsString,'', FDCupom.FieldByName('NFC_ORD').AsString, FDCupom.FieldByName('NFC_PROD_UCOM').AsString);
           post;
           next;
           end;

           FDCupom.ApplyUpdates;
           FDCupom.CommitUpdates;
         end;
        // FDCupom.Refresh;
        //lb_NVenda.Caption := '0';
        end
        else
        begin
        lb_NumeroVenda.Caption := inttostr(FieldByName('NFC_IDE_NNF').asInteger);
        lb_NVenda.Caption := inttostr(frmNFCe.Codigo);
        end;

       end;


      finally
      FreeandNil(q1);
      FreeandNil(f);
      end;


    end;



end;

procedure TfrmPrincipal.RelatriodeVendas1Click(Sender: TObject);
begin
 if FrmRelatorioDeVendas = nil then
    FrmRelatorioDeVendas := TFrmRelatorioDeVendas.Create(self);
    try
      FrmRelatorioDeVendas.ShowModal;
    finally
      FreeandNil(FrmRelatorioDeVendas);
    end;
end;

procedure TfrmPrincipal.ResumodeVendas1Click(Sender: TObject);
begin
 if FrmResumoDeVendas = nil then
    FrmResumoDeVendas := TFrmResumoDeVendas.create(self);
    try
      FrmResumoDeVendas.showmodal;
    finally
      FreeandNil(FrmResumoDeVendas);
    end;
end;

procedure TfrmPrincipal.SelecionarImpressora1Click(Sender: TObject);
begin
if FrmSelecionaImpressora = nil then
   FrmSelecionaImpressora := TFrmSelecionaImpressora.Create(self);
   FrmSelecionaImpressora.ShowModal;
   FreeandNil(FrmSelecionaImpressora);
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
FinalizaF3;
end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin

    try
       if ValidaCertificado = false then
     begin
       abort;
     end;
    FinalizaDinheiro;

    finally

    end;



end;

procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
EditaProduto;

end;

procedure TfrmPrincipal.SpeedButton4Click(Sender: TObject);
begin
  AbreConsulta;
end;

procedure TfrmPrincipal.SpeedButton5Click(Sender: TObject);
begin
if not FDCupom.IsEmpty then
 begin

  GravaNFCe;
  LimpaVenda;
 end;
end;

procedure TfrmPrincipal.SpeedButton6Click(Sender: TObject);
begin
 if Application.MessageBox('Sair do Sistema?','Atenção', mb_yesno + mb_iconquestion) = idyes then
  begin
    if not FDCupom.IsEmpty then
     begin
     GravaNFCe;
    end;
    application.Terminate;
  end;

end;

procedure TfrmPrincipal.SpeedButton7Click(Sender: TObject);
begin
 ImportaPrevenda;
end;

procedure TfrmPrincipal.SpeedButton8Click(Sender: TObject);
begin
DeletaProduto;
end;

procedure TfrmPrincipal.SQLPesquisa;
var
TextSQL, digitoBalanca, hj, inicioPromocao, fimPromocao : String;
produto : TFDquery;
NoDia : Integer;
funcao : TFuncoesGerais;
begin
  funcao := TFuncoesGerais.create;
  try
     if funcao.SoLetra(edt_pesquisa.Text) = true then
        begin
           with dm.FDProduto do
           begin
             close;
             sql.Clear;
             sql.Add('select pro_codigo,PRO_REFERENCIA, pro_codigobarra, pro_descricao, pro_unidade, pro_quantidade, pro_precovenda, PRO_QUANTIDADEREAL from tb_produtos where pro_codigobarra ='+QuotedStr(edt_pesquisa.Text));
             open;
             if IsEmpty then
             begin
               with dm.FDProduto do
               begin
                close;
                sql.Clear;
                sql.Add('select pro_codigo,PRO_REFERENCIA, pro_codigobarra, pro_descricao, pro_unidade, pro_quantidade, pro_precovenda, PRO_QUANTIDADEREAL from tb_produtos where pro_codigo ='+QuotedStr(edt_pesquisa.Text));
                open;
                end;
             end;
           end;
        end
        else
         begin
          with dm.FDProduto do
           begin
             close;
             sql.Clear;
             sql.Add('select pro_codigo,PRO_REFERENCIA, pro_codigobarra, pro_descricao, pro_unidade, pro_quantidade, pro_precovenda, PRO_QUANTIDADEREAL from tb_produtos where pro_descricao like'+QuotedStr('%'+edt_pesquisa.Text+'%'));
             sql.Add('order by pro_descricao');
             open;
             if IsEmpty then
             begin
             close;
             sql.Clear;
             sql.Add('select pro_codigo,PRO_REFERENCIA, pro_codigobarra, pro_descricao, pro_unidade, pro_quantidade, pro_precovenda, PRO_QUANTIDADEREAL from tb_produtos where PRO_REFERENCIA like'+QuotedStr('%'+edt_pesquisa.Text+'%'));
             sql.Add('order by pro_descricao');
             open;
             end;
          end;
        end;
      if dm.FDProduto.IsEmpty then
         ShowMessage('Produto não localizado!');
  finally
    FreeandNil(funcao);
  end;
end;

function TfrmPrincipal.SubtraiData(DataI, DataF: TDateTime): Integer;
begin
   result:=Trunc(DataF - DataI);
end;

procedure TfrmPrincipal.TEF;
begin
   ACBrTEFD1.DesInicializar(ConfigIni.TEFModelo);
  with ACBrTEFD1.TEFCliSiTef do
  begin
    DesInicializar;
    CNPJEstabelecimento        := Global.PRI_CPFCNPJ;
    CNPJSoftwareHouse          := '14027819000157';
    CodigoLoja                 := ConfigIni.SitefLoja;
    EnderecoIP                 := ConfigIni.SitefIP;
    ExibirErroRetorno          := True;
    Habilitado                 := True;
    NumeroTerminal             := ConfigIni.SitefTerminal;
    Operador                   := PerM.Login;
    PortaPinPad                := StrToIntDef(ConfigIni.SitefPortaPinPad, 0);
    ACBrTEFD1.MultiplosCartoes := True;
    ParametrosAdicionais.Text  := ConfigIni.SitefParametro;
    NumVias := 2;
  end;

  estadoSimuladoEcf := tpsLivre;
  ACBrTEFD1.Inicializar(ConfigIni.TEFModelo);
  if not (ACBrTEFD1.Inicializado(ConfigIni.TEFModelo)) then
  begin
      frmPrincipal.Panel9.Caption   := 'TEF não Inicializado';
   // FrmCaixa.Label17.Visible := True;
   // FrmCaixa.Label16.Visible := False;
  end
  else
  begin
      frmPrincipal.Panel9.Caption   := 'Caixa Livre';
   // FrmCaixa.Label16.Visible := True;
   // FrmCaixa.Label17.Visible := False;
  end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
GTime := 1;
end;

procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
begin
if label8.left>= -(label8.Width) then
label8.left:=label8.left-1
else
label8.left := Panel1.width;
label9.caption := FormatDateTime('dd/mm/yyyy', now)+' '+ timetostr(time);
end;

procedure TfrmPrincipal.Timer3Timer(Sender: TObject);
begin
   panel30.Visible := not panel30.Visible;
end;

procedure TfrmPrincipal.TotalCompra;
var
Total : double;
Qtd : integer;
begin
  Total := 0;
  Qtd := 0;
  with FDCupom do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Total    := (Total + FDCupom.FieldByName('NFC_PROD_VPROD').AsFloat);
      Qtd:= Qtd + 1;
      Next;
    end;
    EnableControls;
  end;
  pn_totalaPagar.Caption := formatfloat('###,###,##0.00', Total);
  qtdItens.Caption := 'Qtd Itens :'+inttostr(Qtd);
  idProdCupom := FDCupom.FieldByName('nfc_codigo').AsInteger;
end;

function TfrmPrincipal.ValidaCertificado: boolean;
var
dtComputador, dtInadiplencia : TDate;
NumeroDias, DiasParaBloqueio : Integer;
begin
dtComputador :=  now;
dtInadiplencia := global.PRI_VENCIMENTO_CERTIFICADO;
NumeroDias := DaysBetween(now,dtInadiplencia);
Result := true;
 case NumeroDias of
     0 :
     begin
       DiasParaBloqueio := 5
     end;
     1 :
     begin
       DiasParaBloqueio := 4
     end;
     2 :
     begin
       DiasParaBloqueio := 3
     end;
     3 :
     begin
       DiasParaBloqueio := 2
     end;
     4 :
     begin
       DiasParaBloqueio := 1
     end;
     5 :
     begin
       DiasParaBloqueio := 0
     end;
  end;
  if NumeroDias in [30,25,20,15,10,9,8,7,6,5,4,3,2,1] then
  begin
     ShowMessage(pchar('Seu Certificado Digital irá se expirar em '+inttostr(NumeroDias)+' Dias, entre em contato com o seu Suporte Técnico!'));
     panel29.Caption := 'Certificado Digital Expira em: '+inttostr(NumeroDias)+' Dias!';
  end;
  if NumeroDias = 0 then
  begin
     ShowMessage('Seu Certificado Digital expira amanhã, entre em contato com o seu Suporte Técnico!');
     panel29.Caption := 'Certificado Digital Expira Amanhã!';
  end;
  if (NumeroDias < 0)then
  begin
     ShowMessage('Infelizmente seu Certificado Digital expirou, Favor entrar em contato com seu Suporte Técnico.');
     panel29.Caption := 'Certificado Digital Expirado!';
     Result := false;
  end;

end;

procedure TfrmPrincipal.VerificaCaixaAberto;
var
afM : TAbreFechaCaixa;
begin
if Global.PRI_CAIXA_CONF2 = '2' then
 begin
 afM := TAbreFechaCaixa.create;
  try
   afM.AbreCaixa('F');
  finally
    FreeandNil(afM);
  end;
 end;

end;



function TfrmPrincipal.verificarSaldoRestante: Currency;
begin
//    frmFinaliza.EditSaldoRestante.Text := CurrToStr(StringToFloatDef(FrmCaixa.Label11.Text, 0) - StringToFloatDef(frmFinaliza.edt_cartaoDebito.Text, 0));
//
//  Result := StringToFloatDef(frmFinaliza.edt_cartaoDebito.Text, 0);
//
//  if StringToFloatDef(frmFinaliza.edt_cartaoDebito.Text, 0) = StringToFloatDef(FrmCaixa.Label11.Text, 0) then
//    Result := 0;
end;

end.
