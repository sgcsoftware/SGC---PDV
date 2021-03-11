unit MiniSoft.View.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, Vcl.StdCtrls, RzLabel,
  Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDBData, cxGridLevel, cxGridChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxLocalization, Conexao, RzButton, Vcl.Menus, dxDateRanges, uDWConstsData,
  uRESTDWPoolerDB;

type
  TfrmProdutos = class(TForm)
    tm_foco: TTimer;
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
    SaveDialog1: TSaveDialog;
    DataSource: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PRO_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_CODIGOBARRA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_MARCA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_REFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_PORCENTAGEMLUCRO: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_PRECOVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_NCM: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_CFOP: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_CSOSN: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_CST: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_CEST: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_GRUPO: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_DATACAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_ULTIMAVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_ULTIMACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_ALIQUOTA: TcxGridDBColumn;
    cxGrid1ChartView1: TcxGridChartView;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    pnNomeLabel: TPanel;
    lblNomeTela: TRzLabel;
    Panel1: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    cmb_filtro: TComboBox;
    edt_filtro: TEdit;
    CheckBox1: TCheckBox;
    btn_menu: TRzMenuButton;
    Data1: TRzDateTimeEdit;
    Data2: TRzDateTimeEdit;
    cmb_grupo: TComboBox;
    popmMENU: TPopupMenu;
    N3Histrico1: TMenuItem;
    N1: TMenuItem;
    N2ItensdoCupom1: TMenuItem;
    FDquery: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cmb_filtroClick(Sender: TObject);
    procedure N2ItensdoCupom1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure MudaCmbFiltro;
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal;

procedure TfrmProdutos.cmb_filtroClick(Sender: TObject);
begin
MudaCmbFiltro;
end;

procedure TfrmProdutos.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  campo : string;
begin
  inherited;

  campo:= cxGrid1DBTableView1.Controller.FocusedColumn.Name;
if campo = 'cxGrid1DBTableView1PRO_CODIGO' then
begin
   cmb_filtro.ItemIndex := 0;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_CODIGOBARRA' then
begin
   cmb_filtro.ItemIndex := 1;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_MARCA' then
begin
   cmb_filtro.ItemIndex := 2;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_REFERENCIA' then
begin
   cmb_filtro.ItemIndex := 3;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_DESCRICAO' then
begin
   cmb_filtro.ItemIndex := 4;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_UNIDADE' then
begin
   cmb_filtro.ItemIndex := 5;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_QUANTIDADE' then
begin
   cmb_filtro.ItemIndex := 6;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_CUSTO' then
begin
   cmb_filtro.ItemIndex := 7;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_PORCENTAGEMLUCRO' then
begin
   cmb_filtro.ItemIndex := 8;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_PRECOVENDA' then
begin
   cmb_filtro.ItemIndex := 9;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_NCM' then
begin
   cmb_filtro.ItemIndex := 10;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_CFOP' then
begin
   cmb_filtro.ItemIndex := 11;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_CSOSN' then
begin
   cmb_filtro.ItemIndex := 12;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_CST' then
begin
   cmb_filtro.ItemIndex := 13;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_CEST' then
begin
   cmb_filtro.ItemIndex := 14;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_GRUPO' then
begin
   cmb_filtro.ItemIndex := 15;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_DATACAD' then
begin
   cmb_filtro.ItemIndex := 16;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_ULTIMAVENDA' then
begin
   cmb_filtro.ItemIndex := 17;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_ULTIMACOMPRA' then
begin
   cmb_filtro.ItemIndex := 18;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRO_ALIQUOTA' then
begin
   cmb_filtro.ItemIndex := 19;
   MudaCmbFiltro;
end;

end;


procedure TfrmProdutos.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key =  VK_RETURN then
    begin
      FDquery.Post;
    end;
end;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdquery.State in [dsInsert, dsEdit] then
  begin
    fdquery.Post;
  end;
end;

procedure TfrmProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
   close;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
 with fdquery do
  begin
    close;
    sql.Clear;
    Sql.add('select * from(select first 100 pro_codigo, PRO_CUSTOREAL,pro_codigobarra, pro_marca, pro_referencia, pro_descricao,');
    Sql.add('pro_unidade, pro_quantidade, pro_custo, PRO_PORCENTAGEMLUCRO, pro_precovenda, pro_ncm, pro_cfop,');
    Sql.add('pro_csosn, pro_cst, pro_cest,PRO_QUANTIDADEREAL, pro_grupo, pro_datacad, pro_ultimavenda, pro_ultimacompra, pro_aliquota, pro_beneficiario');
    Sql.add('from tb_produtos where pro_beneficiario = :pro_beneficiario');
    Sql.Add('order by pro_codigo Desc)order by pro_codigo');
    ParamByName('pro_beneficiario').Value := frmPrincipal.Global.PRI_CPFCNPJ;
    open;
    last;
    TNumericField(fdquery.FieldByName('pro_codigo')).DisplayFormat := '000000';
    TNumericField(fdquery.FieldByName('pro_custo')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('PRO_PORCENTAGEMLUCRO')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('pro_precovenda')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('pro_aliquota')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('pro_quantidade')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('PRO_QUANTIDADEREAL')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('PRO_CUSTOREAL')).DisplayFormat := '###,###,##0.000';
 end;
end;

procedure TfrmProdutos.MudaCmbFiltro;
begin
case cmb_filtro.ItemIndex of
     0,1,2,3,4,5,6,7,8,9,10,11,12,13,19 :
     begin
       edt_filtro.Visible := True;
       Data1.Visible := false;
       Data2.Visible := false;
       cmb_grupo.Visible := false
     end;
     15 :
     begin
       edt_filtro.Visible := false;
       Data1.Visible := false;
       Data2.Visible := false;
       cmb_grupo.Visible := True

     end;
     16,17,18 :
     begin
      edt_filtro.Visible := false;
       Data1.Visible := True;
       Data2.Visible := True;
       cmb_grupo.Visible := false
     end;
 end;
end;

procedure TfrmProdutos.N2ItensdoCupom1Click(Sender: TObject);
begin
  FDQuery.Close;
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('SELECT * FROM tb_produtos inner join TB_NFCEITENS on (TB_PRODUTOS.PRO_CODIGO = TB_NFCEITENS.NFC_PROD_CPROD)');
  FDQuery.SQL.Add('and TB_NFCEITENS.NFC_CODIGO_NFCE='+QuotedStr(frmPrincipal.lb_NVenda.Caption));
  FDQuery.Open;
end;

procedure TfrmProdutos.SpeedButton5Click(Sender: TObject);
begin
 with fdquery do
  begin
   close;
   sql.Clear;
   sql.Add('select * from tb_produtos where pro_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
   open;

   TNumericField(fdquery.FieldByName('pro_codigo')).DisplayFormat := '000000';
   TNumericField(fdquery.FieldByName('pro_custo')).DisplayFormat := '###,###,##0.000';
   TNumericField(fdquery.FieldByName('PRO_PORCENTAGEMLUCRO')).DisplayFormat := '###,###,##0.000';
   TNumericField(fdquery.FieldByName('pro_precovenda')).DisplayFormat := '###,###,##0.000';
   TNumericField(fdquery.FieldByName('pro_aliquota')).DisplayFormat := '###,###,##0.000';
   TNumericField(fdquery.FieldByName('pro_quantidade')).DisplayFormat := '###,###,##0.000';
   TNumericField(fdquery.FieldByName('PRO_QUANTIDADEREAL')).DisplayFormat := '###,###,##0.000';

 end;
end;

procedure TfrmProdutos.SpeedButton6Click(Sender: TObject);
begin

  if edt_filtro.Text = '' then
  begin
    ShowMessage('Digite Algo para pesquisar!');
    abort;
  end;
with FDquery do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_PRODUTOS where pro_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
     case cmb_filtro.ItemIndex of
        0 :
        begin
          sql.Add('AND PRO_CODIGO LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        1 :
        begin
          sql.Add('and PRO_CODIGOBARRA like '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        2 :
        begin
          sql.Add(' and PRO_MARCA LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        3 :
        begin
          sql.Add('and PRO_REFERENCIA LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        4 :
        begin
          sql.Add('and PRO_DESCRICAO LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        5 :
        begin
          sql.Add('and PRO_UNIDADE LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        6 :
        begin
          sql.Add('and PRO_QUANTIDADE LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        7 :
        begin
          sql.add('and PRO_CUSTO LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        8 :
        begin
          sql.Add('and PRO_PORCENTAGEMLUCRO LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        9 :
        begin
          sql.Add('and PRO_PRECOVENDA LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        10 :
        begin
          sql.Add('and PRO_NCM LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        11 :
        begin
          sql.Add('and PRO_CFOP LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        12 :
        begin
          sql.Add('and PRO_CSOSN LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        13 :
        begin
          sql.Add('and PRO_CST LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        14 :
        begin
          sql.Add('and PRO_CEST LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        15 :
        begin
          sql.Add('and PRO_GRUPO LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        16 :
        begin
          sql.Add('and PRO_DATACAD between '+QuotedStr(FormatDateTime('yyyy-mm-dd',data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
        end;
        17 :
        begin
          sql.Add('and PRO_ULTIMAVENDA between '+QuotedStr(FormatDateTime('yyyy-mm-dd',data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
        end;
        18 :
        begin
          sql.Add('and PRO_ULTIMACOMPRA between '+QuotedStr(FormatDateTime('yyyy-mm-dd',data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
        end;
        19 :
        begin
          sql.Add('and PRO_ALIQUOTA LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
     end;
     open;
     TNumericField(fdquery.FieldByName('pro_codigo')).DisplayFormat := '000000';
    TNumericField(fdquery.FieldByName('pro_custo')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('PRO_PORCENTAGEMLUCRO')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('pro_precovenda')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('pro_aliquota')).DisplayFormat := '###,###,##0.000';
    TNumericField(fdquery.FieldByName('pro_quantidade')).DisplayFormat := '###,###,##0.000';
   end;
end;

end.
