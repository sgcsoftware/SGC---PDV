unit MiniSoft.View.SelecionaImpressora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Printers;

type
  TFrmSelecionaImpressora = class(TForm)
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecionaImpressora: TFrmSelecionaImpressora;

implementation

{$R *.dfm}

uses ConfigFile.Model;

procedure TFrmSelecionaImpressora.FormShow(Sender: TObject);
begin
 ComboBox1.Clear;
 ComboBox1.Items.AddStrings(Printer.Printers);
 ComboBox2.Items.AddStrings(Printer.Printers);
 ComboBox1.Text := ConfigIni.ImpressoraPadrao;
 ComboBox2.Text := ConfigIni.ImpressoraCarne;
end;

procedure TFrmSelecionaImpressora.SpeedButton1Click(Sender: TObject);
begin
ConfigIni.ImpressoraPadrao  := ComboBox1.Text;
ConfigIni.ImpressoraCarne  := ComboBox2.Text;
Close;
end;

procedure TFrmSelecionaImpressora.SpeedButton2Click(Sender: TObject);
begin
Close;

end;

end.
