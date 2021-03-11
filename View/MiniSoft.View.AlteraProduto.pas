unit MiniSoft.View.AlteraProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  MiniSoft.Funcoes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Conexao, uDWConstsData, uRESTDWPoolerDB;

type
  TfrmAlteraProduto = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
   function VerificaQuantidadeEstoqueEdita(CodigoProd : Integer; qtdVendaNovo, qtdVendaAntigo : Double) :  Boolean;
  public
    { Public declarations }
    Codigo : Integer;
    FCodigoProduto : integer;
    FQtd : double;
  end;

var
  frmAlteraProduto: TfrmAlteraProduto;
  qtdEdita : Double;
implementation

{$R *.dfm}

uses MiniSoft.View.Principal;

procedure TfrmAlteraProduto.Button1Click(Sender: TObject);
var
q1 : TFDquery;
f : TFuncoesGerais;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;


  f := TFuncoesGerais.create;
  try
    with q1, f do
    begin
      close;
      sql.Clear;
      sql.Add('update TB_NFCEITENS set');
      sql.Add('NFC_PROD_QCOM = :NFC_PROD_QCOM');
      sql.Add(',NFC_PROD_VUNCOM = :NFC_PROD_VUNCOM');
      sql.Add(',NFC_PROD_VPROD = :NFC_PROD_VPROD');
      sql.Add('where nfc_codigo =:nfc_codigo');
      ParamByName('nfc_codigo').AsInteger := codigo;
      ParamByName('NFC_PROD_QCOM').AsFloat := RetDec(edit1.Text);
      ParamByName('NFC_PROD_VUNCOM').AsFloat := RetDec(edit2.Text);
      ParamByName('NFC_PROD_VPROD').AsFloat := RetDec(edit3.Text);
      ExecSQL();
      //q1.ApplyUpdates;
    end;
  finally
    FreeandNil(q1);
    FreeAndNil(f);
  end;

  close;
end;

procedure TfrmAlteraProduto.Button1KeyPress(Sender: TObject; var Key: Char);
begin
 if key =#27 then
    close;
end;

procedure TfrmAlteraProduto.Edit1Exit(Sender: TObject);
var
f : TFuncoesGerais;
qtd, uni, total : double;
begin


   if (edit1.Text = '') or (edit1.Text = '0') then
       edit1.Text := '1';

 if frmPrincipal.Global.PRI_PRODUTOS_CONF2 = 'True' then
  begin
   if  VerificaQuantidadeEstoqueEdita(FCodigoProduto, f.RetDec(edit1.Text),FQtd) = false then
        begin
          ShowMessage('Quantidade indisponível!');
          abort;
        end;
  end;

   f := TFuncoesGerais.create;
   try
    qtd := f.RetDec(edit1.Text);
    uni := f.RetDec(edit2.Text);
    total := f.RetDec(edit3.Text);
    total := qtd * uni;
    Edit1.Text := formatfloat('###,###,##0.00', f.RetDec(edit1.Text));
    edit3.Text := formatfloat('###,###,##0.00', total);
   finally
     FreeandNil(f);
   end;
end;

procedure TfrmAlteraProduto.Edit2Exit(Sender: TObject);
var
f : TFuncoesGerais;
qtd, uni, total : double;
begin

   f := TFuncoesGerais.create;
   try
    qtd := f.RetDec(edit1.Text);
    uni := f.RetDec(edit2.Text);
    total := f.RetDec(edit3.Text);
    total := qtd * uni;
    Edit2.Text := formatfloat('###,###,##0.00', f.RetDec(edit2.Text));
    edit3.Text := formatfloat('###,###,##0.00', total);
   finally
     FreeandNil(f);
   end;
end;

procedure TfrmAlteraProduto.Edit3Exit(Sender: TObject);
var
f : TFuncoesGerais;
qtd, uni, total : double;
begin

   f := TFuncoesGerais.create;
   try
    qtd := f.RetDec(edit1.Text);
    uni := f.RetDec(edit2.Text);
    total := f.RetDec(edit3.Text);
    uni := total / qtd;
    Edit2.Text := formatfloat('###,###,##0.00', uni);
    edit3.Text := formatfloat('###,###,##0.00', f.RetDec(edit3.Text));
   finally
     FreeandNil(f);
   end;
end;

procedure TfrmAlteraProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmAlteraProduto.FormShow(Sender: TObject);
var
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_NFCEITENS where nfc_codigo='+QuotedStr(inttostr(Codigo)));
       open;

       edit1.Text := formatfloat('###,###,##0.00',q1.FieldByName('NFC_PROD_QCOM').AsFloat);
       edit2.Text := formatfloat('###,###,##0.00',q1.FieldByName('NFC_PROD_VUNCOM').AsFloat);
       edit3.Text := formatfloat('###,###,##0.00',q1.FieldByName('NFC_PROD_VPROD').AsFloat);
       qtdEdita := q1.FieldByName('NFC_PROD_QCOM').AsFloat;
       Panel1.Caption := q1.FieldByName('NFC_PROD_XPROD').AsString;
     end;
   finally
     FreeandNil(q1);
   end;
end;

function TfrmAlteraProduto.VerificaQuantidadeEstoqueEdita(CodigoProd: Integer;
  qtdVendaNovo, qtdVendaAntigo: Double): Boolean;
var
x : double;
q1 : TFDQuery;
begin
  q1 := TFDQuery.Create(nil);
  q1.Connection := dm.con;
  try
    with q1 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from tb_produtos where pro_codigo='+QuotedStr(inttostr(CodigoProd)));
      open;
      x := FieldByName('pro_quantidade').AsFloat - qtdVendaNovo + qtdVendaAntigo;
      if x < 0 then
      Result := false;
      if x >= 0 then
      Result := true;

    end;
  finally
    FreeandNil(q1);
  end;
end;
end.
