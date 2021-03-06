unit MiniSoft.View.ParcelasCrediario;

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
  cxDBData, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, cxClasses, cxLocalization,
  cxGridLevel, cxGridChartView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Datasnap.DBClient,
  MiniSoft.Funcoes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  MiniSoft.Model.ParcelasVendas, MiniSoft.Controller.ParcelasVendas, Conexao,
  dxDateRanges,uDWConstsData, uRESTDWPoolerDB;

type
  TfrmParcelasCrediario = class(TForm)
    CDS: TClientDataSet;
    CDSCliente: TStringField;
    CDSrefParcelas: TStringField;
    CDSvlrParcela: TFloatField;
    CDSdataVencimento: TDateField;
    CDSRandomico: TStringField;
    CDScodCompra: TIntegerField;
    CDScodParcela: TIntegerField;
    CDSnumeroParcela: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CLI_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_CPFCNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_NOMERAZAO: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_CONTATO: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_RGIE: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_UF: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_COMPLEMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_CEP: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_TEL1: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_TEL2: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_CELULAR: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_WHATSAP: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_CONJUGE: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_NOMEPAI: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_NOMEMAE: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_DATAULTIMACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_OBS: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_DATACADASTRO: TcxGridDBColumn;
    cxGrid1ChartView1: TcxGridChartView;
    cxGrid1Level1: TcxGridLevel;
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
    Panel2: TPanel;
    NumeroNFe: TLabel;
    Chave: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    SaveDialog1: TSaveDialog;
    tm_foco: TTimer;
    DS: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Cliente: TcxGridDBColumn;
    cxGridDBTableView1refParcelas: TcxGridDBColumn;
    cxGridDBTableView1vlrParcela: TcxGridDBColumn;
    cxGridDBTableView1DataVencimento: TcxGridDBColumn;
    cxGridChartView1: TcxGridChartView;
    cxGridLevel1: TcxGridLevel;
    Button2: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  frmParcelasCrediario: TfrmParcelasCrediario;

implementation

{$R *.dfm}

uses MiniSoft.Model.Principal, MiniSoft.View.Principal;



procedure TfrmParcelasCrediario.Button1Click(Sender: TObject);
begin
Parcelamento;
button2.SetFocus;
end;

procedure TfrmParcelasCrediario.Button2Click(Sender: TObject);
begin
if OperacaoParcela = 'Novo' then
   Novo
   else
   edita;

   OperacaoParcela := '';
   Close;
end;

procedure TfrmParcelasCrediario.Edita;
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
     with parM do
     begin

        PAR_CODIGO := CDScodParcela.AsInteger;
        PAR_CLIENTE := NOmeCliente;
        PAR_CODIGO_CLIENTE := CodCliente;
        PAR_NUMEROFATURA := 0;
        PAR_CODIGOVENDA := CodVenda;
        PAR_NUMEROVENDA :=0;
        PAR_TIPOVENDA := TipoVenda;
        PAR_VALORVENDA := ValorVenda;
        PAR_VALORPARCELA := CDSvlrParcela.AsFloat;
        PAR_DATA := now;
        PAR_DATAVENCIMENTO := CDSDataVencimento.AsDateTime;
        PAR_NUMEROPARCELA := '';
        PAR_REFERENCIA := CDSrefParcelas.AsString;
        PAR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
        PAR_RANDOMICO := nRandomico;
        PAR_FORMAPAG := FormaPag;
        PAR_NUMEROPARCELA := CDSnumeroParcela.AsString;

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

procedure TfrmParcelasCrediario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padr?o
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmParcelasCrediario.FormShow(Sender: TObject);
var
pag : TFdquery;
begin
edit1.SetFocus;
cds.EmptyDataSet;

   OperacaoParcela := 'Novo';
   pag := TFdquery.Create(nil);
   pag.Connection := dm.Con;

   try
     if FormaPag = 'Boleto' then
    begin
      with pag do
      begin
        edit1.Text := inttostr(recordcount);
        OperacaoParcela := 'Edita';
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
            OperacaoParcela := 'Edita';
            CDS.Insert;
            CDSCliente.AsString := pag.FieldByName('par_cliente').AsString;
            CDSrefParcelas.AsString :=  pag.FieldByName('PAR_REFERENCIA').AsString;
            CDSvlrParcela.AsFloat := pag.FieldByName('PAR_VALORPARCELA').asFloat;
            CDSDataVencimento.AsDateTime := pag.FieldByName('PAR_DATAVENCIMENTO').AsDateTime;
            CDSRandomico.AsString := pag.FieldByName('PAR_RANDOMICO').AsString;
            CDScodcompra.AsInteger := pag.FieldByName('PAR_CODIGOVENDA').AsInteger;
            CDScodParcela.AsInteger := pag.FieldByName('PAR_CODIGO').AsInteger;
            cds.Post;
            next;
          end;
        end;
      end;
    end;
    if FormaPag = 'Credi?rio' then
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
            OperacaoParcela := 'Edita';
            CDS.Insert;
            CDSCliente.AsString := pag.FieldByName('par_cliente').AsString;
            CDSrefParcelas.AsString :=  pag.FieldByName('PAR_REFERENCIA').AsString;
            CDSvlrParcela.AsFloat := pag.FieldByName('PAR_VALORPARCELA').asFloat;
            CDSDataVencimento.AsDateTime := pag.FieldByName('PAR_DATAVENCIMENTO').AsDateTime;
            CDSRandomico.AsString := pag.FieldByName('PAR_RANDOMICO').AsString;
            CDScodcompra.AsInteger := pag.FieldByName('PAR_CODIGOVENDA').AsInteger;
            CDScodParcela.AsInteger := pag.FieldByName('PAR_CODIGO').AsInteger;
            cds.Post;
            next;
          end;
        end;
      end;
    end;
    if FormaPag = 'Cart?o Cr?dito' then
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
            OperacaoParcela := 'Edita';
            CDS.Insert;
            CDSCliente.AsString := pag.FieldByName('par_cliente').AsString;
            CDSrefParcelas.AsString :=  pag.FieldByName('PAR_REFERENCIA').AsString;
            CDSvlrParcela.AsFloat := pag.FieldByName('PAR_VALORPARCELA').asFloat;
            CDSDataVencimento.AsDateTime := pag.FieldByName('PAR_DATAVENCIMENTO').AsDateTime;
            CDSRandomico.AsString := pag.FieldByName('PAR_RANDOMICO').AsString;
            CDScodcompra.AsInteger := pag.FieldByName('PAR_CODIGOVENDA').AsInteger;
            CDScodParcela.AsInteger := pag.FieldByName('PAR_CODIGO').AsInteger;
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



procedure TfrmParcelasCrediario.Novo;
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
     with parM do
     begin


        PAR_CODIGO := 0;
        PAR_CLIENTE := NOmeCliente;
        PAR_CODIGO_CLIENTE := CodCliente;
        PAR_NUMEROFATURA := 0;
        PAR_CODIGOVENDA := CodVenda;
        PAR_NUMEROVENDA := 0;
        PAR_TIPOVENDA := TipoVenda;
        PAR_VALORVENDA := Valor;
        PAR_VALORPARCELA := CDSvlrParcela.AsFloat;
        PAR_DATA := now;
        PAR_DATAVENCIMENTO := CDSDataVencimento.AsDateTime;
        PAR_NUMEROPARCELA := '';
        PAR_REFERENCIA := CDSrefParcelas.AsString;
        PAR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
        PAR_RANDOMICO := nRandomico;
        PAR_FORMAPAG := FormaPag;
        PAR_NUMEROPARCELA := inttostr(cds.RecordCount);

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

procedure TfrmParcelasCrediario.Parcelamento;
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

     CDS.Append;
     CDSCliente.AsString := NOmeCliente;
     CDSrefParcelas.AsString:= inttostr(i)+'/'+edit1.Text;//IncMonth(now, i);
     CDSvlrParcela.AsFloat := vlr;
     CDSnumeroParcela.AsString := inttostr(i);
     CDSDataVencimento.AsDateTime:= IncMonth(now, i);
     CDS.post;

  end;
 finally
   FreeandNil(f);
 end;
end;

end.
