unit MiniSoft.View.onObtemMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ACBrTEFDCliSiTef;

type
  TfrmOnObtemMenu = class(TForm)
    Panel2: TPanel;
    codigo: TLabel;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TipoCampo                   : Integer;
    Operacao                    : TACBrTEFDCliSiTefOperacaoCampo;
    TamanhoMinimo, TamanhoMaximo: Integer;
    function SoLetra(Texto: String): Boolean;
  end;

var
  frmOnObtemMenu: TfrmOnObtemMenu;

implementation

{$R *.dfm}

procedure TfrmOnObtemMenu.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key in [ vk_Return, vk_Back ] then
    exit; { Enter e BackSpace, OK }

  if Operacao in [ tcDouble, tcCMC7 ] then
    if Soletra(Edit1.Text) = False then { Apenas números }
      ShowMessage('Apenas Numero!');

  if (TamanhoMaximo > 0) and (Length(Edit1.Text) >= TamanhoMaximo) then
      // ShowMessage('Atenção, Muitos Caracteres!');
    if key = vk_Return then
    begin
      ModalResult := mrOK;
    end;
end;

procedure TfrmOnObtemMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOK) and (TamanhoMinimo > 0) then
  begin
    if Length(Edit1.Text) < TamanhoMinimo then
    begin
      ShowMessage('O Tamanho Mínimo para este campo e: ' + IntToStr(TamanhoMinimo));
        //CanClose := False ;
      Edit1.SetFocus;
    end;
  end;
end;

procedure TfrmOnObtemMenu.FormCreate(Sender: TObject);
begin
  TamanhoMinimo := 0;
  TamanhoMaximo := 0;
  Operacao      := tcString;
  TipoCampo     := 0;
end;

procedure TfrmOnObtemMenu.FormShow(Sender: TObject);
begin
    if Operacao = tcDouble then
    Edit1.Text := '0,00';
    Edit1.SetFocus;
end;

function TfrmOnObtemMenu.SoLetra(Texto: String): Boolean;
var
  i: Integer;
begin
  result := true;
  for i  := 1 to length(trim(Texto)) do
  begin
    if (Texto[ i ] in [ '0' .. '9' ]) then
    begin
        //result := true
    end
    else
    begin
      result := false;
    end;
  end;
end;

end.
