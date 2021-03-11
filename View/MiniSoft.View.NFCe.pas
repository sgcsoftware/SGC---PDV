unit MiniSoft.View.NFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, Vcl.StdCtrls,
  Vcl.Buttons, RzLabel, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
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
  cxDBData, Vcl.Menus, cxGridLevel, cxGridChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses, cxLocalization, Conexao,
  MiniSoft.View.Principal, RzButton, MiniSoft.Model.Nfce, iniFiles, dxDateRanges,
  uDWConstsData, uRESTDWPoolerDB, MiniSoft.Controller.HistoricoDeProduto,
  MiniSoft.Model.HistoricoDeProduto, MiniSoft.Funcoes, MiniSoft.Model.Produtos,
  MiniSoft.Model.NfceItens, MiniSoft.Controller.NfceItens;

type
  TfrmNFCe = class(TForm)
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
    Data1: TRzDateTimeEdit;
    Data2: TRzDateTimeEdit;
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
    cxGrid1ChartView1: TcxGridChartView;
    cxGrid1Level1: TcxGridLevel;
    popmMENU: TPopupMenu;
    N3Histrico1: TMenuItem;
    N1: TMenuItem;
    N2ItensdoCupom1: TMenuItem;
    cxGrid1DBTableView1NFC_IDE_NNF: TcxGridDBColumn;
    cxGrid1DBTableView1NFC_IDE_DHEMI: TcxGridDBColumn;
    cxGrid1DBTableView1NFC_DEST_CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1NFC_DEST_XNOME: TcxGridDBColumn;
    cxGrid1DBTableView1NFC_TOTAL_VPROD: TcxGridDBColumn;
    cxGrid1DBTableView1NFC_TOTAL_VNF: TcxGridDBColumn;
    cxGrid1DBTableView1NFC_IDE_ID: TcxGridDBColumn;
    cxGrid1DBTableView1NFC_XMOTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1NFC_USUARIO: TcxGridDBColumn;
    btn_menu: TRzMenuButton;
    EnviarContigncia1: TMenuItem;
    EnviaporEmail1: TMenuItem;
    Excluir1: TMenuItem;
    cxGrid1DBTableView1NFC_TIPO: TcxGridDBColumn;
    FDquery: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cmb_filtroClick(Sender: TObject);
    procedure N3Histrico1Click(Sender: TObject);
    procedure cxGrid1DBTableView1NFC_IDE_NNFCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure N2ItensdoCupom1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure EnviarContigncia1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure MostraVendas;
    procedure MudaCmb;
    procedure AjustaNFce;
    procedure ExcluiItem;
  public
    { Public declarations }
    Codigo : Integer;
    FnVenda : integer;
    FContingencia : string;
    procedure EnviaContigência;
    procedure Busca;
    procedure MostraVendasContingencia;
  end;

var
  frmNFCe: TfrmNFCe;
  tipo : String;
implementation

{$R *.dfm}

uses MiniSoft.View.InutilizaNFCe;

{ TfrmNFCe }

procedure TfrmNFCe.AjustaNFce;
var
q1 : TFDQuery;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;
   q1.CachedUpdates := true;
   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.add('select * from TB_NFCE where nfc_tipo is null');
       open;
       if not IsEmpty then
       begin
         while not eof do
         begin
           edit;
           FieldByName('nfc_tipo').AsString := 'F';
           post;
           ApplyUpdates;
           CommitUpdates;
           next;
         end;
       end;
     end;
   finally

   end;
end;

procedure TfrmNFCe.Busca;
begin
   with FDquery do
   begin
     close;
     sql.Clear;
     sql.Add('select * from tb_nfce where nfc_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
     case cmb_filtro.ItemIndex of
        0 :
        begin
           sql.Add('and NFC_IDE_NNF ='+QuotedStr(edt_filtro.Text));
        end;
        1 :
        begin
          sql.Add('and NFC_DEST_CNPJ ='+QuotedStr(edt_filtro.Text));
        end;
        2 :
        begin
          sql.Add('and NFC_DEST_XNOME like'+QuotedStr('%'+edt_filtro.Text+'%'));
        end;
        3 :
        begin
          sql.Add('and NFC_IDE_DHEMI between '+QuotedStr(FormatDateTime('yyyy-mm-dd',data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
        end;
        4 :
        begin

        end;
        5 :
        begin
          sql.Add('and NFC_XMOTIVO like'+QuotedStr('%'+edt_filtro.Text+'%'));
        end;
     end;
     open;
     TNumericField(fdquery.FieldByName('NFC_IDE_NNF')).DisplayFormat := '000000';
    TNumericField(fdquery.FieldByName('NFC_TOTAL_VPROD')).DisplayFormat := '###,###,##0.00';
    TNumericField(fdquery.FieldByName('NFC_TOTAL_VNF')).DisplayFormat := '###,###,##0.00';
   end;
end;

procedure TfrmNFCe.cmb_filtroClick(Sender: TObject);
begin
MudaCmb;
end;

procedure TfrmNFCe.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  NFCe : TNfceModel;
  ano : string;
begin
 if (FDQuery.FieldByName('NFC_XMOTIVO').AsString <> 'Autorizado o uso da NF-e') and (FDQuery.FieldByName('NFC_XMOTIVO').AsString <> 'Cancelado') and (FDQuery.FieldByName('NFC_XMOTIVO').AsString <> 'Inutilizado') then
 begin
 if application.MessageBox('Reabrir Venda?','Atenção!',mb_yesno + mb_iconquestion) = idyes then
    begin
      Codigo := FDQuery.FieldByName('nfc_codigo').AsInteger;
      close;
    end;
 end;
  if (FDQuery.FieldByName('NFC_XMOTIVO').AsString = 'Contingência') then
 begin
 if application.MessageBox('Reabrir Venda em Contingência? Essa numeração será inutilizada!','Atenção!',mb_yesno + mb_iconquestion) = idyes then
    begin
     FContingencia := '';
     try
      NFCe := TNfceModel.create;
      try
      ano := FormatDateTime('yyyy', now );
      NFce.LerConfNfce;
       if NFce.InutilizaNFCe('Sistema Pulou Sequencia',ano, FDquery.FieldByName('NFC_IDE_NNF').AsString, FDquery.FieldByName('NFC_IDE_NNF').AsString, FDquery.FieldByName('NFC_IDE_SERIE').AsString, '65', FDquery.FieldByName('nfc_codigo').AsInteger) = True then
       close;
       finally
        FreeandNil(NFCe);
        FContingencia := 's';
       end;
      except
        FContingencia := '';
     end;

       FnVenda := FDQuery.FieldByName('NFC_IDE_NNF').AsInteger;
       Codigo := FDQuery.FieldByName('nfc_codigo').AsInteger;
       close;
    end;
 end;
end;

procedure TfrmNFCe.cxGrid1DBTableView1NFC_IDE_NNFCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  FStatus, Ftipo : string;

  begin
  inherited;

  // PEGA A SITUAÇÃO DA LINHA ATUAL
  FStatus := VarAsType( cxGrid1DBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGrid1DBTableView1NFC_XMOTIVO.Index], varString  );
  Ftipo := VarAsType( cxGrid1DBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[cxGrid1DBTableView1NFC_TIPO.Index], varString  );


  // VERIFICA QUAL O STATUS QUE CHEGOU

 if Ftipo = 'R' then
   begin
     ACanvas.Font.Color := clTeal;;
   end
 else
 begin
  if trim(FStatus) =  'Autorizado o uso da NF-e' then// primeiro status?
   begin
    ACanvas.Font.Color := clBlue;
   end;
  if trim(FStatus) =  'Cancelado' then// primeiro status?
   begin
    ACanvas.Font.Color := clRed;
   end;
     if trim(FStatus) =  'Inutilizado' then// primeiro status?
   begin
    ACanvas.Font.Color := clGray;
   end;
        if trim(FStatus) =  'Contingência' then// primeiro status?
   begin
    ACanvas.Font.Color := clBlue;
   end;
 end;


end;

procedure TfrmNFCe.EnviaContigência;
var
StatusNota : integer;
ChaveNFe, ProtocoloNFe, caminhoxml, caminho2 : string;
caminho : Tinifile;
NFCe : TNfceModel;
begin
FDQuery.Close;
FDQuery.SQL.Clear;
FDQuery.SQL.Add('select * from TB_NFCE where nfc_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
FDQuery.SQL.add('and NFC_XMOTIVO='+QuotedStr('Contingência'));
FDQuery.Open;
FDQuery.First;

while not FDQuery.Eof do
 begin
   NFCe := TNfceModel.create;
   NFCe.LerConfNfce;
  try
   try
   caminho := TIniFile.Create(GetCurrentDir + '\conf.ini');
      if caminho.ReadString('NFC-e','mapeamentoxml','') = '' then
         begin
           caminho2 := GetCurrentDir + '\nfce\xml';
         end;
        if caminho.ReadString('NFC-e','mapeamentoxml','') <> '' then
         begin
           caminhoxml := caminho.ReadString('NFC-e','mapeamentoxml','');
           caminho2:= caminhoxml;
         end;

      dm.ACBrNFe.NotasFiscais.LoadFromFile(caminho2 +'\'+FDQuery.FieldByName('NFC_IDE_ID').AsString+'-nfe.xml');
      dm.ACBrNFe.Enviar(FormatDateTime('ddmmyyyyhhmmss', Now), false, true);
      StatusNota := dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat;
      case StatusNota of
        100, 150:
          begin
            ChaveNFe:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.chNFe;
            ProtocoloNFe := dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
            FDQuery.Edit;
            FDQuery.FieldByName('NFC_XMOTIVO').AsString :='Autorizado o uso da NF-e';
            FDQuery.FieldByName('NFC_IDE_ID').AsString := ChaveNFe;
            FDQuery.FieldByName('NFC_PROCNFE_NPROT').AsString := ProtocoloNFe;
            FDQuery.Post;
            FDquery.ApplyUpdates;
            FDquery.CommitUpdates;
            FDQuery.Next;
          end;
      end;
   except
      FDQuery.Next;
   end;
  finally
    FreeandNil(NFCe);
  end;
 end;
end;

procedure TfrmNFCe.EnviarContigncia1Click(Sender: TObject);
begin
EnviaContigência;
frmprincipal.AvisaNotasEmContingencia;
end;

procedure TfrmNFCe.ExcluiItem;
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


     q1 := TFDquery.create(nil);
     q1.Connection := dm.Con;
     prod := TFDquery.create(nil);
     prod.Connection := dm.Con;
     prod.CachedUpdates :=true;
     f := TFuncoesGerais.create;
     HistM := THistoricoDeProdutoModel.create;
     HistC := THistoricoDeProdutoController.create;
    try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(FDquery.FieldByName('nfc_codigo').AsString));
       open;
       if not IsEmpty then
       begin
        while not q1.Eof do
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

        end;



          end;
     end;


    finally
      FreeandNil(q1);
      FreeandNil(f);
      FreeandNil(prod);
      FreeandNil(HistM);
      FreeandNil(HistC);
    end;


end;

procedure TfrmNFCe.Excluir1Click(Sender: TObject);
begin

 if (FDquery.FieldByName('nfc_xmotivo').AsString = 'Aberto') and (FDquery.FieldByName('nfc_ide_nnf').AsInteger = 0) then
 begin
   if application.MessageBox('Deletar Venda?','Atenção!', mb_yesno + mb_iconquestion) = idyes then
    begin
     ExcluiItem;
     Fdquery.Delete;
     FDquery.ApplyUpdates;
     FDquery.CommitUpdates;
    end;

 end;
  if (FDquery.FieldByName('nfc_xmotivo').AsString = 'Aberto') and (FDquery.FieldByName('nfc_ide_nnf').AsInteger <> 0) then
 begin
   ShowMessage('Essa Venda não Pode ser Deletada, Favor inutilizar!');
 end;


end;

procedure TfrmNFCe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ((Shift = [ssCtrl]) and (key = vk_f1)) then
    begin
     tipo := 'R';
     MostraVendas;
    end;
  if ((Shift = [ssCtrl]) and (key = vk_f2)) then
    begin
     tipo := 'F';
     MostraVendas;
    end;
end;

procedure TfrmNFCe.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
   close;
end;

procedure TfrmNFCe.FormShow(Sender: TObject);
begin
tipo := 'F';
AjustaNFce;
Codigo := 0;
Data1.Date := now;
data2.Date := now;
if FContingencia = 's' then
 MostraVendasContingencia
 else
 MostraVendas;
end;

procedure TfrmNFCe.MostraVendas;
begin
  with fdquery do
  begin
    close;
    sql.Clear;
    sql.Add('select * from TB_NFCE where NFC_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
    sql.Add('and NFC_IDE_DHEMI between '+QuotedStr(FormatDateTime('yyyy-mm-dd',data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
    sql.Add('and nfc_tipo='+QuotedStr(tipo));
    sql.Add('order by NFC_IDE_NNF');
    open;
    last;

    TNumericField(fdquery.FieldByName('NFC_IDE_NNF')).DisplayFormat := '000000';
    TNumericField(fdquery.FieldByName('NFC_TOTAL_VPROD')).DisplayFormat := '###,###,##0.00';
    TNumericField(fdquery.FieldByName('NFC_TOTAL_VNF')).DisplayFormat := '###,###,##0.00';
  end;
end;

procedure TfrmNFCe.MostraVendasContingencia;
begin
FDQuery.Close;
FDQuery.SQL.Clear;
FDQuery.SQL.Add('select * from TB_NFCE where nfc_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
FDQuery.SQL.add('and NFC_XMOTIVO='+QuotedStr('Contingência'));
FDQuery.Open;

TNumericField(fdquery.FieldByName('NFC_IDE_NNF')).DisplayFormat := '000000';
TNumericField(fdquery.FieldByName('NFC_TOTAL_VPROD')).DisplayFormat := '###,###,##0.00';
TNumericField(fdquery.FieldByName('NFC_TOTAL_VNF')).DisplayFormat := '###,###,##0.00';
end;

procedure TfrmNFCe.MudaCmb;
begin
  case cmb_filtro.ItemIndex of
      3 :
      begin
        data1.Visible := true;
        data2.Visible := true;
        edt_filtro.Visible := false;
      end
      else
      begin
        data1.Visible := false;
        data2.Visible := false;
        edt_filtro.Visible := true;
      end;
  end;
end;

procedure TfrmNFCe.N1Click(Sender: TObject);
begin
 if frmInutilizaNFCE = nil then
    frmInutilizaNFCE := TfrmInutilizaNFCE.Create(nil);
    frmInutilizaNFCE.ShowModal;
    FreeandNil(frmInutilizaNFCE);
end;

procedure TfrmNFCe.N2ItensdoCupom1Click(Sender: TObject);
var
NFceM : TNfceModel;
begin
   NFceM := TNfceModel.create;
   try
    try
     NFceM.LerConfNfce;
     if fdquery.FieldByName('NFC_TIPO').AsString = 'F' then
      NFceM.VisualisaNFCe(FDQuery.FieldByName('NFC_IDE_ID').AsString);
     if fdquery.FieldByName('NFC_TIPO').AsString = 'R' then
      NFceM.VisualizaNFCe2(FDQuery.FieldByName('NFC_IDE_NNF').AsString,FDQuery.FieldByName('NFC_CODIGO').AsString);
    except
     ShowMessage('Nota não localizada!');
    end;
   finally
     FreeandNil(NFceM);
   end;
end;

procedure TfrmNFCe.N3Histrico1Click(Sender: TObject);
var
NFceM : TNfceModel;
begin
   NFceM := TNfceModel.create;
   try
     NFceM.LerConfNfce;
     if FDquery.FieldByName('NFC_TIPO').AsString = 'R' then
        NFceM.CancalNFCe2(FDquery.FieldByName('nfc_codigo').AsString)
        else
     NFceM.CancelaNFCe(FDQuery.FieldByName('NFC_IDE_ID').AsString,FDQuery.FieldByName('NFC_PROCNFE_NPROT').AsString,
     FDQuery.FieldByName('NFC_IDE_NNF').AsString);
   finally
     FreeandNil(NFceM);
     FDQuery.Refresh;
   end;
end;

procedure TfrmNFCe.SpeedButton5Click(Sender: TObject);
begin
  MostraVendas;
end;

procedure TfrmNFCe.SpeedButton6Click(Sender: TObject);
begin
  Busca;
end;

end.
