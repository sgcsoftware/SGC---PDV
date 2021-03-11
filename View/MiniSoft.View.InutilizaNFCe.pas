unit MiniSoft.View.InutilizaNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  MiniSoft.Model.Nfce, MiniSoft.View.Principal, MiniSoft.View.NFCe;

type
  TfrmInutilizaNFCE = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_ninicial: TEdit;
    edt_nfinal: TEdit;
    edt_serie: TEdit;
    edt_modelo: TEdit;
    edt_ano: TEdit;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInutilizaNFCE: TfrmInutilizaNFCE;

implementation

{$R *.dfm}

procedure TfrmInutilizaNFCE.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmInutilizaNFCE.FormShow(Sender: TObject);
begin
memo1.Clear;
end;

procedure TfrmInutilizaNFCE.SpeedButton1Click(Sender: TObject);
var
NFCe : TNfceModel;
begin
   NFCe := TNfceModel.create;
   try
   NFce.LerConfNfce;
   if NFce.InutilizaNFCe(memo1.Text,edt_ano.Text, edt_ninicial.Text, edt_nfinal.Text, edt_serie.Text, edt_modelo.Text,0) = True then
   close;
   finally
     FreeandNil(NFCe);
   end;
end;

end.
