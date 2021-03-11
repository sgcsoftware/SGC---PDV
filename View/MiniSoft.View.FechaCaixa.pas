unit MiniSoft.View.FechaCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  MiniSoft.Funcoes, Conexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, MiniSoft.Controller.ABREFECHACAIXA,
  MiniSoft.Model.ABREFECHACAIXA, MiniSoft.Model.Caixa, MiniSoft.Controller.Caixa,
  uDWConstsData, uRESTDWPoolerDB;

type
  TfrmAbreFechaCaixa = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    FDQuery1: TFDQuery;
    label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Dinheiro: TLabel;
    Credito: TLabel;
    Debito: TLabel;
    Crediario: TLabel;
    Cheque: TLabel;
    codigoid: TLabel;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    entrada: TLabel;
    saida: TLabel;
    Label13: TLabel;
    Caixa: TLabel;
    CodigoId2: TLabel;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure FechaCaixa;
    function ConfirmaValores(vlr1, vlr2 : Double) : boolean;
  public
    { Public declarations }
    Tipo : String;
    Cancela : String;
  end;

var
  frmAbreFechaCaixa: TfrmAbreFechaCaixa;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal;

procedure TfrmAbreFechaCaixa.Button1Click(Sender: TObject);
var
q1,q2 : TFDquery;
entradax, saidax, Dinheirox, Creditox, Debitox, Crediariox, Chequex, total,
entradax1, saidax1, Dinheirox1, Creditox1, Debitox1, Crediariox1, Chequex1 : Double;
f : TFuncoesGerais;
begin
  inherited;

     q1 := TFDquery.create(nil);
     q1.Connection := dm.Con;

     f := TFuncoesGerais.create;
     ConfirmaValores(f.RetDec(edit1.Text), f.RetDec(edit2.Text));
     try
     with q1 do
      begin
       Close;
       Sql.Clear;
       sql.Add('select *  from TB_NFCE where nfc_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
       sql.Add('and NFC_IDE_DHEMI='+QuotedStr(FormatDateTime('yyyy-mm-dd', now)));
       sql.Add('and NFC_COD_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
       sql.Add('and NFC_FECHADA='+QuotedStr('N'));
       sql.Add('and nfc_xmotivo='+QuotedStr('Autorizado o uso da NF-e'));
       sql.Add('and nfc_tipo='+QuotedStr('F'));
       open;
        with q1 do
       begin
        DisableControls;
        First;
        while not Eof do
        begin
        Dinheirox    := (Dinheirox + q1.FieldByName('NFC_FORMADINHEIRO').AsFloat);
        Creditox    := (Creditox + q1.FieldByName('NFC_FORMACARTAOCREDITO').AsFloat);
        Debitox    := (Debitox + q1.FieldByName('NFC_FORMACARTAODEBITO').AsFloat);
        Crediariox    := (Crediariox + q1.FieldByName('NFC_FORMACREDIARIO').AsFloat);
        Chequex    := (Chequex + q1.FieldByName('NFC_FORMACHEQUE').AsFloat);
        edit;
        q1.FieldByName('NFC_FECHADA').AsString := 'S';
        post;
        Next;

        end;

       Close;
       Sql.Clear;
       sql.Add('select *  from TB_NFE where nfe_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
       sql.Add('and NFe_IDE_DHEMI='+QuotedStr(FormatDateTime('yyyy-mm-dd', now)));
       sql.Add('and NFe_COD_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
       sql.Add('and NFe_FECHADA='+QuotedStr('N'));
       sql.Add('and nfe_xmotivo='+QuotedStr('Autorizado o uso da NF-e'));
       //sql.Add('and nfe_tipo='+QuotedStr('R'));
       open;
        with q1 do
        begin
        DisableControls;
        First;
        while not Eof do
        begin
        Dinheirox1    := (Dinheirox1 + q1.FieldByName('NFE_FORMADINHEIRO').AsFloat);
        Creditox1    := (Creditox1 + q1.FieldByName('NFE_FORMACARTAOCREDITO').AsFloat);
        Debitox1    := (Debitox1 + q1.FieldByName('NFE_FORMACARTAODEBITO').AsFloat);
        Crediariox1    := (Crediariox1 + q1.FieldByName('NFE_FORMACREDIARIO').AsFloat);
        Chequex1    := (Chequex1 + q1.FieldByName('NFC_FORMACHEQUE').AsFloat);
        edit;
        q1.FieldByName('NFE_FECHADA').AsString := 'S';
        post;
        Next;

        end;
        EnableControls;
        Dinheiro.Caption := formatfloat('###,###,##0.00', Dinheirox+Dinheirox1);
        credito.Caption := formatfloat('###,###,##0.00', Creditox+Creditox1);
        Debito.Caption := formatfloat('###,###,##0.00', Debitox+Debitox);
        Crediario.Caption := formatfloat('###,###,##0.00', Crediariox+Crediariox1);
        Cheque.Caption := formatfloat('###,###,##0.00', Chequex+Chequex1);

        end;

       end;
      end;
     finally
      FreeandNil(q1);
      FreeandNil(f);
     end;
     q2 := TFDquery.create(nil);
     q2.Connection := dm.Con;

     try
      with q2 do
        begin
       Close;
       Sql.Clear;
       sql.Add('select *  from tb_caixa where cai_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
       sql.Add('and Cai_data='+QuotedStr(FormatDateTime('yyyy-mm-dd', now)));
       sql.Add('and CAI_STATUS_ABREFECHACAIXA='+QuotedStr('Aberto'));
      // sql.Add('and CAI_TIPO='+QuotedStr(Tipo));
       sql.Add('and CAI_CODIGO_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
       open;
        with q2 do
       begin
        DisableControls;
        First;
        while not Eof do
        begin
        Entradax    := (Entradax + q2.FieldByName('CAI_ENTRADA').AsFloat);
        Saidax    := (Saidax + q2.FieldByName('CAI_SAIDA').AsFloat);

        Next;
        end;
        EnableControls;
        Total := Entradax - Saidax;
        Caixa.Caption := formatfloat('###,###,##0.00', Total);
        entrada.Caption := formatfloat('###,###,##0.00',Entradax);
        saida.Caption := formatfloat('###,###,##0.00',Saidax);
        FechaCaixa;
       end;
      end;

     finally
       Freeandnil(q2);
     end;

    ShowMessage('Caixa Fechado com Sucesso!');
end;

procedure TfrmAbreFechaCaixa.Button3Click(Sender: TObject);
begin
Cancela := 'Sim';
Close;
end;

function TfrmAbreFechaCaixa.ConfirmaValores(vlr1, vlr2: Double): boolean;
begin
  Result := True;
  if vlr1 <> vlr2 then
  begin
    ShowMessage('Os valores da gaveta não conferem!');
    abort;
  end;

end;

procedure TfrmAbreFechaCaixa.Edit1Exit(Sender: TObject);
var
f : TFuncoesGerais;
begin
   f := TFuncoesGerais.create;
   try
      edit1.Text := FormatFloat('###,###,##0.00', f.RetDec(edit1.Text))
   finally
     FreeandNil(f);
   end;
end;

procedure TfrmAbreFechaCaixa.Edit2Exit(Sender: TObject);
var
f : TFuncoesGerais;
begin
   f := TFuncoesGerais.create;
   try
      edit2.Text := FormatFloat('###,###,##0.00', f.RetDec(edit2.Text))
   finally
     FreeandNil(f);
   end;
end;

procedure TfrmAbreFechaCaixa.FechaCaixa;
var
q2 : TFDquery;
entrada, Saida, Total, Entradax,Saidax,Entradax1,Saidax1 : Double;
abM : TAbreFechaCaixa;
abC : TAbreFechaCaixaController;
f : TFuncoesGerais;
caixaModel : TCaixaModel;
caixaController : TCaixaController;
begin
  inherited;

     q2 := TFDquery.create(nil);
     q2.Connection := dm.Con;

     try
     with q2 do
      begin
       q2.Close;
       q2.Sql.Clear;
       q2.sql.add('select *  from tb_caixa where CAI_BENEFICIARIO =:pCAI_BENEFICIARIO');
       q2.sql.add('and CAI_DATA =:pCAI_DATA');
       q2.sql.add('and CAI_STATUS_ABREFECHACAIXA =:pCAI_STATUS_ABREFECHACAIXA');
       q2.sql.add('and CAI_TIPO =:pCAI_TIPO');
       q2.sql.add('and CAI_CODIGO_USUARIO =:pCAI_CODIGO_USUARIO');
       q2.ParamByName('pCAI_BENEFICIARIO').AsString :=  frmPrincipal.Global.PRI_CPFCNPJ;
       q2.ParamByName('pCAI_DATA').AsString := FormatDateTime('yyyy-mm-dd', now);
       q2.ParamByName('pCAI_STATUS_ABREFECHACAIXA').AsString := 'Aberto';
       q2.ParamByName('pCAI_TIPO').AsString := 'F';
       q2.ParamByName('pCAI_CODIGO_USUARIO').AsInteger := frmPrincipal.PerM.CodigoUser;
       q2.Open;
       {q2.sql.Add('select *  from tb_caixa where cai_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
       q2.sql.Add('and Cai_data='+QuotedStr(FormatDateTime('yyyy-mm-dd', edt_data.Date)));
       q2.sql.Add('and CAI_STATUS_ABREFECHACAIXA ='+QuotedStr('Aberto'));
       q2.sql.Add('and CAI_TIPO='+QuotedStr(Tipo));
       q2.sql.Add('and CAI_CODIGO_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
       q2.open;}
        q2.First;
        while not q2.Eof do
        begin
        Entradax    := (Entradax + q2.FieldByName('CAI_ENTRADA').AsFloat);
        Saidax    := (Saidax + q2.FieldByName('CAI_SAIDA').AsFloat);
        q2.Edit;
        q2.FieldByName('CAI_CODIGO_ABREFECHACAIXA').AsInteger := strtoint(codigoid.Caption);
        q2.FieldByName('CAI_STATUS_ABREFECHACAIXA').AsString := 'Fechado';
        q2.Post;
        Next;
        end;

       q2.Close;
       q2.Sql.Clear;
       q2.sql.add('select *  from tb_caixa where CAI_BENEFICIARIO =:pCAI_BENEFICIARIO');
       q2.sql.add('and CAI_DATA =:pCAI_DATA');
       q2.sql.add('and CAI_STATUS_ABREFECHACAIXA =:pCAI_STATUS_ABREFECHACAIXA');
       q2.sql.add('and CAI_TIPO =:pCAI_TIPO');
       q2.sql.add('and CAI_CODIGO_USUARIO =:pCAI_CODIGO_USUARIO');
       q2.ParamByName('pCAI_BENEFICIARIO').AsString :=  frmPrincipal.Global.PRI_CPFCNPJ;
       q2.ParamByName('pCAI_DATA').AsString := FormatDateTime('yyyy-mm-dd', now);
       q2.ParamByName('pCAI_STATUS_ABREFECHACAIXA').AsString := 'Aberto';
       q2.ParamByName('pCAI_TIPO').AsString := 'R';
       q2.ParamByName('pCAI_CODIGO_USUARIO').AsInteger := frmPrincipal.PerM.CodigoUser;
       q2.Open;
       {q2.sql.Add('select *  from tb_caixa where cai_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
       q2.sql.Add('and Cai_data='+QuotedStr(FormatDateTime('yyyy-mm-dd', edt_data.Date)));
       q2.sql.Add('and CAI_STATUS_ABREFECHACAIXA ='+QuotedStr('Aberto'));
       q2.sql.Add('and CAI_TIPO='+QuotedStr(Tipo));
       q2.sql.Add('and CAI_CODIGO_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
       q2.open;}
        q2.First;
        while not q2.Eof do
        begin
        Entradax1    := (Entradax1 + q2.FieldByName('CAI_ENTRADA').AsFloat);
        Saidax1    := (Saidax1 + q2.FieldByName('CAI_SAIDA').AsFloat);
        q2.Edit;
        q2.FieldByName('CAI_CODIGO_ABREFECHACAIXA').AsInteger := strtoint(codigoid.Caption);
        q2.FieldByName('CAI_STATUS_ABREFECHACAIXA').AsString := 'Fechado';
        q2.Post;
        Next;
        end;

       abM := TAbreFechaCaixa.create;
       abC := TAbreFechaCaixaController.create;
       f := TFuncoesGerais.create;
       try
        with abM,f do
        begin
        ABR_CODIGO := strtoint(codigoid.Caption);
        ABR_VALOR_ENTRADA := RetDec(edit1.Text);
        ABR_VALOR_SAIDA := 0;
        ABR_SALDO := Entrada - Saida;
        ABR_OPERADOR := frmPrincipal.StatusBar1.Panels[6].Text;
        ABR_DATA := now;
        ABR_horas := now;
        ABR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
        ABR_HORAFECHAMENTO := now;
        ABR_DATAFECHAMENTO := now;
        ABR_VALORINFORMADO := RetDec(edit2.Text);
        ABR_STATUS := 'Fechado';
        ABR_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
        ABR_TIPO := 'F';
        end;
        abC.Alterar(abM);

        with abM,f do
        begin
        ABR_CODIGO := strtoint(codigoid2.Caption);
        ABR_VALOR_ENTRADA := RetDec(edit1.Text);
        ABR_VALOR_SAIDA := 0;
        ABR_SALDO := Entradax1 - Saidax1;
        ABR_OPERADOR := frmPrincipal.StatusBar1.Panels[6].Text;
        ABR_DATA := now;
        ABR_horas := now;
        ABR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
        ABR_HORAFECHAMENTO := now;
        ABR_DATAFECHAMENTO := now;
        ABR_VALORINFORMADO := RetDec(edit2.Text);
        ABR_STATUS := 'Fechado';
        ABR_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
        ABR_TIPO := 'R';
        end;
        abC.Alterar(abM);
       finally
       FreeandNil(abM);
       FreeandNil(abC);
       FreeandNil(f);
       end;
      end;
     finally
      FreeandNil(q2);
     end;
     f := TFuncoesGerais.create;
     caixaModel := TCaixaModel.create;
     caixaController := TCaixaController.create;
    try
      with  caixaModel, f do
           begin
            CAI_CODIGO := 0;
            CAI_UUID := '';
            CAI_ENTRADA := 0;
            CAI_SAIDA := RetDec(edit2.Text) - Entradax1 + Saidax1;
            CAI_SALDO := 0;
            CAI_DATA := now;
            CAI_HORA := now;
            CAI_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
            CAI_VENDEDOR := '';
            CAI_CODIGO_VENDEDOR := 0;
            CAI_FORMA := 'Fechamento de Caixa';
            CAI_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
            CAI_NVENDA := 0;
            CAI_TIPOMOVIMENTACAO :=  'Fechamento de Caixa';
            CAI_TERMINAL := '';
            CAI_PLANODECONTA := 'Fechamento de Caixa';
            CAI_CODIGO_PLANODECONTA := 0;
            CAI_CODIGO_MOV_PLANODECONTA := 0;
            CAI_CODIGO_CONTASAPAGAR := 0;
            CAI_CODIGO_CONTASARECEBER := 0;
            CAI_CODIGO_PREVENDA := 0;
            CAI_CODIGO_BANCO := 0;
            CAI_RECEITA := 'Fechamento de Caixa';
            CAI_PORTADOR := '';
            CAI_STATUS_ABREFECHACAIXA :='Fechado';
            CAI_TIPO := Tipo;
            CAI_CODIGO_USUARIO :=frmPrincipal.PerM.CodigoUser;
            CAI_NOME_USUARIO := frmPrincipal.PerM.Login;
           end;
           caixaController.inserir(caixaModel);
           CaixaModel.CalculaSaldo(1, now, 'F');

      with  caixaModel, f do
           begin
            CAI_CODIGO := 0;
            CAI_UUID := '';
            CAI_ENTRADA := 0;
            CAI_SAIDA := RetDec(edit2.Text) - Entradax + Saidax;
            CAI_SALDO := 0;
            CAI_DATA := now;
            CAI_HORA := now;
            CAI_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
            CAI_VENDEDOR := '';
            CAI_CODIGO_VENDEDOR := 0;
            CAI_FORMA := 'Fechamento de Caixa';
            CAI_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
            CAI_NVENDA := 0;
            CAI_TIPOMOVIMENTACAO :=  'Fechamento de Caixa';
            CAI_TERMINAL := '';
            CAI_PLANODECONTA := 'Fechamento de Caixa';
            CAI_CODIGO_PLANODECONTA := 0;
            CAI_CODIGO_MOV_PLANODECONTA := 0;
            CAI_CODIGO_CONTASAPAGAR := 0;
            CAI_CODIGO_CONTASARECEBER := 0;
            CAI_CODIGO_PREVENDA := 0;
            CAI_CODIGO_BANCO := 0;
            CAI_RECEITA := 'Fechamento de Caixa';
            CAI_PORTADOR := '';
            CAI_STATUS_ABREFECHACAIXA :='Fechado';
            CAI_TIPO := 'R';
            CAI_CODIGO_USUARIO :=frmPrincipal.PerM.CodigoUser;
            CAI_NOME_USUARIO := frmPrincipal.PerM.Login;
           end;
           caixaController.inserir(caixaModel);
           CaixaModel.CalculaSaldo(1, now, 'R');
    finally

    end;



end;


procedure TfrmAbreFechaCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then
  begin
    ShowMessage('O fechamento do caixa e obrigatório!');
    abort;
  end;
end;

procedure TfrmAbreFechaCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.
