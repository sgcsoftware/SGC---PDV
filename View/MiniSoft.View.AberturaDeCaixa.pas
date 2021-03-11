unit MiniSoft.View.AberturaDeCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  RzEdit, Vcl.Buttons, MiniSoft.Model.ABREFECHACAIXA, MiniSoft.Funcoes,
  MiniSoft.View.Principal, MiniSoft.Model.Caixa,
  MiniSoft.Controller.ABREFECHACAIXA, MiniSoft.Controller.PlanoDeConta,
  MiniSoft.Model.PlanoDeConta, MiniSoft.Controller.Caixa;

type
  TfrmAberturaDeCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    codigo: TLabel;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_data: TRzDateTimeEdit;
    edt_descricao: TLabeledEdit;
    edt_entrada: TLabeledEdit;
    edt_saida: TLabeledEdit;
    cmb_entradasaida: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edt_entradaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    tipo : String;
    Cancela : String;
  end;

var
  frmAberturaDeCaixa: TfrmAberturaDeCaixa;

implementation

{$R *.dfm}

procedure TfrmAberturaDeCaixa.edt_entradaExit(Sender: TObject);
var
f : TFuncoesGerais;
begin
  inherited;
  f := TFuncoesGerais.create;
  edt_entrada.Text := formatfloat('###,###,##0.00', f.RetDec(edt_entrada.Text));
  FreeandNil(f);

end;

procedure TfrmAberturaDeCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then
  abort;
end;

procedure TfrmAberturaDeCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;



end;

procedure TfrmAberturaDeCaixa.SpeedButton1Click(Sender: TObject);
var
afcM : TAbreFechaCaixa;
afcC : TAbreFechaCaixaController;
f : TFuncoesGerais;
caixaModel : TCaixaModel;
caixaController : TCaixaController;
funcao : TFuncoesGerais ;
PdcM : TPlanoDeContaModel;
PdcC : TPlanoDeContaController;
begin
  inherited;
   afcM := TAbreFechaCaixa.create;
   afcC := TAbreFechaCaixaController.create;
   f := TFuncoesGerais.create;
   CaixaModel := TCaixaModel.create;
   caixaController := TCaixaController.create;
   PdcM := TPlanoDeContaModel.create;
   PdcC := TPlanoDeContaController.create;
   try
      with afcM,f do
      begin
        ABR_VALOR_ENTRADA := f.RetDec(edt_entrada.Text);
        ABR_VALOR_SAIDA := f.RetDec(edt_saida.Text);
        ABR_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
        ABR_STATUS := 'Aberto';
        ABR_DATA := now;
        ABR_HORAS := now;
        ABR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
        ABR_CODIGO_USUARIO := frmPrincipal.PerM.CodigoUser;
       // if Tipo = 'F' then
         ABR_TIPO := 'F';
       //  else
         //ABR_TIPO := 'R'
      end;
      afcC.Inserir(afcM);

      with afcM,f do
      begin
        ABR_VALOR_ENTRADA := f.RetDec(edt_entrada.Text);
        ABR_VALOR_SAIDA := f.RetDec(edt_saida.Text);
        ABR_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
        ABR_STATUS := 'Aberto';
        ABR_DATA := now;
        ABR_HORAS := now;
        ABR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
        ABR_CODIGO_USUARIO := frmPrincipal.PerM.CodigoUser;
       // if Tipo = 'F' then
         ABR_TIPO := 'R';
       //  else
         //ABR_TIPO := 'R'
      end;
      afcC.Inserir(afcM);

      with  caixaModel, funcao do
           begin
            CAI_CODIGO := 0;
            CAI_UUID := '';
            CAI_ENTRADA := RetDec(edt_entrada.Text);
            CAI_SAIDA := RetDec(edt_saida.Text);
            CAI_SALDO := 0;
            CAI_DATA := now;
            CAI_HORA := now;
            CAI_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
            CAI_VENDEDOR := '';
            CAI_CODIGO_VENDEDOR := 0;
            CAI_FORMA := 'Abertura de Caixa PDV';
            CAI_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
            CAI_NVENDA := 0;
            CAI_TIPOMOVIMENTACAO :=  'Abertura de Caixa';
            CAI_TERMINAL := '';
            CAI_PLANODECONTA := 'Abertura De Caixa';
            CAI_CODIGO_PLANODECONTA := 0;
            CAI_CODIGO_MOV_PLANODECONTA := 0;
            CAI_CODIGO_CONTASAPAGAR := 0;
            CAI_CODIGO_CONTASARECEBER := 0;
            CAI_CODIGO_PREVENDA := 0;
            CAI_CODIGO_BANCO := 0;
            CAI_RECEITA := edt_descricao.Text;
            CAI_PORTADOR := '';
            CAI_STATUS_ABREFECHACAIXA :='Aberto';
            CAI_TIPO := 'F';
            CAI_CODIGO_USUARIO :=frmPrincipal.PerM.CodigoUser;
            CAI_NOME_USUARIO := frmPrincipal.PerM.Login;
           end;
           caixaController.Inserir(caixaModel);
           CaixaModel.CalculaSaldo(1, now, 'F');

            with  caixaModel, funcao do
           begin
            CAI_CODIGO := 0;
            CAI_UUID := '';
            CAI_ENTRADA := 0;
            CAI_SAIDA := 0;
            CAI_SALDO := 0;
            CAI_DATA := now;
            CAI_HORA := now;
            CAI_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
            CAI_VENDEDOR := '';
            CAI_CODIGO_VENDEDOR := 0;
            CAI_FORMA := 'Abertura de Caixa PDV';
            CAI_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
            CAI_NVENDA := 0;
            CAI_TIPOMOVIMENTACAO :=  'Abertura de Caixa';
            CAI_TERMINAL := '';
            CAI_PLANODECONTA := 'Abertura De Caixa';
            CAI_CODIGO_PLANODECONTA := 0;
            CAI_CODIGO_MOV_PLANODECONTA := 0;
            CAI_CODIGO_CONTASAPAGAR := 0;
            CAI_CODIGO_CONTASARECEBER := 0;
            CAI_CODIGO_PREVENDA := 0;
            CAI_CODIGO_BANCO := 0;
            CAI_RECEITA := edt_descricao.Text;
            CAI_PORTADOR := '';
            CAI_STATUS_ABREFECHACAIXA :='Aberto';
            CAI_TIPO := 'R';
            CAI_CODIGO_USUARIO :=frmPrincipal.PerM.CodigoUser;
            CAI_NOME_USUARIO := frmPrincipal.PerM.Login;
           end;
           caixaController.Inserir(caixaModel);
           CaixaModel.CalculaSaldo(1, now, 'R');
   finally
     FreeandNil(afcM);
     FreeandNil(afcC);
     FreeandNil(f);
     FreeandNil(CaixaModel);
     FreeandNil(caixaController);
     FreeandNil(PdcM);
     FreeandNil(PdcC);
   end;
   Close;
end;

procedure TfrmAberturaDeCaixa.SpeedButton2Click(Sender: TObject);
begin
application.Terminate;
end;

end.
