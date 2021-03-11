unit MiniSoft.View.Aparencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxColorPicker, Vcl.StdCtrls;

type
  TfrmApresentacao = class(TForm)
    btn_sair: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure btn_sairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApresentacao: TfrmApresentacao;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal;

procedure TfrmApresentacao.btn_sairClick(Sender: TObject);
begin
frmPrincipal.Panel9.Color := $002828FF ;
frmPrincipal.pn_totalaPagar.Color := $002828FF ;
frmPrincipal.Panel2.Color := $002828FF ;
end;

procedure TfrmApresentacao.Button1Click(Sender: TObject);
begin
frmPrincipal.Panel9.Color := $00006400 ;
frmPrincipal.pn_totalaPagar.Color := $00006400 ;
frmPrincipal.Panel2.Color := $00006400 ;
end;

procedure TfrmApresentacao.Button2Click(Sender: TObject);
begin
frmPrincipal.Panel9.Color := $00515151 ;
frmPrincipal.pn_totalaPagar.Color :=$00515151 ;
frmPrincipal.Panel2.Color := $00515151 ;
end;

procedure TfrmApresentacao.Button3Click(Sender: TObject);
begin
frmPrincipal.Panel9.Color := $00FF3E3E ;
frmPrincipal.pn_totalaPagar.Color :=$00FF3E3E ;
frmPrincipal.Panel2.Color := $00FF3E3E ;
end;

procedure TfrmApresentacao.Button4Click(Sender: TObject);
begin
frmPrincipal.Panel9.Color := $0000D2D2 ;
frmPrincipal.pn_totalaPagar.Color :=$0000D2D2 ;
frmPrincipal.Panel2.Color := $0000D2D2 ;
end;

procedure TfrmApresentacao.Button5Click(Sender: TObject);
begin
frmPrincipal.Panel9.Color := $008080FF ;
frmPrincipal.pn_totalaPagar.Color :=$008080FF ;
frmPrincipal.Panel2.Color := $008080FF ;
end;

procedure TfrmApresentacao.Button6Click(Sender: TObject);
begin
frmPrincipal.Panel9.Color := $00004080 ;
frmPrincipal.pn_totalaPagar.Color :=$00004080 ;
frmPrincipal.Panel2.Color := $00004080 ;
end;

procedure TfrmApresentacao.Button7Click(Sender: TObject);
begin
frmPrincipal.Panel9.Color := $005E005E ;
frmPrincipal.pn_totalaPagar.Color :=$005E005E ;
frmPrincipal.Panel2.Color := $005E005E ;
end;

procedure TfrmApresentacao.Button8Click(Sender: TObject);
begin
 Close;
end;

end.
