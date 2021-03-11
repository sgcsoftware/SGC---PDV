unit MiniSoft.View.DeletaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmDeletaProduto = class(TForm)
    Edit1: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FAcao : String;
  end;

var
  FrmDeletaProduto: TFrmDeletaProduto;

implementation

{$R *.dfm}

procedure TFrmDeletaProduto.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     begin
       FAcao := Edit1.Text;
       close;
     end;
end;

procedure TFrmDeletaProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
   close;
end;

end.
