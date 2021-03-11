unit MiniSoft.View.ConfNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, ConfigFile.Model;

type
  TFrmConfNfe = class(TForm)
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    gbxRetornoEnvio: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    seTimeOut: TSpinEdit;
    lTimeOut: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfNfe: TFrmConfNfe;

implementation

{$R *.dfm}

procedure TFrmConfNfe.FormShow(Sender: TObject);
begin
  seTimeOut.Text := ConfigIni.TimeOut ;
  edtTentativas.Text := ConfigIni.Tentativas ;
  edtIntervalo.Text := ConfigIni.Intevalo;
  edtAguardar.Text := ConfigIni.Aguardar;
end;

procedure TFrmConfNfe.SpeedButton1Click(Sender: TObject);
begin
  ConfigIni.TimeOut   := seTimeOut.Text;
  ConfigIni.Tentativas := edtTentativas.Text;
  ConfigIni.Intevalo := edtIntervalo.Text;
  ConfigIni.Aguardar := edtAguardar.Text;
end;

procedure TFrmConfNfe.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

end.
