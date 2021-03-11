unit MiniSoft.View.ResumoDeVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.Buttons, Vcl.ExtCtrls, Conexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmResumoDeVendas = class(TForm)
    Panel2: TPanel;
    codigo: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Data1: TRzDateTimeEdit;
    Data2: TRzDateTimeEdit;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure calculaVendas;
  end;

var
  FrmResumoDeVendas: TFrmResumoDeVendas;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal;

procedure TFrmResumoDeVendas.Button1Click(Sender: TObject);
begin
calculaVendas;
end;

procedure TFrmResumoDeVendas.calculaVendas;
var
q1 : TFDquery;
begin
    q1 := TFdquery.Create(nil);
    q1.Connection := dm.Con;
    try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Add('select tb_nfce.nfc_xmotivo,  sum(tb_nfce.nfc_formadinheiro) as dinheiro, sum(tb_nfce.nfc_formacartaocredito) as cartaocredito,');
        sql.Add('sum(tb_nfce.nfc_formacartaodebito) as cartaodebito, sum(tb_nfce.nfc_formacrediario) as crediario,');
        sql.Add('sum(tb_nfce.nfc_formacheque) as cheque from tb_nfce');
        sql.Add('where NFC_IDE_DHEMI between'+QuotedStr(FormatDateTime('yyyy-mm-dd',Data1.Date))+' and ' +QuotedStr(FormatDateTime('yyyy-mm-dd',data2.Date)));
        sql.Add('group by tb_nfce.nfc_xmotivo');
        open;

        memo1.Clear;


        while not q1.Eof do
        begin
           if FieldByName('nfc_xmotivo').AsString = 'Autorizado o uso da NF-e' then
           begin
            memo1.Lines.Add('Vendas Autorizadas :');
            memo1.Lines.Add('Dinheiro : ' +FormatFloat('###,###,##0.00', FieldByName('dinheiro').AsFloat));
            memo1.Lines.Add('Cartão Crédito : ' +FormatFloat('###,###,##0.00', FieldByName('cartaocredito').AsFloat));
            memo1.Lines.Add('Cartão Débito : ' +FormatFloat('###,###,##0.00', FieldByName('cartaodebito').AsFloat));
            memo1.Lines.Add('Crediário : ' +FormatFloat('###,###,##0.00', FieldByName('crediario').AsFloat));
            memo1.Lines.Add('Cheque : ' +FormatFloat('###,###,##0.00', FieldByName('cheque').AsFloat));
            Memo1.Lines.Add('---------------------------');
            Memo1.Lines.Add('');
           end;

           if FieldByName('nfc_xmotivo').AsString = 'Cancelado' then
           begin
            memo1.Lines.Add('Vendas Canceladas : ');
            memo1.Lines.Add('Dinheiro : ' +FormatFloat('###,###,##0.00', FieldByName('dinheiro').AsFloat));
            memo1.Lines.Add('Cartão Crédito : ' +FormatFloat('###,###,##0.00', FieldByName('cartaocredito').AsFloat));
            memo1.Lines.Add('Cartão Débito : ' +FormatFloat('###,###,##0.00', FieldByName('cartaodebito').AsFloat));
            memo1.Lines.Add('Crediário : ' +FormatFloat('###,###,##0.00', FieldByName('crediario').AsFloat));
            memo1.Lines.Add('Cheque : ' +FormatFloat('###,###,##0.00', FieldByName('cheque').AsFloat));
            Memo1.Lines.Add('---------------------------');
            Memo1.Lines.Add('');
           end;

           if FieldByName('nfc_xmotivo').AsString = 'Contingência' then
           begin
            memo1.Lines.Add('Vendas em Contingência :');
            memo1.Lines.Add('Dinheiro : ' +FormatFloat('###,###,##0.00', FieldByName('dinheiro').AsFloat));
            memo1.Lines.Add('Cartão Crédito : ' +FormatFloat('###,###,##0.00', FieldByName('cartaocredito').AsFloat));
            memo1.Lines.Add('Cartão Débito : ' +FormatFloat('###,###,##0.00', FieldByName('cartaodebito').AsFloat));
            memo1.Lines.Add('Crediário : ' +FormatFloat('###,###,##0.00', FieldByName('crediario').AsFloat));
            memo1.Lines.Add('Cheque : ' +FormatFloat('###,###,##0.00', FieldByName('cheque').AsFloat));
            Memo1.Lines.Add('---------------------------');
            Memo1.Lines.Add('');
           end;

           if FieldByName('nfc_xmotivo').AsString = 'Aberto' then
           begin
            memo1.Lines.Add('Vendas em Aberto :');
            memo1.Lines.Add('Dinheiro : ' +FormatFloat('###,###,##0.00', FieldByName('dinheiro').AsFloat));
            memo1.Lines.Add('Cartão Crédito : ' +FormatFloat('###,###,##0.00', FieldByName('cartaocredito').AsFloat));
            memo1.Lines.Add('Cartão Débito : ' +FormatFloat('###,###,##0.00', FieldByName('cartaodebito').AsFloat));
            memo1.Lines.Add('Crediário : ' +FormatFloat('###,###,##0.00', FieldByName('crediario').AsFloat));
            memo1.Lines.Add('Cheque : ' +FormatFloat('###,###,##0.00', FieldByName('cheque').AsFloat));
             Memo1.Lines.Add('---------------------------');
             Memo1.Lines.Add('');
           end;


          next;
        end;

      end;
    finally
      FreeandNil(q1);
    end;
end;

procedure TFrmResumoDeVendas.FormShow(Sender: TObject);
begin
data1.Date := now;
data2.Date := now;
end;

procedure TFrmResumoDeVendas.SpeedButton1Click(Sender: TObject);
begin
        frmPrincipal.ConfiguraACBrPosPrint;
        frmPrincipal.ACBrPosPrinter1.Imprimir(memo1.Text, True);
        frmPrincipal.ACBrPosPrinter1.ImprimirLinha('');
        frmPrincipal.ACBrPosPrinter1.ImprimirLinha('');
        frmPrincipal.ACBrPosPrinter1.ImprimirLinha('');
        frmPrincipal.ACBrPosPrinter1.ImprimirLinha('');
        frmPrincipal.ACBrPosPrinter1.ImprimirLinha('');
        frmPrincipal.ACBrPosPrinter1.CortarPapel;
end;

end.
