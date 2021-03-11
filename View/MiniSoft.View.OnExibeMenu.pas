unit MiniSoft.View.OnExibeMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmOnExibeMenu = class(TForm)
    Panel2: TPanel;
    codigo: TLabel;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    procedure FormShow(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOnExibeMenu: TfrmOnExibeMenu;

implementation

{$R *.dfm}

procedure TfrmOnExibeMenu.FormShow(Sender: TObject);
begin
    ListBox1.SetFocus;
  if ListBox1.Items.Count > 0 then
    ListBox1.ItemIndex := 0;
end;

procedure TfrmOnExibeMenu.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Return then
  begin
    ModalResult := mrOk;

  end;
end;

end.
