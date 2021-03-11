unit MiniSoft.View.SenhaAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmSenhaAdmin = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Senha : String;
  end;

var
  frmSenhaAdmin: TfrmSenhaAdmin;

implementation

{$R *.dfm}

procedure TfrmSenhaAdmin.Button1Click(Sender: TObject);
begin
Senha := edit1.Text;
Close;
end;

procedure TfrmSenhaAdmin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_f4 then
    abort;
end;

end.
