unit MiniSoft.View.ParcelasCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
   dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxDropDownEdit, cxGridLevel, cxGridChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxClasses, cxLocalization, Datasnap.DBClient,
  MiniSoft.Controller.ParcelasAReceber, MiniSoft.Controller.ParcelasVendas,
  MiniSoft.Model.ParcelasAReceber, MiniSoft.Model.ParcelasVendas,
  MiniSoft.Funcoes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Conexao, dxDateRanges, uDWConstsData, uRESTDWPoolerDB;

type
  TfrmParcelamentoCheque = class(TForm)
    CDS: TClientDataSet;
    CDSBanco: TStringField;
    CDSAgencia: TStringField;
    CDSConta: TStringField;
    CDSEmissor: TStringField;
    CDSCpfCnpj: TStringField;
    CDSValor: TFloatField;
    CDSPreData: TDateField;
    CDSReferencia: TStringField;
    CDSNumeroCheque: TIntegerField;
    CDSCodParcela: TIntegerField;
    CDSCliente: TStringField;
    CDSCodCliente: TIntegerField;
    CDSRandomico: TStringField;
    CDSCodCompra: TIntegerField;
    cxLocalizer: TcxLocalizer;
    cxStyleRepository1: TcxStyleRepository;
    cor_azul_claro: TcxStyle;
    cor_azul_escuro: TcxStyle;
    cor_verde_money: TcxStyle;
    cor_amarelo_claro: TcxStyle;
    cor_laranja_claro: TcxStyle;
    cor_laranja_escuro: TcxStyle;
    cor_cinza_escuro: TcxStyle;
    cor_silver: TcxStyle;
    cxStyle1: TcxStyle;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    NumeroNFe: TLabel;
    Chave: TLabel;
    Panel3: TPanel;
    SaveDialog1: TSaveDialog;
    DS: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Banco: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroCheque: TcxGridDBColumn;
    cxGrid1DBTableView1Agencia: TcxGridDBColumn;
    cxGrid1DBTableView1Conta: TcxGridDBColumn;
    cxGrid1DBTableView1Emissor: TcxGridDBColumn;
    cxGrid1DBTableView1CpfCnpj: TcxGridDBColumn;
    cxGrid1DBTableView1Valor: TcxGridDBColumn;
    cxGrid1DBTableView1PreData: TcxGridDBColumn;
    cxGrid1ChartView1: TcxGridChartView;
    cxGrid1Level1: TcxGridLevel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
private
    { Private declarations }
    procedure Novo;
    procedure Edita;
  public
    { Public declarations }
    Valor : Double;
    FormaPag : String;
    OperacaoParcela : String;
    TipoVenda : String;
    CodVenda : Integer;
    Operacao : STring;
    nRandomico : String;
    CodCliente : Integer;
    NOmeCliente : String;
    ValorVenda : Double;
    procedure Parcelamento;
  end;

var
  frmParcelamentoCheque: TfrmParcelamentoCheque;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal;

{ TfrmParcelamentoCheque }

procedure TfrmParcelamentoCheque.Button1Click(Sender: TObject);
begin
Parcelamento;
button2.SetFocus;
end;

procedure TfrmParcelamentoCheque.Button3Click(Sender: TObject);
begin
if OperacaoParcela = 'Novo' then
   Novo
   else
   edita;

   OperacaoParcela := '';
   Close;
end;

procedure TfrmParcelamentoCheque.Edita;
var
parM : TParcelasVendasModel;
parC : TParcelasController;
f : TFuncoesGerais;
begin
  CDS.First;
  while not CDS.Eof do
  begin
  parM := TParcelasVendasModel.create;
  parC := TParcelasController.create;
  f := TFuncoesGerais.create;
   try
     with parM,f do
     begin

        PAR_CODIGO := CDSCodParcela.AsInteger;
        PAR_CLIENTE := NOmeCliente;
        PAR_CODIGO_CLIENTE := CodCliente;
        PAR_NUMEROFATURA := 0;
        PAR_CODIGOVENDA := CodVenda;
        PAR_NUMEROVENDA :=0;
        PAR_TIPOVENDA := TipoVenda;
        PAR_VALORVENDA := ValorVenda;
        PAR_VALORPARCELA := CDSValor.AsFloat;
        PAR_DATA := now;
        PAR_DATAVENCIMENTO := CDSPreData.AsDateTime;
        PAR_NUMEROPARCELA := '';
        PAR_REFERENCIA := CDSReferencia.AsString;
        PAR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
        PAR_RANDOMICO := nRandomico;
        PAR_FORMAPAG := FormaPag;
        //PAR_NUMEROPARCELA := cds.AsString;
        PAR_BANCO := CDSBanco.AsString;
        PAR_AGENCIA := CDSAgencia.AsString;
        PAR_NCHEQUE := CDSNumeroCheque.AsInteger;
        PAR_CPFCNPJ := SoNumeros(CDSCpfCnpj.AsString);
        PAR_EMISSOR := CDSEmissor.AsString;

        parC.Alterar(parM);


     end;
   finally
    FreeandNil(parM);
    FreeandNil(parC);
    FreeandNil(f);
   end;
   CDS.Next;
  end;
end;

procedure TfrmParcelamentoCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmParcelamentoCheque.FormShow(Sender: TObject);
var
pag : TFDquery;
begin
edit1.SetFocus;
cds.EmptyDataSet;

   OperacaoParcela := 'Novo';
   pag := TFDquery.Create(nil);
   pag.Connection := dm.Con;

   try
     if FormaPag = 'Cheque' then
    begin
      with pag do
      begin
        close;
        sql.Clear;
        sql.Add('select * from TB_PARCELASVENDAS where par_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
        sql.Add('and PAR_CODIGOVENDA='+QuotedStr(inttostr(CodVenda)));
        sql.Add('and PAR_TIPOVENDA='+QuotedStr(TipoVenda));
        sql.Add('and PAR_FORMAPAG='+QuotedStr(FormaPag));
        open;
        if not IsEmpty then
        begin
          while not eof do
          begin

            edit1.Text := inttostr(recordcount);
            CDS.Insert;
            CDSCliente.AsString := pag.FieldByName('par_cliente').AsString;
            CDSBanco.AsString :=  pag.FieldByName('PAR_BANCO').AsString;
            CDSConta.AsString := pag.FieldByName('PAR_CONTA').AsString;
            CDSPreData.AsDateTime := pag.FieldByName('PAR_DATAVENCIMENTO').AsDateTime;
            CDSEmissor.AsString := pag.FieldByName('PAR_EMISSOR').AsString;
            CDSCpfCnpj.AsString := pag.FieldByName('PAR_CPFCNPJ').AsString;
            CDSValor.ASFloat := pag.FieldByName('PAR_VALORPARCELA').ASFloat;
            CDSReferencia.AsString := pag.FieldByName('PAR_REFERENCIA').AsSTring;
            CDSNumeroCheque.AsInteger := pag.FieldByName('PAR_NCHEQUE').AsInteger;
            CDSCodParcela.AsInteger :=  pag.FieldByName('PAR_CODIGO').AsInteger;
            CDSCliente.AsString := pag.FieldByName('PAR_CLIENTE').AsSTring;
            CDSCodCliente.AsInteger := pag.FieldByName('PAR_CODIGO_CLIENTE').AsInteger;
            CDSRandomico.AsSTring := pag.FieldByName('PAR_RANDOMICO').AsSTring;
            CDSCodCompra.AsInteger := pag.FieldByName('PAR_CODIGOVENDA').AsInteger;
            cds.Post;
            next;
          end;
        end;
      end;
    end;
   finally
     FreeandNil(pag);
   end;
 end;


procedure TfrmParcelamentoCheque.Novo;
var
parM : TParcelasVendasModel;
parC : TParcelasController;
f : TFuncoesGerais;
begin
  CDS.First;
  while not CDS.Eof do
  begin
  parM := TParcelasVendasModel.create;
  parC := TParcelasController.create;
  f := TFuncoesGerais.create;
   try
     with parM, f do
     begin

        PAR_CODIGO := 0;
        PAR_CLIENTE := NOmeCliente;
        PAR_CODIGO_CLIENTE := CodCliente;
        PAR_NUMEROFATURA := 0;
        PAR_CODIGOVENDA := CodVenda;
        PAR_NUMEROVENDA := 0;
        PAR_TIPOVENDA := TipoVenda;
        PAR_VALORVENDA := ValorVenda;
        PAR_VALORPARCELA := CDSValor.AsFloat;
        PAR_DATA := now;
        PAR_DATAVENCIMENTO := CDSPreData.AsDateTime;
        PAR_NUMEROPARCELA := '';
        PAR_REFERENCIA := CDSReferencia.AsString;
        PAR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
        PAR_RANDOMICO := nRandomico;
        PAR_FORMAPAG := FormaPag;
        //PAR_NUMEROPARCELA := cds.AsString;
        PAR_BANCO :=  CDSBanco.AsString;
        PAR_AGENCIA := CDSAgencia.AsString;
        PAR_NCHEQUE := CDSNumeroCheque.AsInteger;
        PAR_CPFCNPJ := SoNumeros(CDSCpfCnpj.AsString);
        PAR_EMISSOR := CDSEmissor.AsString;
        parC.Inserir(parM);


     end;
   finally
    FreeandNil(parM);
    FreeandNil(parC);
    FreeandNil(f);
   end;
   CDS.Next;
  end;
end;

procedure TfrmParcelamentoCheque.Parcelamento;
var
f : TFuncoesGerais;
i : Integer;
vlr, vlr1 : Double;
parM : TParcelasVendasModel;
parC : TParcelasController;
par : TFDquery;
begin
     OperacaoParcela := 'Novo';
     CDS.First;
     while not cds.Eof do
     begin
     parM := TParcelasVendasModel.create;
     parC := TParcelasController.create;
     f := TFuncoesGerais.create;
     try
      parM.PAR_CODIGO := CDScodParcela.AsInteger;
      parC.Deletar(parM);
     finally
      FreeandNil(parM);
      FreeandNil(parC);
      FreeandNil(f);
     end;
     CDS.Next;
    end;

    vlr := Valor / strtoint(edit1.Text);
    cds.EmptyDataSet;
  i:= 1;
  f := TFuncoesGerais.create;
 try
  for i := 1 to strtoint(edit1.Text) do
  begin

      CDS.Insert;
    // CDS.AsString := NOmeCliente;
     CDSReferencia.AsString:= inttostr(i)+'/'+edit1.Text;//IncMonth(now, i);
      CDSValor.AsFloat := vlr;
    // CDSnumeroParcela.AsString := inttostr(i);
     CDSPreData.AsDateTime:= IncMonth(now, i);
     CDS.post;

  end;
 finally
   FreeandNil(f);
 end;
end;

end.
