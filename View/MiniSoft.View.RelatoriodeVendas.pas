unit MiniSoft.View.RelatoriodeVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, RzEdit, Conexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, uDWConstsData,
  uRESTDWPoolerDB;

type
  TFrmRelatorioDeVendas = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    codigo: TLabel;
    CodProd: TLabel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Data1: TRzDateTimeEdit;
    Data2: TRzDateTimeEdit;
    SpeedButton1: TSpeedButton;
    frxVendas: TfrxReport;
    FrxNFCe: TfrxDBDataset;
    NFCe: TFDQuery;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    tipo : string;
  public
    { Public declarations }
  end;

var
  FrmRelatorioDeVendas: TFrmRelatorioDeVendas;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal;

procedure TFrmRelatorioDeVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if ((Shift = [ssCtrl]) and (key = vk_f1)) then
    begin
     tipo := 'R';

    end;
  if ((Shift = [ssCtrl]) and (key = vk_f2)) then
    begin
     tipo := 'F';

    end;
end;

procedure TFrmRelatorioDeVendas.FormShow(Sender: TObject);
begin
 Data1.Date := now;
 Data2.Date := now;
 tipo := 'F';
end;

procedure TFrmRelatorioDeVendas.SpeedButton1Click(Sender: TObject);
begin
  with nfce do
  begin
    close;
    sql.Clear;
    sql.Add('select * from tb_nfce where NFC_BENEFICIARIO = '+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
    sql.Add('and nfc_xmotivo='+QuotedStr('Autorizado o uso da NF-e'));
    sql.Add('and nfc_tipo='+QuotedStr(tipo));
    sql.Add('and NFC_IDE_DHEMI between'+QuotedStr(FormatDateTime('yyyy-mm-dd',Data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
    open;
  end;

  frxVendas.LoadFromFile(ExtractFilePath(Application.exeName) + '\Relatorios\VendasNFCe.fr3');
  frxVendas.Variables.Clear;
  frxVendas.Script.Variables['datai'] := datetostr(data1.Date);
  frxVendas.Script.Variables['dataf'] := datetostr(data2.Date);
  frxVendas.ShowReport;
end;

procedure TFrmRelatorioDeVendas.SpeedButton2Click(Sender: TObject);
begin
 Close;
end;

end.
