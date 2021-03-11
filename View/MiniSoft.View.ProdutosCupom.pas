unit MiniSoft.View.ProdutosCupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Conexao,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB,
  Vcl.Grids, Vcl.DBGrids, MiniSoft.Funcoes;

type
  TfrmProdutoCupom = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DSCupom: TDataSource;
    FDCupom: TRESTDWClientSQL;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure TotalCompra;
  public
    { Public declarations }
  end;

var
  frmProdutoCupom: TfrmProdutoCupom;

implementation

{$R *.dfm}

uses MiniSoft.View.NFCe, MiniSoft.View.Principal;

procedure TfrmProdutoCupom.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DELETE then
  begin
   if application.MessageBox(pchar('Excluir o Item '+FDCupom.FieldByName('NFC_PROD_XPROD').AsString),'Atenção', mb_yesno + mb_iconquestion) = idyes then
   begin
    FDCupom.Delete;
    FDCupom.ApplyUpdates;
   end;
  end;
end;

procedure TfrmProdutoCupom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão

  end;
end;

procedure TfrmProdutoCupom.FormShow(Sender: TObject);
begin
 with FDCupom do
    begin
      close;
      sql.Clear;
      sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(frmPrincipal.lb_NVenda.Caption));
      open;
    end;
end;

procedure TfrmProdutoCupom.SpeedButton1Click(Sender: TObject);
var
q1 : TFDquery;
f : TFuncoesGerais;
qtd, codigo : String;
begin
    with FDCupom do
    begin
     // close;
      //sql.Clear;
     // sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE ='+QuotedStr(inttostr(frmNFCe.Codigo)));
      //open;
      first;
      frmPrincipal.Memo1.Clear;
      while not FDCupom.Eof do
        begin

          frmPrincipal.AddItemCupom(FDCupom.FieldByName('NFC_PROD_CEAN').AsString,formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_QCOM').Asfloat),formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_VUNCOM').Asfloat),formatfloat('###,###,##0.000',FDCupom.FieldByName('NFC_PROD_VPROD').Asfloat),FDCupom.FieldByName('NFC_PROD_XPROD').AsString,'', FDCupom.FieldByName('NFC_ORD').AsString, FDCupom.FieldByName('NFC_PROD_UCOM').AsString);
          FDCupom.Next;
        end;
      TotalCompra;


      TNumericField(FieldByName('NFC_PROD_QCOM')).DisplayFormat := '###,###,##0.000';
      TNumericField(FieldByName('NFC_PROD_VPROD')).DisplayFormat := '###,###,##0.00';
      TNumericField(FieldByName('NFC_PROD_VUNCOM')).DisplayFormat := '###,###,##0.00';
      q1 := TFDquery.Create(nil);
      q1.Connection := dm.con;

      f := TFuncoesGerais.create;
      try
       with q1 do
       begin
        close;
        sql.Clear;
        sql.Add('select * from TB_NFCE where NFC_CODIGO ='+QuotedStr(FDCupom.FieldByName('nfc_codigo').AsString));
        open;
        frmPrincipal.lb_NumeroVenda.Caption := inttostr(FieldByName('NFC_IDE_NNF').asInteger);
        //frmPrincipal.lb_NVenda.Caption := inttostr(frmNFCe.Codigo);

       end;


      finally
      FreeandNil(q1);
      FreeandNil(f);
      end;


    end;

   Close;

end;

procedure TfrmProdutoCupom.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

procedure TfrmProdutoCupom.SpeedButton3Click(Sender: TObject);
begin
  if application.MessageBox(pchar('Excluir o Item '+FDCupom.FieldByName('NFC_PROD_XPROD').AsString),'Atenção', mb_yesno + mb_iconquestion) = idyes then
   begin
    FDCupom.Delete;

   end;
end;

procedure TfrmProdutoCupom.TotalCompra;
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
  frmPrincipal.pn_totalaPagar.Caption := formatfloat('###,###,##0.00', Total);
  frmPrincipal.qtdItens.Caption := 'Qtd Itens :'+inttostr(Qtd);
 // frmPrincipal.idProdCupom := FDCupom.FieldByName('nfc_codigo').AsInteger;
end;

end.
