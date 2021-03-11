unit MiniSoft.View.ConfTEF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  ACBrTEFDClass;

type
  TfrmConfTEF = class(TForm)
    Panel2: TPanel;
    codigo: TLabel;
    cmbTipoTEF: TComboBox;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    grpConfiguracoes: TGroupBox;
    grpboxSitef: TGroupBox;
    edtSitefIP: TLabeledEdit;
    edtSitefTerminal: TLabeledEdit;
    edtSitefPorta: TLabeledEdit;
    edtSitefLoja: TLabeledEdit;
    Button1: TButton;
    cmbParametros: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure cmbTipoTEFChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GravaTEF;
    procedure LerTEF;
  end;

var
  frmConfTEF: TfrmConfTEF;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal, ConfigFile.Model, Funcao.GenericEnum;

procedure TfrmConfTEF.Button1Click(Sender: TObject);
begin
  frmPrincipal.TEF;
end;

procedure TfrmConfTEF.cmbTipoTEFChange(Sender: TObject);
begin
 grpConfiguracoes.Enabled := not (cmbTipoTEF.ItemIndex = - 1) and not (cmbTipoTEF.ItemIndex = 0);
end;

procedure TfrmConfTEF.FormShow(Sender: TObject);
begin
LerTEF;
end;

procedure TfrmConfTEF.GravaTEF;
var
  LModelo   : TEnum<TACBrTEFDTipo>;
  LTEFModelo: TACBrTEFDTipo;
begin
  ConfigIni.SitefIP          := edtSitefIP.Text;
  ConfigIni.SitefTerminal    := edtSitefTerminal.Text;
  ConfigIni.SitefLoja        := edtSitefLoja.Text;
  ConfigIni.SitefParametro   := Trim(cmbParametros.Items.Text);
  ConfigIni.SitefPortaPinPad := edtSitefPorta.Text;
  ConfigIni.TEF              := not (cmbTipoTEF.ItemIndex = - 1) and not (cmbTipoTEF.ItemIndex = 0);

  LModelo.StrToEnum(cmbTipoTEF.Items[ cmbTipoTEF.ItemIndex ], LTEFModelo);
  ConfigIni.TEFModelo := LTEFModelo;
end;

procedure TfrmConfTEF.LerTEF;
var
  LModelo   : TEnum<TACBrTEFDTipo>;
  LTEFModelo: string;
begin
  edtSitefIP.Text          := ConfigIni.SitefIP;
  edtSitefTerminal.Text    := ConfigIni.SitefTerminal;
  edtSitefLoja.Text        := ConfigIni.SitefLoja;
  cmbParametros.Items.Text := ConfigIni.SitefParametro;
  edtSitefPorta.Text       := ConfigIni.SitefPortaPinPad;
  if ConfigIni.TEF = false then
    cmbTipoTEF.ItemIndex := 0;

  LTEFModelo           := LModelo.EnumToStr(ConfigIni.TEFModelo);
  cmbTipoTEF.ItemIndex := cmbTipoTEF.Items.IndexOf(LTEFModelo);
end;

procedure TfrmConfTEF.SpeedButton1Click(Sender: TObject);
begin
  GravaTEF;
  frmPrincipal.TEF;
end;

procedure TfrmConfTEF.SpeedButton2Click(Sender: TObject);
begin
Close
end;

end.
