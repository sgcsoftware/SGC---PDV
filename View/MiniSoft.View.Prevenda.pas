unit MiniSoft.View.Prevenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue,  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDBData, Vcl.ExtCtrls, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, cxGridLevel,
  cxGridChartView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.Mask, RzEdit, RzButton, Vcl.StdCtrls,
  Vcl.Buttons, RzLabel, frxClass, frxDBSet, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxClasses, cxLocalization, Conexao, dxDateRanges,
  uDWConstsData, uRESTDWPoolerDB;

type
  TfrmPrevenda = class(TForm)
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
    FiltroPrevenda: TfrxReport;
    frxFiltroPrevenda: TfrxDBDataset;
    Panel2: TPanel;
    Panel3: TPanel;
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
    Panel4: TPanel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    SaveDialog1: TSaveDialog;
    tm_foco: TTimer;
    DataSource: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PRE_NUMEROPREVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1PRE_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1PRE_DATAFATURAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRE_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1PRE_NOME_CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1PRE_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1PRE_VENDEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1PRE_MODELO: TcxGridDBColumn;
    cxGrid1ChartView1: TcxGridChartView;
    cxGrid1Level1: TcxGridLevel;
    DSItens: TDataSource;
    FDQuery: TFDQuery;
    FDItens: TFDQuery;
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cmb_filtroClick(Sender: TObject);
    procedure edt_filtroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Busca;
    procedure MudaCmbFiltro;
  public
    { Public declarations }
    Numero : Integer;
    Codigo : Integer;
    Desconto : Double;
    Total : Double;
    Subtotal : Double;
    Status : String;

    procedure MostraItensPrevenda;
    procedure MostraPreVenda;
    function VerificaAdministrador(Senha: String) : Boolean;

  end;

var
  frmPrevenda: TfrmPrevenda;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal, MiniSoft.View.SenhaAdmin, MiniSoft.Model.Usuarios;

{ TfrmPrevenda }

procedure TfrmPrevenda.Busca;
begin
 with FDquery do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_PREVENDA where PRE_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
     case cmb_filtro.ItemIndex of
        0 :
        begin
          sql.Add('AND PRE_NUMEROPREVENDA LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        1 :
        begin
          sql.Add('and PRE_DATA between '+QuotedStr(FormatDateTime('yyyy-mm-dd',data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
        end;
        2 :
        begin
          sql.Add(' and PRE_DATAFATURAMENTO between '+QuotedStr(FormatDateTime('yyyy-mm-dd',data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
        end;
        3 :
        begin
          sql.Add('and PRE_STATUS LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        4 :
        begin
          sql.Add('and PRE_NOME_CLIENTE LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        5 :
        begin
          sql.Add('and PRE_TOTAL LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        6 :
        begin
          sql.Add('and PRE_VENDEDOR LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;
        7 :
        begin
          sql.add('and PRE_MODELO LIKE '+QuotedStr('%'+edt_filtro.text+'%'));
        end;

     end;
     open;
   end;
end;

procedure TfrmPrevenda.cmb_filtroClick(Sender: TObject);
begin
MudaCmbFiltro;
end;

procedure TfrmPrevenda.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  campo : string;
begin
  inherited;
  MostraItensPrevenda;
  campo:= cxGrid1DBTableView1.Controller.FocusedColumn.Name;
if campo = 'cxGrid1DBTableView1PRE_NUMEROPREVENDA' then
begin
   cmb_filtro.ItemIndex := 0;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRE_DATA' then
begin
   cmb_filtro.ItemIndex := 1;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRE_DATAFATURAMENTO' then
begin
   cmb_filtro.ItemIndex := 2;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRE_STATUS' then
begin
   cmb_filtro.ItemIndex := 3;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRE_NOME_CLIENTE' then
begin
   cmb_filtro.ItemIndex := 4;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRE_TOTAL' then
begin
   cmb_filtro.ItemIndex := 5;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRE_VENDEDOR' then
begin
   cmb_filtro.ItemIndex := 6;
   MudaCmbFiltro;
end;
if campo = 'cxGrid1DBTableView1PRE_MODELO' then
begin
   cmb_filtro.ItemIndex := 7;
   MudaCmbFiltro;
end;
end;

procedure TfrmPrevenda.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 if Fdquery.FieldByName('Pre_status').AsString <> 'Aberto' then
    begin
      if frmSenhaAdmin = nil then
         frmSenhaAdmin := TfrmSenhaAdmin.Create(self);
         frmSenhaAdmin.ShowModal;
         if frmSenhaAdmin.Senha <> '' then
         begin
           if  VerificaAdministrador(frmSenhaAdmin.Senha) = True then
           begin

           numero := FDquery.FieldByName('PRE_NUMEROPREVENDA').AsInteger;
           Codigo := FDquery.FieldByName('pre_codigo').AsInteger;
           Subtotal := FDquery.FieldByName('PRE_SUBTOTAL').Asfloat;
           total := FDquery.FieldByName('PRE_TOTAL').Asfloat;
           Desconto := FDquery.FieldByName('PRE_DESCDINHEIRO').Asfloat;
           Status := FDquery.FieldByName('PRE_STATUS').AsString;
           if (FDquery.FieldByName('PRE_STATUS').AsString = 'Aberto') or (FDquery.FieldByName('PRE_STATUS').AsString = 'Cancelado') then
            Status := '';
           Close;
           end;
         end
         else
         begin
          Close;
         end;
         FreeandNil(frmSenhaAdmin);

    end
    else
    begin
    if application.MessageBox('Importar Pré-Venda?','Atenção!', mb_yesno + mb_iconquestion) = idyes then
     begin
     numero := FDquery.FieldByName('PRE_NUMEROPREVENDA').AsInteger;
     Codigo := FDquery.FieldByName('pre_codigo').AsInteger;
     Subtotal := FDquery.FieldByName('PRE_SUBTOTAL').Asfloat;
     total := FDquery.FieldByName('PRE_TOTAL').Asfloat;
     Desconto := FDquery.FieldByName('PRE_DESCDINHEIRO').Asfloat;
     Status := FDquery.FieldByName('PRE_STATUS').AsString;
      if (FDquery.FieldByName('PRE_STATUS').AsString = 'Aberto') or (FDquery.FieldByName('PRE_STATUS').AsString = 'Cancelado') then
      Status := '';
     close;
     end;
    end;

end;

procedure TfrmPrevenda.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
MostraItensPrevenda
end;

procedure TfrmPrevenda.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
MostraItensPrevenda
end;

procedure TfrmPrevenda.cxGrid1DBTableView1PRE_NUMEROPREVENDACustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  FStatus : string;
  begin
  inherited;

  // PEGA A SITUAÇÃO DA LINHA ATUAL
  FStatus := VarAsType( cxGrid1DBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGrid1DBTableView1PRE_STATUS.Index], varString  );


  // VERIFICA QUAL O STATUS QUE CHEGOU

  if trim(FStatus) =  'Faturado' then// primeiro status?
   begin
    ACanvas.Font.Color := clGreen;
   end;
  if trim(FStatus) =  'Cancelado' then// primeiro status?
   begin
    ACanvas.Font.Color := clRed;
   end;


end;

procedure TfrmPrevenda.edt_filtroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
     Busca;

  TNumericField(fdquery.FieldByName('PRE_NUMEROPREVENDA')).DisplayFormat := '000000';
  TNumericField(fdquery.FieldByName('PRE_TOTAL')).DisplayFormat := '###,###,##0.00';

  end;
end;

procedure TfrmPrevenda.FormShow(Sender: TObject);
begin
Codigo := 0;
MostraPreVenda;
end;

procedure TfrmPrevenda.MostraItensPrevenda;
begin
    with FDItens do
  begin
    close;
    sql.Clear;
    sql.Add('select * from TB_ITENSPREVENDA where PRE_CODIGO_PREVENDA='+QuotedStr(FDQuery.FieldByName('pre_codigo').AsString));
    open;
  end;
end;

procedure TfrmPrevenda.MostraPreVenda;
begin
  with fdquery do
 begin
  close;
  sql.Clear;
  sql.Add('select * from(select FIRST 100 * from tb_prevenda where pre_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
  sql.Add('order by (PRE_NUMEROPREVENDA) Desc)order by (PRE_NUMEROPREVENDA)');
  open;
  last;
  TNumericField(FieldByName('PRE_NUMEROPREVENDA')).DisplayFormat := '000000';
  TNumericField(FieldByName('PRE_TOTAL')).DisplayFormat := '###,###,##0.00';
 end;
end;

procedure TfrmPrevenda.MudaCmbFiltro;
begin
case cmb_filtro.ItemIndex of
    1,2 :
    begin
      Data1.Visible := true;
      DAta2.Visible := True;
      edt_filtro.Visible := false;
    end
    else
    begin
      Data1.Visible := false;
      DAta2.Visible := false;
      edt_filtro.Visible := true;
    end;
 end;
end;

procedure TfrmPrevenda.SpeedButton5Click(Sender: TObject);
begin
MostraPreVenda;
end;

procedure TfrmPrevenda.SpeedButton6Click(Sender: TObject);
begin
 Busca;

  TNumericField(fdquery.FieldByName('PRE_NUMEROPREVENDA')).DisplayFormat := '000000';
  TNumericField(fdquery.FieldByName('PRE_TOTAL')).DisplayFormat := '###,###,##0.00';
end;

function TfrmPrevenda.VerificaAdministrador(Senha: String) : Boolean;
var
UsuM : TUsuariosModel;
Crip : String;
q1, q2 : TFDQuery;
begin
Result := False;
UsuM := TUsuariosModel.create;
q1 := TFDQuery.Create(nil);
q1.Connection := dm.Con;


q2 := TFDQuery.Create(nil);
q2.Connection := dm.Con;

 try
   Crip := UsuM.Criptografar(Senha);
   with q1 do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_USUARIOS where USU_SENHA='+QuotedStr(Crip));
     open;
     if not IsEmpty then
     begin
       while not eof do
       begin
         q2.Close;
         q2.SQL.Clear;
         q2.SQL.Add('select * from TB_PERMISSOES where PER_CODIGO='+QuotedStr(q1.FieldByName('USU_CODIGO_NIVEL').AsString));
         q2.open;
         if q2.FieldByName('PER_ADMINISTRADOR').AsString = 'True' then
            begin
             Result := True;
             q1.Last;
            end;

         next;
       end;
     end;
   end;
 finally
   FreeandNil(UsuM);
   Freeandnil(q1);
   Freeandnil(q2);
 end;
end;

end.
