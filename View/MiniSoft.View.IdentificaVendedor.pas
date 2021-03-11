unit MiniSoft.View.IdentificaVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Conexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB;

type
  TfrmIdentificaVendedor = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     Vendedor : String;
     Codigo : Integer;
    { Public declarations }
  end;

var
  frmIdentificaVendedor: TfrmIdentificaVendedor;
  Liberado : String;
implementation

{$R *.dfm}

procedure TfrmIdentificaVendedor.Button1Click(Sender: TObject);
begin
 if Liberado = 'Sim' then
    Close;
end;

procedure TfrmIdentificaVendedor.Edit1Exit(Sender: TObject);
var
q1 : TFdquery;
begin
  if (edit1.Text  = '') or (edit1.Text  = '0') then
      begin
        Abort;
      end;

  q1 := TFdquery.Create(nil);
  q1.Connection := dm.Con;

  try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from tb_usuarios where usu_codigo='+QuotedStr(edit1.Text));
       open;
       if not IsEmpty then
       begin
       Panel1.Caption := q1.FieldByName('USU_NOME_COMPLETO').AsString;
       codigo := q1.FieldByName('USU_CODIGO').AsInteger;
       Vendedor := q1.FieldByName('USU_lOGIN').AsString;
       Liberado := 'Sim';
       end
       else
       begin
       panel1.Caption := 'Vendedor não Localizado!';
       Liberado := 'Nao';
       edit1.SetFocus;
       end;
     end;
  finally
    FreeandNil(q1);
  end;
  Edit1.Text := formatfloat('0000', strtofloat(edit1.Text));
end;

procedure TfrmIdentificaVendedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then
     abort;
end;

procedure TfrmIdentificaVendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmIdentificaVendedor.FormShow(Sender: TObject);
begin
 edit1.SetFocus;
end;

end.
