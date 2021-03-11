unit MiniSoft.View.Finalizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Datasnap.DBClient,
  MiniSoft.View.Principal, MiniSoft.Funcoes, Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, maskutils, MiniSoft.Model.Nfce ,
  pcnConversao, System.Threading, inifiles, Vcl.Printers, uDWConstsData, uRESTDWPoolerDB,
  MiniSoft.Model.Usuarios, ACBrUtil;

type
  TfrmFinalizar = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    edt_cpfcnpj: TEdit;
    Label1: TLabel;
    edt_nomeCliente: TEdit;
    GroupBox2: TGroupBox;
    edt_descontoDin: TEdit;
    Label2: TLabel;
    edt_descontoPor: TEdit;
    Label3: TLabel;
    edt_acresimoDin: TEdit;
    Label4: TLabel;
    edt_AcrescimoPor: TEdit;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    pn_Total: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    pn_Subtotal: TPanel;
    pn_Troco: TPanel;
    edt_Dinheiro: TEdit;
    Label6: TLabel;
    CDS: TClientDataSet;
    DSCDS: TDataSource;
    CDSFormaDePagamento: TStringField;
    DSClie: TDataSource;
    edt_codigoCli: TEdit;
    FDCli: TFDQuery;
    Panel4: TPanel;
    Button1: TButton;
    DBGrid2: TDBGrid;
    Pn_forma: TPanel;
    edt_fpDinheiro: TEdit;
    edt_fpCarCredito: TEdit;
    edt_fpCarDebito: TEdit;
    edt_fpCheque: TEdit;
    edt_fpCrediario: TEdit;
    procedure FormShow(Sender: TObject);
    procedure edt_fpCarCreditoExit(Sender: TObject);
    procedure edt_descontoDinExit(Sender: TObject);
    procedure edt_descontoDinEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edt_descontoPorEnter(Sender: TObject);
    procedure edt_descontoPorExit(Sender: TObject);
    procedure edt_acresimoDinEnter(Sender: TObject);
    procedure edt_acresimoDinExit(Sender: TObject);
    procedure edt_AcrescimoPorEnter(Sender: TObject);
    procedure edt_AcrescimoPorExit(Sender: TObject);
    procedure edt_fpCarDebitoExit(Sender: TObject);
    procedure edt_fpChequeExit(Sender: TObject);
    procedure edt_fpCrediarioExit(Sender: TObject);
    procedure edt_DinheiroExit(Sender: TObject);
    procedure edt_nomeClienteChange(Sender: TObject);
    procedure edt_nomeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure DSCDSDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_cpfcnpjExit(Sender: TObject);
    procedure edt_nomeClienteExit(Sender: TObject);
    procedure edt_fpCarCreditoChange(Sender: TObject);
    procedure edt_fpCarDebitoChange(Sender: TObject);
    procedure edt_fpChequeChange(Sender: TObject);
    procedure edt_fpCrediarioChange(Sender: TObject);
    procedure edt_DinheiroChange(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaFormasDePagamento;
    procedure ZeraEdits;
    procedure LancaCliente;

    procedure GravaCliente(CodigoVenda : String);
    procedure ImprimeNFCe;
    procedure CarregaPrevendaImportada;
    procedure ImprimeComprovantes(NumeroVenda : String; vlrCrediario : Double);

    procedure CalculaFormaDePagamento;
    procedure JogaValoreOficiais(CodVenda: String; Desconto,Acrescimo : Double; nnfce : Integer );
    procedure FinalizaF1;

  public
    TotalApagar : Double;
    TipoVenda : String;
    CodigoVenda : String;
    CodVendedor : integer;
    NomeVendedor : String;
    { Public declarations }
    procedure FinalizaDinheiro;
    procedure GravaPrevenda;
    procedure FinalizaVenda;
    Procedure Endx;
    function VerificaParcelasAtrasadas(CodCli: String) : Boolean;
    procedure JogaCliente(codigo : string);
  end;

var
  frmFinalizar: TfrmFinalizar;
  VlrEdit : Double;
  clicou : String;
implementation

{$R *.dfm}

uses MiniSoft.View.ParcelasCrediario, MiniSoft.View.ParcelasCheque,
  MiniSoft.Model.ParcelasAReceber, MiniSoft.Model.ParcelasVendas,
  MiniSoft.View.IdentificaVendedor, ConfigFile.Model, Funcao.GenericEnum,
  MiniSoft.View.SenhaAdmin;

{ TfrmFinalizar }

procedure TfrmFinalizar.Button1Click(Sender: TObject);
var
Tasks: array [0..2] of ITask;
begin
    if frmPrincipal.ValidaCertificado = false then
     begin
       abort;
     end;
    //Tasks[0] := TTask.Create(Endx);
    Endx;
   // Tasks[0].Start;
end;

procedure TfrmFinalizar.CalculaFormaDePagamento;
var
f : TFuncoesGerais;
begin
    f := TFuncoesGerais.create;
    edt_fpDinheiro.Text := FormatFloat('###,###,##0.00', f.RetDec(pn_total.Caption)
    - f.RetDec(edt_fpCarCredito.Text)
    - f.RetDec(edt_fpCarDebito.Text)
    - f.RetDec(edt_fpCrediario.Text)
    - f.RetDec(edt_fpCheque.text));

    if f.RetDec(edt_fpDinheiro.Text) < 0 then
       begin
         ShowMessage('O valor do Pagamento e Maior que o Valor da compra!');
         abort;
       end;
    FreeandNil(f);
end;

procedure TfrmFinalizar.CarregaFormasDePagamento;
var
AlEdit : integer;
begin
 CDS.EmptyDataSet;
 AlEdit := 0;

 if frmPrincipal.Global.PRI_FB_CREDIARIO = 'True' then
    begin
    Cds.Insert;
    CDSFormaDePagamento.AsString := 'Crediário';
    Cds.Post;
    edt_fpCrediario.Visible := true;
    end;
   if frmPrincipal.Global.PRI_FB_CHEQUE = 'True' then
    begin
    Cds.Insert;
    CDSFormaDePagamento.AsString := 'Cheque';
    Cds.Post;
    edt_fpCheque.Visible := true;
    end;
   if frmPrincipal.Global.PRI_FP_CARTAO = 'True' then
    begin
    Cds.Insert;
    CDSFormaDePagamento.AsString := 'Cartão Débito';
    Cds.Post;
    edt_fpCarDebito.Visible := true;
    end;
   if frmPrincipal.Global.PRI_FP_CARTAO = 'True' then
    begin
    Cds.Insert;
    CDSFormaDePagamento.AsString := 'Cartão Crédito';
    Cds.Post;
    edt_fpCarCredito.Visible := true;
    end;
  if frmPrincipal.Global.PRI_FB_DINHEIRO = 'True' then
    begin
    Cds.Insert;
    CDSFormaDePagamento.AsString := 'Dinheiro';
    Cds.Post;
    edt_fpDinheiro.Visible := true;
    end;

    if frmPrincipal.Global.PRI_FB_DINHEIRO = 'True' then
    begin
    AlEdit := AlEdit + 3;
    edt_fpDinheiro.top := AlEdit;
    end;

    if frmPrincipal.Global.PRI_FP_CARTAO = 'True' then
    begin
    AlEdit := AlEdit + 31;
    edt_fpCarCredito.top := AlEdit;
    end;

    if frmPrincipal.Global.PRI_FP_CARTAO = 'True' then
    begin
    AlEdit := AlEdit + 31;
    edt_fpCarDebito.top := AlEdit;
    end;

    if frmPrincipal.Global.PRI_FB_CHEQUE = 'True' then
    begin
    AlEdit := AlEdit + 31;
    edt_fpCheque.top := AlEdit;
    end;

    if frmPrincipal.Global.PRI_FB_CREDIARIO = 'True' then
    begin
    AlEdit := AlEdit + 31;
    edt_fpCrediario.top := AlEdit;
    end;
end;

procedure TfrmFinalizar.CarregaPrevendaImportada;
var
q1 : TFDquery;
begin
  if frmPrincipal.TipoImportacao.Caption = 'Pré-Venda' then
   begin
     q1 := TFDquery.Create(nil);
     q1.Connection := dm.Con;

     try
       with q1 do
       begin
         close;
         sql.Clear;
         sql.Add('select * from TB_PREVENDA where pre_codigo='+QuotedStr(frmPrincipal.importacaoCodigo.Caption));
         open;
         edt_descontoDin.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_DESCDINHEIRO').AsFloat);
         edt_descontoPor.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_DESCPORCENTAGEM').AsFloat);
         edt_acresimoDin.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_ACRESCINHEIRO').AsFloat);
         edt_AcrescimoPor.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_ACRESPORCENTAGEM').AsFloat);

         edt_fpDinheiro.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_PAGDINHEIRO').AsFloat);
         edt_fpCarCredito.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_PAGCARTAOCREDITO').AsFloat);
         edt_fpCarDebito.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_PAGCARTAODEBITO').AsFloat);
         edt_fpCheque.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_PAGCHEQUE').AsFloat);
         edt_fpCrediario.Text := formatfloat('###,###,##0.00', q1.FieldByName('PRE_PAGCREDIARIO').AsFloat);

         pn_Total.Caption := formatfloat('###,###,##0.00', q1.FieldByName('PRE_TOTAL').AsFloat);
         pn_Subtotal.Caption  := formatfloat('###,###,##0.00', q1.FieldByName('PRE_SUBTOTAL').AsFloat);
         edt_nomeCliente.Text := q1.FieldByName('PRE_NOME_CLIENTE').AsString;
         edt_codigoCli.Text := q1.FieldByName('PRE_CODIGO_CLIENTE').AsString;
         dbgrid2.Visible := false;
         if Length(q1.fieldByName('PRE_CPFCNPJ_CLIENTE').asstring) = 11 then
         begin
           edt_cpfcnpj.Text := FormatMaskText('999.999.999-99;0', q1.fieldByName('PRE_CPFCNPJ_CLIENTE').asstring);
         end;
         if Length(q1.fieldByName('PRE_CPFCNPJ_CLIENTE').asstring) = 14 then
         begin
          edt_cpfcnpj.Text := FormatMaskText('99.999.999/9999-99;0', q1.fieldByName('PRE_CPFCNPJ_CLIENTE').asstring);
         end;
         if (q1.FieldByName('PRE_PAGCREDIARIO').AsFloat > 0)
         or (q1.FieldByName('PRE_PAGCARTAOCREDITO').AsFloat > 0)
         or (q1.FieldByName('PRE_PAGCHEQUE').AsFloat > 0) then
         begin
           TipoVenda := 'Pré-Venda';
           CodigoVenda := q1.FieldByName('pre_codigo').AsString
         end;

         NomeVendedor := q1.FieldByName('PRE_VENDEDOR').AsString;
         CodVendedor := q1.FieldByName('PRE_CODIGO_VENDEDOR').AsInteger;
       end;
     finally
       FreeandNil(q1);
     end;
   end
   else
   begin
     NomeVendedor := frmPrincipal.PerM.Login;
     CodVendedor := frmPrincipal.PerM.CodigoUser;
   end;
end;

procedure TfrmFinalizar.DBGrid2DblClick(Sender: TObject);
begin
LancaCliente;
end;

procedure TfrmFinalizar.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
LancaCliente
end;

procedure TfrmFinalizar.DSCDSDataChange(Sender: TObject; Field: TField);
begin
ShowScrollBar(DBGrid1.handle, SB_VERT, False);
end;

procedure TfrmFinalizar.edt_AcrescimoPorEnter(Sender: TObject);
var
f : TFuncoesGerais;
begin
f := TFuncoesGerais.create;
VlrEdit := f.RetDec(edt_acrescimoPor.Text);
FreeandNil(f);
end;

procedure TfrmFinalizar.edt_AcrescimoPorExit(Sender: TObject);
var
f : TFuncoesGerais;
vlr, descpor, total, vlrEditL : Double;
begin
    f := TFuncoesGerais.create;
    descpor := f.RetDec(edt_acrescimoPor.Text);
    f.EditFormatExit(sender);
    vlrEditL := f.RetDec(edt_acrescimoPor.Text);
     if descpor > 50 then
      begin
        ShowMessage('Acrescimo não pode ser maior que 50%');
        abort;
      end;


    if vlrEditL <> VlrEdit then
    begin
        vlr := f.RetDec(pn_SubTotal.Caption);

    total := descpor * vlr / 100;
    vlr := vlr + total;
      edt_acresimoDin.Text := formatfloat('###,###,##0.00', total);
     edt_acrescimoPor.Text := formatfloat('###,###,##0.00000', descpor);
     Pn_Total.Caption := formatfloat('###,###,##0.00', vlr);
      edt_descontoDin.Text := '0,00';
      edt_DescontoPor.Text := '0,00';
      ZeraEdits;
      edt_fpDinheiro.Text := formatfloat('###,###,##0.00', vlr);
    end;
    FreeandNil(f);
end;

procedure TfrmFinalizar.edt_acresimoDinEnter(Sender: TObject);
var
f : TFuncoesGerais;
begin
f := TFuncoesGerais.create;
VlrEdit := f.RetDec(edt_acresimoDin.Text);
FreeandNil(f);
end;

procedure TfrmFinalizar.edt_acresimoDinExit(Sender: TObject);
var
f : TFuncoesGerais;
vlr, desconto, total, vlrEditL : Double;
begin
    f := TFuncoesGerais.create;
    f.EditFormatExit(sender);
    vlrEditL := f.RetDec(edt_acresimoDin.Text);

    //edt_dinheiro.Text := formatfloat('###,###,##0.00', vlr);




        vlr := f.RetDec(pn_SubTotal.Caption);
    desconto := f.RetDec(edt_acresimoDin.Text);
    total := desconto * 100 / vlr;
    if total > 50 then
      begin
        ShowMessage('Acrescimo não pode ser maior que 50%');

        abort;
      end;
      if vlrEditL <> VlrEdit then
    begin
    vlr := vlr + desconto;
      edt_acrescimoPor.Text := formatfloat('###,###,##0.00000', total);
      Pn_Total.Caption := formatfloat('###,###,##0.00', vlr);
      edt_descontoDin.Text := '0,00';
      edt_DescontoPor.Text := '0,00';
      ZeraEdits;
      edt_fpDinheiro.Text := formatfloat('###,###,##0.00', vlr);
    end;
    FreeandNil(f);
end;

procedure TfrmFinalizar.edt_cpfcnpjExit(Sender: TObject);
begin
DBGrid2.Visible := false;
end;

procedure TfrmFinalizar.edt_descontoDinEnter(Sender: TObject);
var
f : TFuncoesGerais;
begin
f := TFuncoesGerais.create;
VlrEdit := f.RetDec(edt_descontoDin.Text);
FreeandNil(f);
end;

procedure TfrmFinalizar.edt_descontoDinExit(Sender: TObject);
var
f : TFuncoesGerais;
vlr, desconto, total, vlrdescDin, vlrVenda : Double;
begin
f := TFuncoesGerais.create;
 try
   f.EditFormatExit(sender);
   vlrdescDin := f.RetDec(edt_descontoDin.Text);
   if vlrdescDin > f.RetDec(pn_SubTotal.Caption) then
    begin
      ShowMessage('O Desconto não pode ser maior que o Total da Compra!');
      abort;
    end;
    if vlrdescDin <> VlrEdit  then
    begin

      vlr := f.RetDec(pn_SubTotal.Caption);
      desconto := f.RetDec(edt_descontoDin.Text);
      total := desconto * 100 / vlr;
      if total > 50 then
      begin
        ShowMessage('Desconto não pode ser maior que 50%');
        vlrdescDin := 0;
        abort;
      end;
      vlr := vlr - desconto;
      edt_DescontoPor.Text := formatfloat('###,###,##0.00000', total);
      Pn_Total.Caption := formatfloat('###,###,##0.00', vlr);
      edt_acresimoDin.Text := '0,00';
      edt_AcrescimoPor.Text := '0,00';
      ZeraEdits;
      edt_fpDinheiro.Text := formatfloat('###,###,##0.00', vlr);
    end;

    FreeandNil(f);

 finally
   FreeandNil(f);
 end;

end;

procedure TfrmFinalizar.edt_descontoPorEnter(Sender: TObject);
var
f : TFuncoesGerais;
begin
f := TFuncoesGerais.create;
VlrEdit := f.RetDec(edt_descontoPor.Text);
FreeandNil(f);
end;

procedure TfrmFinalizar.edt_descontoPorExit(Sender: TObject);
var
f : TFuncoesGerais;
vlr, descpor, total, VlrEditL : Double;
begin
    f := TFuncoesGerais.create;
    descpor := f.RetDec(edt_DescontoPor.Text);
    if descpor > 50 then
      begin
        ShowMessage('Desconto não pode ser maior que 50%');
        abort;
      end;
    f.EditFormatExit(sender);
    VlrEditL := f.RetDec(edt_DescontoPor.Text);
    if vlrEditL > 100 then
    begin
      ShowMessage('O Desconto não pode ser maior que o Total da Compra!');
      abort;
    end;


    if VlrEditL <> VlrEdit then
    begin
        vlr := f.RetDec(pn_SubTotal.Caption);

     total := descpor * vlr / 100;
     vlr := vlr - total;

      edt_descontoDin.Text := formatfloat('###,###,##0.00', total);
      edt_DescontoPor.Text := formatfloat('###,###,##0.00000', descpor);
      //edt_dinheiro.Text := formatfloat('###,###,##0.00', vlr);
      Pn_Total.Caption := formatfloat('###,###,##0.00', vlr);
      edt_acresimoDin.Text := '0,00';
      edt_acrescimoPor.Text := '0,00';
      ZeraEdits;
      edt_fpDinheiro.Text := formatfloat('###,###,##0.00', vlr);
    end;
        FreeandNil(f);
end;

procedure TfrmFinalizar.edt_DinheiroChange(Sender: TObject);
var
  AValor: Double;
begin
  AValor := StrToIntDef(OnlyNumber(edt_Dinheiro.Text), 0)/100;
  edt_Dinheiro.Text := FormatFloatBr(AValor);
  edt_Dinheiro.SelStart := Length(edt_Dinheiro.Text);
end;

procedure TfrmFinalizar.edt_DinheiroExit(Sender: TObject);
var
f : TFuncoesGerais;
Dinheiro,vlrPago, Troco : Double;
begin


  f := TFuncoesGerais.create;
 if f.RetDec(edt_fpDinheiro.Text) > 0 then
 begin
  try
   Dinheiro := f.RetDec(edt_Dinheiro.Text);
   vlrPago  := f.RetDec(edt_fpDinheiro.Text);
   if (Dinheiro <> 0) and(Dinheiro < vlrPago) then
   begin
     ShowMessage('o valor informado e menor que a forma de pagamento Dinheiro');
     edt_Dinheiro.Text := '0,00';
     abort;
   end;
   if Dinheiro > 0 then
   begin
   troco := Dinheiro - f.RetDec(edt_fpDinheiro.Text);
   pn_Troco.Caption := formatfloat('###,###,##0.00', troco);
   edt_Dinheiro.Text := formatfloat('###,###,##0.00', f.RetDec(edt_Dinheiro.Text));
   end;
  finally
    FreeandNil(f);

  end;
 end
 else
 begin
   edt_Dinheiro.Text := '0,00';
 end;
end;

procedure TfrmFinalizar.edt_fpCarCreditoChange(Sender: TObject);
var
  AValor: Double;
begin
  AValor := StrToIntDef(OnlyNumber(edt_fpCarCredito.Text), 0)/100;
  edt_fpCarCredito.Text := FormatFloatBr(AValor);
  edt_fpCarCredito.SelStart := Length(edt_fpCarCredito.Text);
end;

procedure TfrmFinalizar.edt_fpCarCreditoExit(Sender: TObject);
var
f : TFuncoesGerais;
vlrCrediario : Double;
begin
    f := TFuncoesGerais.create;
    f.EditFormatExit(sender);

    CalculaFormaDePagamento;
     vlrCrediario := f.RetDec(edt_fpCarCredito.Text);
      if vlrCrediario > 0 then
     begin
       if frmparcelasCrediario = nil then
          frmparcelasCrediario := TfrmparcelasCrediario.create(self);
          frmParcelasCrediario.FormaPag := 'Cartão Crédito';
          frmParcelasCrediario.TipoVenda := TipoVenda;
          frmparcelasCrediario.NOmeCliente := edt_nomeCliente.Text;
          frmparcelasCrediario.CodVenda := strtoint(CodigoVenda);
          frmparcelasCrediario.NOmeCliente := edt_nomeCliente.Text;
          if edt_nomeCliente.Text = '' then
          begin
          frmparcelasCrediario.NOmeCliente := 'Consumidor Final';
          end;
          frmparcelasCrediario.Valor := vlrCrediario;
          frmparcelasCrediario.ShowModal;
          FreeandNil(frmparcelasCrediario);
     end;

end;
procedure TfrmFinalizar.edt_fpCarDebitoChange(Sender: TObject);
var
  AValor: Double;
begin
  AValor := StrToIntDef(OnlyNumber(edt_fpCarDebito.Text), 0)/100;
  edt_fpCarDebito.Text := FormatFloatBr(AValor);
  edt_fpCarDebito.SelStart := Length(edt_fpCarDebito.Text);
end;

procedure TfrmFinalizar.edt_fpCarDebitoExit(Sender: TObject);
var
f : TFuncoesGerais;
vlrCrediario : Double;
begin
    f := TFuncoesGerais.create;
    f.EditFormatExit(sender);

    CalculaFormaDePagamento;
     vlrCrediario := f.RetDec(edt_fpCrediario.Text);

end;

procedure TfrmFinalizar.edt_fpChequeChange(Sender: TObject);
var
  AValor: Double;
begin
  AValor := StrToIntDef(OnlyNumber(edt_fpCheque.Text), 0)/100;
  edt_fpCheque.Text := FormatFloatBr(AValor);
  edt_fpCheque.SelStart := Length(edt_fpCheque.Text);
end;

procedure TfrmFinalizar.edt_fpChequeExit(Sender: TObject);
var
f : TFuncoesGerais;
vlrCrediario : Double;
begin
    f := TFuncoesGerais.create;
    f.EditFormatExit(sender);

    CalculaFormaDePagamento;
     vlrCrediario := f.RetDec(edt_fpCheque.Text);
     if vlrCrediario > 0 then
     begin
       if frmParcelamentoCheque = nil then
          frmParcelamentoCheque := TfrmParcelamentoCheque.create(self);
          frmParcelamentoCheque.FormaPag := 'Cheque';
          frmParcelamentoCheque.TipoVenda := TipoVenda;
          frmParcelamentoCheque.NOmeCliente := edt_nomeCliente.Text;
          if edt_nomeCliente.Text = '' then
          begin
          frmParcelamentoCheque.NOmeCliente := 'Consumidor Final';
          end;
          frmParcelamentoCheque.CodCliente := strtoint(edt_codigoCli.Text);
          frmParcelamentoCheque.CodVenda := strtoint(CodigoVenda);
          frmParcelamentoCheque.Valor := vlrCrediario;
          frmParcelamentoCheque.ShowModal;
          FreeandNil(frmParcelamentoCheque);
     end;

end;

procedure TfrmFinalizar.edt_fpCrediarioChange(Sender: TObject);
var
  AValor: Double;
begin
  AValor := StrToIntDef(OnlyNumber(edt_fpCrediario.Text), 0)/100;
  edt_fpCrediario.Text := FormatFloatBr(AValor);
  edt_fpCrediario.SelStart := Length(edt_fpCrediario.Text);
end;

procedure TfrmFinalizar.edt_fpCrediarioExit(Sender: TObject);
var
f : TFuncoesGerais;
vlrCrediario : Double;
begin

    f := TFuncoesGerais.create;
    f.EditFormatExit(sender);

    CalculaFormaDePagamento;
     vlrCrediario := f.RetDec(edt_fpCrediario.Text);
     if vlrCrediario > 0 then
     begin
       if frmparcelasCrediario = nil then
          frmparcelasCrediario := TfrmparcelasCrediario.create(self);
          frmParcelasCrediario.FormaPag := 'Crediário';
          frmParcelasCrediario.TipoVenda := TipoVenda;
          frmparcelasCrediario.NOmeCliente := edt_nomeCliente.Text;
          if edt_nomeCliente.Text = '' then
          begin
          frmparcelasCrediario.NOmeCliente := 'Consumidor Final';
          end;
          frmparcelasCrediario.CodCliente := strtoint(edt_codigoCli.Text);
          frmparcelasCrediario.CodVenda := strtoint(CodigoVenda);
          frmparcelasCrediario.Valor := vlrCrediario;
          frmparcelasCrediario.ShowModal;
          FreeandNil(frmparcelasCrediario);
     end;

end;
procedure TfrmFinalizar.edt_nomeClienteChange(Sender: TObject);
var
funcoes : TFuncoesGerais;
begin
funcoes := TFuncoesGerais.create;
try
if (edt_nomeCliente.Text = '') then
   begin
     dbgrid2.Visible := false;
   end
   else
   begin

     if funcoes.SoLetra(edt_nomeCliente.Text) = true then
        begin
           with FDCli do
           begin
             close;
             sql.Clear;
             sql.Add('select First 100 CLI_BLOQUEADO, cli_codigo,cli_cpfcnpj, cli_rgie, cli_nomerazao, cli_cidade, cli_endereco from tb_clientes where cli_codigo like'+QuotedStr('%'+edt_nomeCliente.Text+'%'));
             sql.Add('order by cli_cpfcnpj');
             open;
             if IsEmpty then
             begin
             close;
             sql.Clear;
             sql.Add('select First 100 CLI_BLOQUEADO, cli_codigo,cli_cpfcnpj, cli_rgie, cli_nomerazao, cli_cidade, cli_endereco from tb_clientes where cli_cpfcnpj like'+QuotedStr('%'+edt_nomeCliente.Text+'%'));
             sql.Add('order by cli_cpfcnpj');
             open;
             end;
             if IsEmpty then
             begin
             close;
             sql.Clear;
             sql.Add('select First 100 CLI_BLOQUEADO, cli_codigo,cli_cpfcnpj, cli_rgie, cli_nomerazao, cli_cidade, cli_endereco from tb_clientes where cli_rgie like'+QuotedStr('%'+edt_nomeCliente.Text+'%'));
             sql.Add('order by cli_rgie');
             open;
             end;
           end;
        end
        else
        begin
          with FDCli do
           begin
             close;
             sql.Clear;
             sql.Add('select First 100 CLI_BLOQUEADO,cli_codigo,cli_cpfcnpj, cli_rgie, cli_nomerazao, cli_cidade, cli_endereco from tb_clientes where cli_nomerazao like'+QuotedStr('%'+edt_nomeCliente.Text+'%'));
             sql.Add('order by cli_nomerazao');
             open;
             if IsEmpty then
             begin
             close;
             sql.Clear;
             sql.Add('select First 100 CLI_BLOQUEADO,cli_codigo,cli_cpfcnpj, cli_rgie, cli_nomerazao, cli_cidade, cli_endereco from tb_clientes where cli_endereco like'+QuotedStr('%'+edt_nomeCliente.Text+'%'));
             sql.Add('order by cli_endereco');
             open;
             if IsEmpty then
             begin
             close;
             sql.Clear;
              sql.Add('select First 100 CLI_BLOQUEADO,cli_codigo,cli_cpfcnpj, cli_rgie, cli_nomerazao, cli_cidade, cli_endereco from tb_clientes where cli_cidade like'+QuotedStr('%'+edt_nomeCliente.Text+'%'));
             sql.Add('order by cli_cidade');
             open;
             end;
           end;
        end;
      end;

 end;
finally
  if not FDCli.IsEmpty then
  DBGrid2.Visible := true
  else
  DBGrid2.Visible := false;

  if (edt_nomeCliente.Text = '') then
   begin
     dbgrid2.Visible := false;
   end;

  FreeandNil(funcoes);
end;
end;

procedure TfrmFinalizar.edt_nomeClienteExit(Sender: TObject);
begin
  //DBGrid2.Visible := not DBGrid1.Visible;
end;

procedure TfrmFinalizar.edt_nomeClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = VK_DOWN) and (DBGrid2.Visible = True) then
begin
  dbgrid2.SetFocus;
  DBGrid2.SelectedIndex := DBGrid2.SelectedIndex  ;
end;
if key = VK_RETURN then
  begin
    JogaCliente(edt_codigoCli.Text);
    dbgrid2.Visible := false;
  end;
end;

procedure TfrmFinalizar.Endx;
var
f : TFuncoesGerais;
nfes : TNfceModel;
begin

 f := TFuncoesGerais.create;
 nfes := TNfceModel.create;
 try
  button1.Visible := false;
  frmPrincipal.lb_NumeroVenda.Caption :=nfes.SerieNFCe(frmPrincipal.lb_NVenda.Caption, frmPrincipal.lb_NumeroVenda.Caption);
  if ConfigIni.TEF then
  begin

    if (f.RetDec(edt_fpCarCredito.Text) > 0) or (f.RetDec(edt_fpCarDebito.Text) > 0) then
    begin
      frmPrincipal.estadoSimuladoEcf := tpsVenda;
      frmPrincipal.EfetuaPagamento(tpCartao);
        //      frmCaixa.ACBrTEFD1.ConfirmarTransacoesPendentes();
    end
    else
    begin
      GravaPrevenda;
      FinalizaVenda;
    end;
  end
  else
  begin
  GravaPrevenda;
  FinalizaVenda;
  end;


 finally
 button1.Visible := True;
 FreeandNil(f);
 FreeandNil(nfes);


 end;
end;

procedure TfrmFinalizar.FinalizaDinheiro;
var
NFCe : TNfceModel;
q1 : TFDquery;
f : TFuncoesGerais;
begin
   CarregaPrevendaImportada;
   GravaCliente(frmPrincipal.lb_NVenda.Caption);
   NFCe := TNfceModel.create;
   q1 := TFDquery.Create(nil);
   q1.Connection := dm.Con;
   q1.CachedUpdates := true;
   f := TFuncoesGerais.create;
   try
      with NFCe do
      begin
        with q1 do
        begin
          close;
          sql.Clear;
          sql.Add('select * from tb_nfce where nfc_codigo='+QuotedStr(frmPrincipal.lb_NVenda.Caption));
          open;
          edit;
          FieldByName('NFC_TOTAL_VPROD').AsFloat := F.RetDec(frmPrincipal.pn_totalaPagar.Caption);
          FieldByName('NFC_TOTAL_VNF').AsFloat := F.RetDec(frmPrincipal.pn_totalaPagar.Caption);
          FieldByName('NFCE_IMPORTACAO').AsString := frmPrincipal.TipoImportacao.Caption;
          FieldByName('NFCE_CODIGOIMPORTACAO').AsInteger := strtoint(frmPrincipal.importacaoCodigo.Caption);
          FieldByName('NFCE_NUMEROIMPORTACAO').AsInteger := strtoint(frmPrincipal.NumeroImportacao.Caption);
          FieldByName('NFC_FORMADINHEIRO').Asfloat := f.RetDec(frmPrincipal.pn_totalaPagar.Caption) ;
          FieldByName('NFC_FORMACARTAOCREDITO').Asfloat := 0 ;
          FieldByName('NFC_FORMACARTAODEBITO').Asfloat := 0 ;
          FieldByName('NFC_FORMACREDIARIO').Asfloat := 0 ;
          FieldByName('NFC_FORMACHEQUE').Asfloat := 0 ;
          FieldByName('NFC_PAGDINHEIRO').Asfloat := 0 ;
          FieldByName('NFC_CODIGO_VENDEDOR').Asinteger := CodVendedor;
          FieldByName('NFC_VENDEDOR').AsString := NomeVendedor;
           FieldByName('NFC_TIPO').AsString := 'F';
          FieldByName('NFCE_CODIGO_CLIENTE').AsInteger := 0;
          if frmPrincipal.Global.PRI_PDV_CONF1 = 'True' then
          begin
             if frmIdentificaVendedor = nil then
                frmIdentificaVendedor := TfrmIdentificaVendedor.Create(self);
                frmIdentificaVendedor.ShowModal;
                FieldByName('NFC_CODIGO_VENDEDOR').Asinteger := frmIdentificaVendedor.Codigo;
                FieldByName('NFC_VENDEDOR').AsString := frmIdentificaVendedor.Vendedor;
                FreeandNil(frmIdentificaVendedor);
          end;

          post;
          ApplyUpdates;
          CommitUpdates;
        end;
        frmPrincipal.Panel9.Caption := 'Consultando Status Sefaz...';
        Application.ProcessMessages;
        LerConfNfce;
        frmPrincipal.lb_NumeroVenda.Caption :=SerieNFCe(frmPrincipal.lb_NVenda.Caption, frmPrincipal.lb_NumeroVenda.Caption);
        sleep(500);
        frmPrincipal.Panel9.Caption := 'Enviando Nota para a Sefaz...';
        Application.ProcessMessages;
        GerarNFCe(frmPrincipal.lb_NumeroVenda.Caption,frmPrincipal.lb_NVenda.Caption);
        dm.ACBrNFe.NotasFiscais.Assinar;
        dm.ACBrNFe.NotasFiscais.Validar;
        dm.ACBrNFe.Enviar(FormatDateTime('ddmmyyyyhhmmss', Now), true, true);
        if (dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat in [100,150]) then
        begin
          //Grava Dados da NFC-e no banco
        end;
      end;

   finally
     FreeandNil(NFCe);
     FreeandNil(q1);
     FreeandNil(f);
   end;
end;

procedure TfrmFinalizar.FinalizaF1;
var
NFCe : TNfceModel;
q1 : TFDquery;
x, y, i : Integer;
f : TFuncoesGerais;
nNota : String;
begin
   frmPrincipal.VerificaCaixaAberto;
   nNota := (FormatDateTime('ddhhmmss', now));
   GravaCliente(frmPrincipal.lb_NVenda.Caption);
   NFCe := TNfceModel.create;
   q1 := TFDquery.Create(nil);
   q1.Connection := dm.Con;
   q1.CachedUpdates := true;
   f := TFuncoesGerais.create;
   try
      with NFCe do
      begin
        with q1 do
        begin
          close;
          sql.Clear;
          sql.Add('select * from tb_nfce where nfc_codigo='+QuotedStr(frmPrincipal.lb_NVenda.Caption));
          open;
          edit;
          FieldByName('NFC_TOTAL_VPROD').AsFloat := F.RetDec(pn_Subtotal.Caption);
          FieldByName('NFC_TOTAL_VNF').AsFloat := F.RetDec(pn_total.Caption);
          FieldByName('NFCE_IMPORTACAO').AsString := frmPrincipal.TipoImportacao.Caption;
          FieldByName('NFCE_CODIGOIMPORTACAO').AsInteger := strtoint(frmPrincipal.importacaoCodigo.Caption);
          FieldByName('NFCE_NUMEROIMPORTACAO').AsInteger := strtoint(frmPrincipal.NumeroImportacao.Caption);
          FieldByName('NFC_FORMADINHEIRO').Asfloat := f.RetDec(edt_fpDinheiro.Text) ;
          FieldByName('NFC_FORMACARTAOCREDITO').Asfloat := f.RetDec(edt_fpCarCredito.Text) ;
          FieldByName('NFC_FORMACARTAODEBITO').Asfloat := f.RetDec(edt_fpCarDebito.Text) ;
          FieldByName('NFC_FORMACREDIARIO').Asfloat := f.RetDec(edt_fpCrediario.Text) ;
          FieldByName('NFC_FORMACHEQUE').Asfloat := f.RetDec(edt_fpCheque.Text) ;
          FieldByName('NFC_PAGDINHEIRO').Asfloat := f.RetDec(edt_Dinheiro.Text) ;
          FieldByName('NFC_TOTAL_VOUTRO').Asfloat := f.RetDec(edt_acresimoDin.Text);
          FieldByName('NFC_CODIGO_VENDEDOR').Asinteger := CodVendedor;
          FieldByName('NFC_VENDEDOR').AsString := NomeVendedor;
          if frmPrincipal.Global.PRI_PDV_CONF1 = 'True' then
          begin
             if frmIdentificaVendedor = nil then
                frmIdentificaVendedor := TfrmIdentificaVendedor.Create(self);
                frmIdentificaVendedor.ShowModal;
                FieldByName('NFC_CODIGO_VENDEDOR').Asinteger := frmIdentificaVendedor.Codigo;
                FieldByName('NFC_VENDEDOR').AsString := frmIdentificaVendedor.Vendedor;
                FreeandNil(frmIdentificaVendedor);
          end;
          post;
          ApplyUpdates;
          CommitUpdates;
        end;
        frmPrincipal.Panel9.Caption := 'Consultando Status Sefaz...';
        Application.ProcessMessages;
        LerConfNfce;
        frmPrincipal.lb_NumeroVenda.Caption :=nNota;
        sleep(500);
        frmPrincipal.Panel9.Caption := 'Enviando Nota para a Sefaz...';
        Application.ProcessMessages;
        GerarNFCe(nNota,frmPrincipal.lb_NVenda.Caption);
        dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat := 100;
        dm.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNf := strtoint(nNota);
        if dm.ACBrNFe.DANFE <> nil then
        begin
            for i := 0 to dm.ACBrNFe.NotasFiscais.Count - 1 do
            begin

                dm.ACBrNFe.NotasFiscais.Items[i].Imprimir;
                if (dm.ACBrNFe.DANFE.ClassName = 'TACBrNFeDANFERaveCB') then
                  Break;
            end;
       end;
            case dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat of
               100, 150 :
               begin
                frmPrincipal.Panel9.Caption := 'Nota Autorizada...';
                Application.ProcessMessages;
                sleep(500);
                q1.Edit;
                q1.FieldByName('NFC_XMOTIVO').AsString := 'Autorizado o uso da NF-e';
                q1.FieldByName('NFC_IDE_ID').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.chNFe;
                q1.FieldByName('NFC_TIPO').AsString:= 'R';
                q1.FieldByName('NFC_IDE_NNF').AsInteger:= strtoint(nNota);
                q1.FieldByName('NFC_PROCNFE_NPROT').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
                q1.Post;
                q1.ApplyUpdates;
                q1.CommitUpdates;
                NfCe.RetiraEstoque(q1.FieldByName('nfc_codigo').AsString, q1.FieldByName('NFC_DEST_XNOME').AsString, q1.FieldByName('NFCE_CODIGO_CLIENTE').AsString, strtoint(frmPrincipal.lb_NumeroVenda.Caption));
                NfCe.MovimentacaoFinanceira(frmPrincipal.lb_NVenda.Caption, TipoVenda, CodigoVenda,'R');
                if frmPrincipal.Global.PRI_PDV_CONF6 = 'True' then
                 NFCe.Comissao(q1.FieldByName('nfc_codigo').AsInteger);
                  if q1.FieldByName('NFCE_IMPORTACAO').AsString = 'Pré-Venda' then
                  NFCe.FaturaPreVenda(q1.FieldByName('NFCE_CODIGOIMPORTACAO').asString,strtoint(frmPrincipal.lb_NumeroVenda.Caption),q1.FieldByName('NFC_VENDEDOR').AsString  );

                ImprimeComprovantes(frmPrincipal.lb_NumeroVenda.Caption,q1.FieldByName('NFC_FORMACREDIARIO').AsFloat);
                frmPrincipal.CaixaLivre;
                close;
               end

            end;
            frmPrincipal.CaixaLivre;


            Close;


      end;
   finally
     FreeandNil(NFCe);
     FreeandNil(q1);
     FreeandNil(f);
   end;
end;

procedure TfrmFinalizar.FinalizaVenda;
var
NFCe : TNfceModel;
q1 : TFDquery;
x, y : Integer;
f : TFuncoesGerais;
begin
   frmPrincipal.VerificaCaixaAberto;
   GravaCliente(frmPrincipal.lb_NVenda.Caption);
   NFCe := TNfceModel.create;
   q1 := TFDquery.Create(nil);
   q1.Connection := dm.Con;
   q1.CachedUpdates := true;
   f := TFuncoesGerais.create;
   try
      with NFCe do
      begin
        with q1 do
        begin
          close;
          sql.Clear;
          sql.Add('select * from tb_nfce where nfc_codigo='+QuotedStr(frmPrincipal.lb_NVenda.Caption));
          open;
          edit;
          FieldByName('NFC_TOTAL_VPROD').AsFloat := F.RetDec(pn_Subtotal.Caption);
          FieldByName('NFC_TOTAL_VNF').AsFloat := F.RetDec(pn_total.Caption);
          FieldByName('NFCE_IMPORTACAO').AsString := frmPrincipal.TipoImportacao.Caption;
          FieldByName('NFCE_CODIGOIMPORTACAO').AsInteger := strtoint(frmPrincipal.importacaoCodigo.Caption);
          FieldByName('NFCE_NUMEROIMPORTACAO').AsInteger := strtoint(frmPrincipal.NumeroImportacao.Caption);
          FieldByName('NFC_FORMADINHEIRO').Asfloat := f.RetDec(edt_fpDinheiro.Text) ;
          FieldByName('NFC_FORMACARTAOCREDITO').Asfloat := f.RetDec(edt_fpCarCredito.Text) ;
          FieldByName('NFC_FORMACARTAODEBITO').Asfloat := f.RetDec(edt_fpCarDebito.Text) ;
          FieldByName('NFC_FORMACREDIARIO').Asfloat := f.RetDec(edt_fpCrediario.Text) ;
          FieldByName('NFC_FORMACHEQUE').Asfloat := f.RetDec(edt_fpCheque.Text) ;
          FieldByName('NFC_PAGDINHEIRO').Asfloat := f.RetDec(edt_Dinheiro.Text) ;
          FieldByName('NFC_TOTAL_VOUTRO').Asfloat := f.RetDec(edt_acresimoDin.Text);
          FieldByName('NFC_PORDESCONTO').Asfloat := f.RetDec(edt_descontoPor.Text);
          FieldByName('NFC_PORACRESCIMO').Asfloat := f.RetDec(edt_AcrescimoPor.Text);
          FieldByName('NFC_TOTAL_VDESC').AsFloat := f.RetDec(edt_descontoDin.Text);
          FieldByName('NFC_CODIGO_VENDEDOR').Asinteger := CodVendedor;
          FieldByName('NFC_VENDEDOR').AsString := NomeVendedor;
          FieldByName('NFCE_CODIGO_CLIENTE').AsInteger := strtoint(edt_codigoCli.Text);
          FieldByName('NFC_TIPO').AsString := 'F';
          if edt_nomeCliente.Text = '' then
             FieldByName('NFC_DEST_XNOME').AsString := 'Consumidor Final'
             else
             FieldByName('NFC_DEST_XNOME').AsString := edt_nomeCliente.Text;
          if frmPrincipal.Global.PRI_PDV_CONF1 = 'True' then
          begin
             if frmIdentificaVendedor = nil then
                frmIdentificaVendedor := TfrmIdentificaVendedor.Create(self);
                frmIdentificaVendedor.ShowModal;
                FieldByName('NFC_CODIGO_VENDEDOR').Asinteger := frmIdentificaVendedor.Codigo;
                FieldByName('NFC_VENDEDOR').AsString := frmIdentificaVendedor.Vendedor;
                FreeandNil(frmIdentificaVendedor);
          end;
          post;
          ApplyUpdates;
          CommitUpdates;
        end;
        frmPrincipal.Panel9.Caption := 'Consultando Status Sefaz...';
        Application.ProcessMessages;
        LerConfNfce;
        frmPrincipal.lb_NumeroVenda.Caption :=SerieNFCe(frmPrincipal.lb_NVenda.Caption, frmPrincipal.lb_NumeroVenda.Caption);
        sleep(500);
        frmPrincipal.Panel9.Caption := 'Enviando Nota para a Sefaz...';
        Application.ProcessMessages;
        GerarNFCe(frmPrincipal.lb_NumeroVenda.Caption,frmPrincipal.lb_NVenda.Caption);
        dm.ACBrNFe.NotasFiscais.Assinar;
        dm.ACBrNFe.NotasFiscais.Validar;
        NFCe.ConsultaStatusNFce;
        if dm.ACBrNFe.Configuracoes.Geral.FormaEmissao = teOffLine then
         begin
          dm.ACBrNFe.NotasFiscais.Imprimir;
          q1.Edit;
          q1.FieldByName('NFC_XMOTIVO').AsString := 'Contingência';
          q1.FieldByName('NFC_IDE_ID').AsString:= Copy(dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Id, Pos('NFe', dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Id) + 3, Length(dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Id));
          q1.FieldByName('NFC_PROCNFE_NPROT').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
          q1.FieldByName('NFC_TIPO').AsString:= 'F';
          q1.Post;
          q1.ApplyUpdates;
          q1.CommitUpdates;
          NfCe.RetiraEstoque(q1.FieldByName('nfc_codigo').AsString, q1.FieldByName('NFC_DEST_XNOME').AsString, q1.FieldByName('NFCE_CODIGO_CLIENTE').AsString, strtoint(frmPrincipal.lb_NumeroVenda.Caption));
          if frmPrincipal.ImportaStatus.caption ='' then
          NfCe.MovimentacaoFinanceira(frmPrincipal.lb_NVenda.Caption, TipoVenda,CodigoVenda,'F');
          //Comissão
          if (frmPrincipal.Global.PRI_PDV_CONF6 = 'True') and (frmPrincipal.ImportaStatus.caption ='' ) then
             NFCe.Comissao(q1.FieldByName('nfc_codigo').AsInteger);
          if q1.FieldByName('NFCE_IMPORTACAO').AsString = 'Pré-Venda' then
             NFCe.FaturaPreVenda(q1.FieldByName('NFCE_CODIGOIMPORTACAO').asString,strtoint(frmPrincipal.lb_NumeroVenda.Caption),q1.FieldByName('NFC_VENDEDOR').AsString  );
          ImprimeComprovantes(frmPrincipal.lb_NumeroVenda.Caption,q1.FieldByName('NFC_FORMACREDIARIO').AsFloat);
          JogaValoreOficiais(q1.FieldByName('nfc_codigo').AsString, q1.FieldByName('NFC_PORDESCONTO').AsFloat,q1.FieldByName('NFC_PORACRESCIMO').AsFloat, StrToInt(frmPrincipal.lb_NumeroVenda.Caption));
          frmPrincipal.CaixaLivre;
          frmPrincipal.Memo1.Clear;
          close;

         end
         else
         begin
          dm.ACBrNFe.WebServices.Consulta.NFeChave :=dm.ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.id;
          dm.ACBrNFe.WebServices.Consulta.Executar;
          x := dm.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.cNF;
          y := dm.ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF;
          if (dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat in [0, 217]) then
          begin
            try
            dm.ACBrNFe.Enviar(FormatDateTime('ddmmyyyyhhmmss', Now), true, true);
            if dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat in [100,150] then
               begin
                frmPrincipal.Panel9.Caption := 'Nota Autorizada...';
                Application.ProcessMessages;
                sleep(500);
                q1.Edit;
                q1.FieldByName('NFC_XMOTIVO').AsString := dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.xMotivo;;
                q1.FieldByName('NFC_IDE_ID').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.chNFe;
                q1.FieldByName('NFC_PROCNFE_NPROT').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
                q1.FieldByName('NFC_TIPO').AsString:= 'F';
                q1.Post;
                q1.ApplyUpdates;
                q1.CommitUpdates;
                NfCe.RetiraEstoque(q1.FieldByName('nfc_codigo').AsString, q1.FieldByName('NFC_DEST_XNOME').AsString, q1.FieldByName('NFCE_CODIGO_CLIENTE').AsString, strtoint(frmPrincipal.lb_NumeroVenda.Caption));
                if frmPrincipal.ImportaStatus.caption ='' then
                NfCe.MovimentacaoFinanceira(frmPrincipal.lb_NVenda.Caption, TipoVenda, CodigoVenda,'F');
                if (frmPrincipal.Global.PRI_PDV_CONF6 = 'True') and (frmPrincipal.ImportaStatus.caption ='' ) then
                NFCe.Comissao(q1.FieldByName('nfc_codigo').AsInteger);
                if q1.FieldByName('NFCE_IMPORTACAO').AsString = 'Pré-Venda' then
                NFCe.FaturaPreVenda(q1.FieldByName('NFCE_CODIGOIMPORTACAO').asString,strtoint(frmPrincipal.lb_NumeroVenda.Caption),q1.FieldByName('NFC_VENDEDOR').AsString  );
                ImprimeComprovantes(frmPrincipal.lb_NumeroVenda.Caption,q1.FieldByName('NFC_FORMACREDIARIO').AsFloat);
                JogaValoreOficiais(q1.FieldByName('nfc_codigo').AsString, q1.FieldByName('NFC_PORDESCONTO').AsFloat,q1.FieldByName('NFC_PORACRESCIMO').AsFloat,StrToInt(frmPrincipal.lb_NumeroVenda.Caption));
                frmPrincipal.CaixaLivre;
                frmPrincipal.Memo1.Clear;
                close;
               end;
            except
             on E: Exception do
             begin
                frmPrincipal.Panel9.Caption := E.Message;
                Application.ProcessMessages;
                sleep(500);
                q1.Edit;
                q1.FieldByName('NFC_XMOTIVO').AsString := E.Message;
                q1.FieldByName('NFC_IDE_ID').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.chNFe;
                q1.FieldByName('NFC_PROCNFE_NPROT').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
                q1.FieldByName('NFC_TIPO').AsString:= 'F';
                q1.Post;
                q1.ApplyUpdates;
                q1.CommitUpdates;
                ShowMessage(E.Message);
                abort;
             end;
            end;



              { else
               begin
               dm.ACBrNFe.Configuracoes.Geral.FormaEmissao := teOffLine;
               GerarNFCe(frmPrincipal.lb_NumeroVenda.Caption,frmPrincipal.lb_NVenda.Caption);
               dm.ACBrNFe.NotasFiscais.Assinar;
               dm.ACBrNFe.NotasFiscais.Validar;
               dm.ACBrNFe.NotasFiscais.Imprimir;
                q1.Edit;
                q1.FieldByName('NFC_XMOTIVO').AsString := 'Contingência';
                q1.FieldByName('NFC_IDE_ID').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.chNFe;
                q1.FieldByName('NFC_PROCNFE_NPROT').AsString:= dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.nProt;
                q1.FieldByName('NFC_TIPO').AsString:= 'F';
                q1.Post;
                q1.ApplyUpdates;
                q1.CommitUpdates;
                NfCe.RetiraEstoque(q1.FieldByName('nfc_codigo').AsString, q1.FieldByName('NFC_DEST_XNOME').AsString, q1.FieldByName('NFCE_CODIGO_CLIENTE').AsString, strtoint(frmPrincipal.lb_NumeroVenda.Caption));
                if frmPrincipal.ImportaStatus.caption ='' then
                NfCe.MovimentacaoFinanceira(frmPrincipal.lb_NVenda.Caption, TipoVenda, CodigoVenda,'F');
                if (frmPrincipal.Global.PRI_PDV_CONF6 = 'True') and (frmPrincipal.ImportaStatus.caption ='' ) then
                NFCe.Comissao(q1.FieldByName('nfc_codigo').AsInteger);
                if q1.FieldByName('NFCE_IMPORTACAO').AsString = 'Pré-Venda' then
                NFCe.FaturaPreVenda(q1.FieldByName('NFCE_CODIGOIMPORTACAO').asString,strtoint(frmPrincipal.lb_NumeroVenda.Caption),q1.FieldByName('NFC_VENDEDOR').AsString  );
                ImprimeComprovantes(frmPrincipal.lb_NumeroVenda.Caption,q1.FieldByName('NFC_FORMACREDIARIO').AsFloat);
                JogaValoreOficiais(q1.FieldByName('nfc_codigo').AsString, q1.FieldByName('NFC_PORDESCONTO').AsFloat,q1.FieldByName('NFC_PORACRESCIMO').AsFloat,StrToInt(frmPrincipal.lb_NumeroVenda.Caption));
                frmPrincipal.CaixaLivre;
                frmPrincipal.Memo1.Clear;
                close;
               end;}
            end;
            frmPrincipal.CaixaLivre;


            Close;
          end;
         end;

   finally
     FreeandNil(NFCe);
     FreeandNil(q1);
     FreeandNil(f);
   end;
end;

procedure TfrmFinalizar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ((Shift = [ssCtrl]) and (key = vk_f1)) then
  begin
    FinalizaF1;
  end;
end;

procedure TfrmFinalizar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  if key = #27 then
     close;
end;

procedure TfrmFinalizar.FormShow(Sender: TObject);
begin
TipoVenda := 'NFCe';
CodigoVenda := frmPrincipal.lb_NVenda.Caption;
CarregaFormasDePagamento;
pn_Subtotal.Caption := FormatFloat('###,###,##0.00', TotalApagar);
pn_Total.Caption := FormatFloat('###,###,##0.00', TotalApagar);
edt_fpDinheiro.Text :=  FormatFloat('###,###,##0.00', TotalApagar);
CarregaPrevendaImportada;
end;

procedure TfrmFinalizar.GravaCliente(CodigoVenda : String);
var
q1, q2 : TFDquery;
f : TFuncoesGerais;
begin

          q2 := TFDquery.Create(nil);
          q2.Connection := dm.Con;
          q2.CachedUpdates := true;
          try
            with q2 do
            begin
              close;
              sql.Clear;
              sql.Add('select * from TB_NFCE where nfc_codigo='+QuotedStr(CodigoVenda));
              open;
              edit;
              if edt_nomeCliente.Text <> '' then
              begin
              FieldByName('NFC_DEST_CNPJ').asString := f.SoNumeros(edt_cpfcnpj.Text);
              FieldByName('NFC_DEST_XNOME').asString := edt_nomeCliente.Text;
              FieldByName('NFCE_CODIGO_CLIENTE').AsInteger := strtoint(edt_codigoCli.Text);
              FieldByName('NFC_TOTAL_VNF').AsFloat := f.RetDec(pn_Total.Caption);
              FieldByName('NFC_TOTAL_VPROD').AsFloat := f.RetDec(pn_Subtotal.Caption);
              FieldByName('NFC_TOTAL_VDESC').AsFloat := f.RetDec(edt_descontoDin.Text);
              FieldByName('NFC_PORDESCONTO').AsFloat := f.RetDec(edt_descontoPor.Text);

              FieldByName('NFC_FORMADINHEIRO').AsFloat := f.RetDec(edt_fpDinheiro.Text);
              FieldByName('NFC_FORMACARTAOCREDITO').AsFloat := f.RetDec(edt_fpCarCredito.Text);
              FieldByName('NFC_FORMACARTAODEBITO').AsFloat := f.RetDec(edt_fpCarDebito.Text);
              FieldByName('NFC_FORMACREDIARIO').AsFloat := f.RetDec(edt_fpCrediario.Text);
              FieldByName('NFC_FORMACHEQUE').AsFloat := f.RetDec(edt_fpCheque.Text);
              end
              else
              begin
              FieldByName('NFC_DEST_CNPJ').asString := '';
              FieldByName('NFC_DEST_XNOME').asString := 'Consumidor Final';
              FieldByName('NFCE_CODIGO_CLIENTE').AsInteger := 0;
              FieldByName('NFC_TOTAL_VNF').AsFloat := f.RetDec(pn_Total.Caption);
              FieldByName('NFC_TOTAL_VPROD').AsFloat := f.RetDec(pn_Subtotal.Caption);
              FieldByName('NFC_TOTAL_VDESC').AsFloat := f.RetDec(edt_descontoDin.Text);
              FieldByName('NFC_PORDESCONTO').AsFloat := f.RetDec(edt_descontoPor.Text);

              FieldByName('NFC_FORMADINHEIRO').AsFloat := f.RetDec(edt_fpDinheiro.Text);
              FieldByName('NFC_FORMACARTAOCREDITO').AsFloat := f.RetDec(edt_fpCarCredito.Text);
              FieldByName('NFC_FORMACARTAODEBITO').AsFloat := f.RetDec(edt_fpCarDebito.Text);
              FieldByName('NFC_FORMACREDIARIO').AsFloat := f.RetDec(edt_fpCrediario.Text);
              FieldByName('NFC_FORMACHEQUE').AsFloat := f.RetDec(edt_fpCheque.Text);
              end;
              post;
              ApplyUpdates;
              CommitUpdates;
            end;
          finally
            FreeandNil(q2);
          end

end;

procedure TfrmFinalizar.GravaPrevenda;
var
q1 : TFDquery;
f : TFuncoesGerais;
x : Double;
begin
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;
    q1.CachedUpdates := true;
    f := TFuncoesGerais.create;
    try
    with q1 do
     begin
      close;
      sql.Clear;
      sql.Add('select * from TB_NFCE where nfc_codigo='+QuotedStr(frmPrincipal.lb_NVenda.Caption));
      open;
      edit;
      FieldByName('NFC_TOTAL_VPROD').AsFloat := F.RetDec(pn_Subtotal.Caption);
      FieldByName('NFC_TOTAL_VNF').AsFloat := F.RetDec(pn_Subtotal.Caption);
      FieldByName('NFCE_IMPORTACAO').AsString := frmPrincipal.TipoImportacao.Caption;
      FieldByName('NFCE_CODIGOIMPORTACAO').AsInteger := strtoint(frmPrincipal.importacaoCodigo.Caption);
      FieldByName('NFCE_NUMEROIMPORTACAO').AsInteger := strtoint(frmPrincipal.NumeroImportacao.Caption);
      FieldByName('NFC_FORMADINHEIRO').Asfloat := f.RetDec(edt_fpDinheiro.Text) ;
      FieldByName('NFC_FORMACARTAOCREDITO').Asfloat := f.RetDec(edt_fpCarCredito.Text) ;
      FieldByName('NFC_FORMACARTAODEBITO').Asfloat := f.RetDec(edt_fpCarDebito.Text) ;
      FieldByName('NFC_FORMACREDIARIO').Asfloat := f.RetDec(edt_fpCrediario.Text) ;
      FieldByName('NFC_FORMACHEQUE').Asfloat := f.RetDec(edt_fpCheque.Text) ;
      FieldByName('NFC_PAGDINHEIRO').Asfloat := f.RetDec(edt_Dinheiro.Text) ;
      x := f.RetDec(edt_fpCrediario.Text) ;
      post;
      ApplyUpdates;
      CommitUpdates;
     end;
    finally
      FreeandNil(q1);
      FreeandNil(f);
    end;
end;


procedure TfrmFinalizar.ImprimeComprovantes(NumeroVenda : String; vlrCrediario : Double);
var
Carne : TParcelasVendasModel;
begin
 if vlrCrediario > 0 then
 begin
  Carne := TParcelasVendasModel.create;
  try
   if frmPrincipal.Global.PRI_PDV_CONF2 = 'True' then
   begin
    Carne.ImprimeDuplicata(strtoint(NumeroVenda), 'NFC-e');
   end;
   if frmPrincipal.Global.PRI_PDV_CONF4 = 'True' then
   begin
    Carne.ImprimePromissoria(strtoint(NumeroVenda), 'NFC-e');
   end;
   if frmPrincipal.Global.PRI_PDV_CONF7 = 'True' then
   begin
    Carne.ImprimeCarne(strtoint(NumeroVenda), 'NFC-e');
   end;
   if frmPrincipal.Global.PRI_PDV_CONF8 = 'True' then
   begin
    if application.MessageBox('Imprimir Carnê?','Atenção', mb_yesno + mb_iconquestion) = idyes then
       Carne.ImprimeCarnelx300(strtoint(NumeroVenda), 'NFC-e');
   end;

   Carne.ImprimeViaClienteCrediario(strtoint(NumeroVenda), 'NFC-e');
  finally
    FreeandNil(Carne);
  end;
 end;
end;

procedure TfrmFinalizar.ImprimeNFCe;
var
caminho : TIniFile;
caminhoxml : string;
begin
  inherited;


  caminho := TIniFile.Create(ExtractFilePath(Application.exeName) + '\conf.ini');
  try
           if caminho.ReadString('NFC-e','mapeamentoxml ','') = '' then
             begin
               caminhoxml := GetCurrentDir + '\nfce\xml';
             end;
            if caminho.ReadString('NFC-e','mapeamentoxml ','') <> '' then
             begin
               caminhoxml := caminho.ReadString('NF-e','mapeamentoxmlnfe ','');

             end;

  dm.ACBrNFe.NotasFiscais.LoadFromFile(caminhoxml+'\'+dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.chNFe+'-nfe.xml', false);


  finally
    FreeandNil(caminho)
  end;
end;

procedure TfrmFinalizar.JogaCliente(codigo : string);
var
q1 : TFdquery;
begin

   q1 := TFdquery.Create(nil);
   q1.Connection := dm.Con;
   try
     with q1 do
     begin
       q1.close;
       q1.sql.Clear;
       q1.sql.Add('select * from tb_clientes where cli_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
       q1.sql.Add('and cli_codigo ='+QuotedStr(codigo));
       q1.open;
       if q1.IsEmpty then
       begin
        q1.close;
        q1.sql.Clear;
        q1.sql.Add('select * from tb_clientes where cli_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
        q1.sql.Add('and CLI_CPFCNPJ ='+QuotedStr(codigo));
        q1.open;
       end;

       if not q1.IsEmpty then
       begin
           if  VerificaParcelasAtrasadas(q1.FieldByName('cli_codigo').AsString) = false then
        begin
        edt_nomeCliente.Text := '';
        edt_cpfcnpj.Text := '';
        edt_nomeCliente.SetFocus;
        abort;
        end;
        if q1.FieldByName('CLI_BLOQUEADO').AsString = 'True' then

        edt_fpCrediario.Enabled := false
        else
        edt_fpCrediario.Enabled := true;

        edt_nomeCliente.Text := q1.FieldByName('cli_nomerazao').AsString;
        edt_codigoCli.Text := q1.FieldByName('cli_codigo').AsString;
        if Length(q1.fieldByName('cli_cpfcnpj').asstring) = 11 then
         begin
           edt_cpfcnpj.Text := FormatMaskText('999.999.999-99;0', q1.fieldByName('cli_cpfcnpj').asstring);
         end;
         if Length(q1.FieldByName('cli_cpfcnpj').asstring) = 14 then
         begin
          edt_cpfcnpj.Text := FormatMaskText('99.999.999/9999-99;0', q1.fieldByName('cli_cpfcnpj').asstring);
         end;

       end;
     end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TfrmFinalizar.JogaValoreOficiais(CodVenda: String; Desconto,Acrescimo : Double; nnfce : Integer );
var
q1 : TFDquery;
vlrd, vlra,x : Double;
begin


    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;
    q1.CachedUpdates := true;

    try
      with q1 do
      begin
         close;
         sql.Clear;
         sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE='+QuotedStr(CodVenda));
         open;
         while not eof do
         begin
          q1.Edit;
          if Desconto > 0 then
          q1.FieldByName('NFC_PORDESCONTO').AsFloat := Desconto;
          if Acrescimo > 0 then
          q1.FieldByName('NFC_PORACRESCIMO').AsFloat := Acrescimo;
          vlrd := Desconto * q1.FieldByName('NFC_PROD_VPROD').AsFloat / 100;
          vlra := Acrescimo * q1.FieldByName('NFC_PROD_VPROD').AsFloat / 100;
          q1.FieldByName('NFC_VALORFINALPRODUTO').AsFloat := q1.FieldByName('NFC_PROD_VPROD').AsFloat -  vlrd + vlra;
          x := q1.FieldByName('NFC_VALORFINALPRODUTO').AsFloat - q1.FieldByName('NFC_CUSTOPRODUTO').AsFloat;
          q1.FieldByName('NFC_DATA').AsDateTime := now;
          q1.FieldByName('NFC_NNFCE').AsInteger := nnfce;
          if q1.FieldByName('NFC_CUSTOPRODUTO').AsFloat > 0 then
          q1.FieldByName('NFC_PORLUCRO').AsFloat :=  x * 100 / q1.FieldByName('NFC_CUSTOPRODUTO').AsFloat
          else
          q1.FieldByName('NFC_PORLUCRO').AsFloat := 0;
          q1.Post;
          ApplyUpdates;
          CommitUpdates;

          q1.Next;
         end;
      end;
    finally
      FreeandNil(q1);

    end;

end;

procedure TfrmFinalizar.LancaCliente;
begin

 try

   if  VerificaParcelasAtrasadas(fdcli.FieldByName('cli_codigo').AsString) = false then
     begin
       edt_nomeCliente.Text := '';
       edt_cpfcnpj.Text := '';
       edt_nomeCliente.SetFocus;
       abort;
     end;
    if FDcli.FieldByName('CLI_BLOQUEADO').AsString = 'True' then

      edt_fpCrediario.Enabled := false
      else
      edt_fpCrediario.Enabled := true;

  edt_nomeCliente.Text := FDcli.FieldByName('cli_nomerazao').AsString;
  edt_codigoCli.Text := fdcli.FieldByName('cli_codigo').AsString;
  if Length(FDCli.fieldByName('cli_cpfcnpj').asstring) = 11 then
         begin
           edt_cpfcnpj.Text := FormatMaskText('999.999.999-99;0', FDCli.fieldByName('cli_cpfcnpj').asstring);
         end;
         if Length(FDCli.FieldByName('cli_cpfcnpj').asstring) = 14 then
         begin
          edt_cpfcnpj.Text := FormatMaskText('99.999.999/9999-99;0', FDCli.fieldByName('cli_cpfcnpj').asstring);
         end;
 finally
   dbgrid2.Visible := false;
   edt_cpfcnpj.SetFocus;
 end;
end;

function TfrmFinalizar.VerificaParcelasAtrasadas(CodCli: String): Boolean;
var
UsuM : TUsuariosModel;
Crip : String;
q3, q4 : TFDQuery;
q1, q2 : TFDQuery;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;

   q2 := TFDQuery.Create(nil);
   q2.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_CONTASARECEBER where CRE_CODIGO_CLIENTE ='+QuotedStr(CodCli));
       sql.Add('and CRE_STATUS ='+QuotedStr('Atrasado'));
       open;
       if not IsEmpty then
       begin
        if Application.MessageBox(pchar('O Cliente :'+CodCli+' - '+FieldByName('CRE_NOME_CLIENTE').AsString+' Possui dívida ativa no sistema'+#13+'Vender Assim mesmo?'),'Atenção', mb_yesno + mb_iconquestion) = idyes then
        begin
          if frmSenhaAdmin = nil then
             frmSenhaAdmin := TfrmSenhaAdmin.Create(nil);
             frmSenhaAdmin.ShowModal;
             if frmSenhaAdmin.Senha <> '' then
         begin
           UsuM := TUsuariosModel.create;
           q3 := TFDQuery.Create(nil);
           q3.Connection := dm.Con;


           q4 := TFDQuery.Create(nil);
           q4.Connection := dm.Con;
           try
                Crip := UsuM.Criptografar(frmSenhaAdmin.Senha);
             with q1 do
              begin
              close;
              sql.Clear;
              sql.Add('select * from TB_USUARIOS where USU_SENHA='+QuotedStr(Crip));
              open;
              if not IsEmpty then
               begin
              while not eof do
               begin
               q2.Close;
               q2.SQL.Clear;
               q2.SQL.Add('select * from TB_PERMISSOES where PER_CODIGO='+QuotedStr(q1.FieldByName('USU_CODIGO_NIVEL').AsString));
               q2.open;
              if q2.FieldByName('PER_ADMINISTRADOR').AsString = 'True' then
              begin
               Result := True;
               q1.Last;
              end;

              next;
              end;
             end;
            end;
           finally
            FreeandNil(UsuM);
            Freeandnil(q3);
            Freeandnil(q4);
           end;
           result := true;
           Close;

         end
         else
         begin
         Result := false;
          Close;
         end;
         FreeandNil(frmSenhaAdmin);
        end
        else
        begin
         Result := false;
        end;

       end
       else
       Result := True;
     end;
   finally
     FreeandNil(q1);
     FreeandNil(q2);

   end;
end;

procedure TfrmFinalizar.ZeraEdits;
begin
  edt_fpCarCredito.Text := '0,00';
  edt_fpCarDebito.Text := '0,00';
  edt_fpCheque.Text := '0,00';
  edt_fpCrediario.Text := '0,00';
end;

end.
