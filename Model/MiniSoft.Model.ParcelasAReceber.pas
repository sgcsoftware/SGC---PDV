unit MiniSoft.Model.ParcelasAReceber;


interface
    uses IniFiles, ACBrUtil, pcnConversao, System.SysUtils, pcnConversaoNFe,
     ACBrDFeSSL, blcksock, Firedac.Comp.Client, Conexao, System.DateUtils,
     Vcl.Forms, Winapi.Windows,uDWConstsData, uRESTDWPoolerDB;
     type
     TContasAReceberModel = class
       private
    FCRE_DATA_VENCIMENTO: TDate;
    FCRE_REF_PARCELA: String;
    FCRE_BENEFICIARIO: String;
    FCRE_BAIRRO_CLIENTE: String;
    FCRE_VALOR_COMPRA: Double;
    FCRE_NUMERO_VENDA: Integer;
    FCRE_DATA_QUITACAO: TDate;
    FCRE_VALOR_MULTA: Double;
    FCRE_VALOR_JUROS: Double;
    FCRE_CODIGO_CLIENTE: Integer;
    FCRE_CPF_CLIENTE: String;
    FCRE_CODIGO: Integer;
    FCRE_VALOR_PAGO: Double;
    FCRE_CODIGO_VENDEDOR: Integer;
    FCRE_CEP_CLIENTE: String;
    FCRE_QTD_PARCELAS: Integer;
    FCRE_NUMERO_CLIENTE: String;
    FCRE_MUNICIPIO_CLIENTE: String;
    FCRE_TIPO_VENDA: String;
    FCRE_OPERADOR: String;
    FCRE_COMPLEMENTO_CLIENTE: String;
    FCRE_VALOR_PARCELA: Double;
    FCRE_NOME_CLIENTE: String;
    FCRE_FORMA_PAGAMENTO: String;
    FCRE_ENDERECO_CLIENTE: String;
    FCRE_NOME_VENDEDOR: String;
    FCRE_DATA_COMPRA: TDate;
    FCRE_STATUS: String;
    FCRE_SELECAO: String;
    FCRE_VALOR_PARCELA_LIMPA: Double;
    FCRE_TIPO: String;
    FCRE_CODIGO_PLANODECONTA: Integer;
    FCRE_NOME_PLANODECONTA: String;
    procedure SetCRE_BAIRRO_CLIENTE(const Value: String);
    procedure SetCRE_BENEFICIARIO(const Value: String);
    procedure SetCRE_CEP_CLIENTE(const Value: String);
    procedure SetCRE_CODIGO(const Value: Integer);
    procedure SetCRE_CODIGO_CLIENTE(const Value: Integer);
    procedure SetCRE_CODIGO_VENDEDOR(const Value: Integer);
    procedure SetCRE_COMPLEMENTO_CLIENTE(const Value: String);
    procedure SetCRE_CPF_CLIENTE(const Value: String);
    procedure SetCRE_DATA_COMPRA(const Value: TDate);
    procedure SetCRE_DATA_QUITACAO(const Value: TDate);
    procedure SetCRE_DATA_VENCIMENTO(const Value: TDate);
    procedure SetCRE_ENDERECO_CLIENTE(const Value: String);
    procedure SetCRE_FORMA_PAGAMENTO(const Value: String);
    procedure SetCRE_MUNICIPIO_CLIENTE(const Value: String);
    procedure SetCRE_NOME_CLIENTE(const Value: String);
    procedure SetCRE_NOME_VENDEDOR(const Value: String);
    procedure SetCRE_NUMERO_CLIENTE(const Value: String);
    procedure SetCRE_NUMERO_VENDA(const Value: Integer);
    procedure SetCRE_OPERADOR(const Value: String);
    procedure SetCRE_QTD_PARCELAS(const Value: Integer);
    procedure SetCRE_REF_PARCELA(const Value: String);
    procedure SetCRE_TIPO_VENDA(const Value: String);
    procedure SetCRE_VALOR_COMPRA(const Value: Double);
    procedure SetCRE_VALOR_JUROS(const Value: Double);
    procedure SetCRE_VALOR_MULTA(const Value: Double);
    procedure SetCRE_VALOR_PAGO(const Value: Double);
    procedure SetCRE_VALOR_PARCELA(const Value: Double);
    procedure SetCRE_STATUS(const Value: String);
    procedure SetCRE_SELECAO(const Value: String);
    procedure SetCRE_VALOR_PARCELA_LIMPA(const Value: Double);
    procedure SetCRE_TIPO(const Value: String);
    procedure SetCRE_CODIGO_PLANODECONTA(const Value: Integer);
    procedure SetCRE_NOME_PLANODECONTA(const Value: String);
       public
       property CRE_CODIGO               : Integer read FCRE_CODIGO write SetCRE_CODIGO;
       property CRE_NOME_CLIENTE         : String read FCRE_NOME_CLIENTE write SetCRE_NOME_CLIENTE;
       property CRE_CODIGO_CLIENTE       : Integer read FCRE_CODIGO_CLIENTE write SetCRE_CODIGO_CLIENTE;
       property CRE_CPF_CLIENTE          : String read FCRE_CPF_CLIENTE write SetCRE_CPF_CLIENTE;
       property CRE_ENDERECO_CLIENTE     : String read FCRE_ENDERECO_CLIENTE write SetCRE_ENDERECO_CLIENTE;
       property CRE_BAIRRO_CLIENTE       : String read FCRE_BAIRRO_CLIENTE write SetCRE_BAIRRO_CLIENTE;
       property CRE_NUMERO_CLIENTE       : String read FCRE_NUMERO_CLIENTE write SetCRE_NUMERO_CLIENTE;
       property CRE_MUNICIPIO_CLIENTE    : String read FCRE_MUNICIPIO_CLIENTE write SetCRE_MUNICIPIO_CLIENTE;
       property CRE_COMPLEMENTO_CLIENTE  : String read FCRE_COMPLEMENTO_CLIENTE write SetCRE_COMPLEMENTO_CLIENTE;
       property CRE_CEP_CLIENTE          : String read FCRE_CEP_CLIENTE write SetCRE_CEP_CLIENTE;
       property CRE_TIPO_VENDA           : String read FCRE_TIPO_VENDA write SetCRE_TIPO_VENDA;
       property CRE_VALOR_PARCELA        : Double read FCRE_VALOR_PARCELA write SetCRE_VALOR_PARCELA;
       property CRE_VALOR_JUROS          : Double read FCRE_VALOR_JUROS write SetCRE_VALOR_JUROS;
       property CRE_VALOR_MULTA          : Double read FCRE_VALOR_MULTA write SetCRE_VALOR_MULTA;
       property CRE_VALOR_PAGO           : Double read FCRE_VALOR_PAGO write SetCRE_VALOR_PAGO;
       property CRE_DATA_COMPRA          : TDate read FCRE_DATA_COMPRA write SetCRE_DATA_COMPRA;
       property CRE_DATA_QUITACAO        : TDate read FCRE_DATA_QUITACAO write SetCRE_DATA_QUITACAO;
       property CRE_DATA_VENCIMENTO      : TDate read FCRE_DATA_VENCIMENTO write SetCRE_DATA_VENCIMENTO;
       property CRE_REF_PARCELA          : String read FCRE_REF_PARCELA write SetCRE_REF_PARCELA;
       property CRE_NUMERO_VENDA         : Integer read FCRE_NUMERO_VENDA write SetCRE_NUMERO_VENDA;
       property CRE_QTD_PARCELAS         : Integer read FCRE_QTD_PARCELAS write SetCRE_QTD_PARCELAS;
       property CRE_VALOR_COMPRA         : Double read FCRE_VALOR_COMPRA write SetCRE_VALOR_COMPRA;
       property CRE_FORMA_PAGAMENTO      : String read FCRE_FORMA_PAGAMENTO write SetCRE_FORMA_PAGAMENTO;
       property CRE_CODIGO_VENDEDOR      : Integer read FCRE_CODIGO_VENDEDOR write SetCRE_CODIGO_VENDEDOR;
       property CRE_NOME_VENDEDOR        : String read FCRE_NOME_VENDEDOR write SetCRE_NOME_VENDEDOR;
       property CRE_OPERADOR             : String read FCRE_OPERADOR write SetCRE_OPERADOR;
       property CRE_BENEFICIARIO         : String read FCRE_BENEFICIARIO write SetCRE_BENEFICIARIO;
       property CRE_STATUS : String read FCRE_STATUS write SetCRE_STATUS;
       property CRE_SELECAO : String read FCRE_SELECAO write SetCRE_SELECAO;
       property CRE_VALOR_PARCELA_LIMPA : Double read FCRE_VALOR_PARCELA_LIMPA write SetCRE_VALOR_PARCELA_LIMPA;
       property CRE_TIPO : String read FCRE_TIPO write SetCRE_TIPO;
       property CRE_NOME_PLANODECONTA : String read FCRE_NOME_PLANODECONTA write SetCRE_NOME_PLANODECONTA;
       property CRE_CODIGO_PLANODECONTA : Integer read FCRE_CODIGO_PLANODECONTA write SetCRE_CODIGO_PLANODECONTA;
       procedure Insert(ObjContasAReceberModel : TContasAReceberModel);
       procedure Update(ObjContasAReceberModel : TContasAReceberModel);
       procedure Red(ObjContasAReceberModel : TContasAReceberModel; Codigo : Integer);
       procedure Delete(ObjContasAReceberModel : TContasAReceberModel);
       procedure CalculaContasAReceber;
       procedure Recebimento(CodParcela : Integer; ValorPago, VlorParcela : Double);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TContasAReceberModel }

uses MiniSoft.View.Principal;

procedure TContasAReceberModel.CalculaContasAReceber;
var
q1 : TFDquery;
dia2, Vencimento, Status, diasmes, ano, mes : String;
vNumDias : Integer;
ValorJurosParcela, vlrParcela : Double;
dia : TDate;
begin
   dia := now;
   dia2 := FormatDateTime('yyyy/mm/dd', Date);
   Status := 'Pago';
   ano:=formatdatetime('yyyy',dia);
   mes:=formatdatetime('mm',dia);
   diasmes:=IntToStr(DaysInAMonth(StrToint(ano),StrToInt(mes)));

   q1 := TFDquery.create(nil);
   q1.Connection := dm.Con;
   q1.CachedUpdates := true;
   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('SELECT * FROM TB_CONTASARECEBER WHERE CRE_BENEFICIARIO='+QuotedStr(frmprincipal.Global.PRI_CPFCNPJ));
       sql.Add('and CRE_STATUS <>'+QuotedStr(Status));
       open;
       begin
        while not eof do
        begin
          Vencimento := FormatDateTime('yyyy/mm/dd',q1.FieldByName('CRE_DATA_VENCIMENTO').AsDateTime);
          ValorJurosParcela := 0;
           edit;
         if Vencimento < dia2 then
            begin
             FieldByName('CRE_STATUS').AsString := 'Atrasado';
              if frmPrincipal.Global.PRI_CR_JUROSIMPLES = 'True' then
             begin
              vNumDias := Trunc(dia - q1.FieldByName('CRE_DATA_VENCIMENTO').AsDateTime);
              ValorJurosParcela := q1.FieldByName('CRE_VALOR_PARCELA_LIMPA').AsFloat * frmPrincipal.Global.PRI_CR_JUROSVENDAPRAZO_ATR_PORC / 100 ;
              ValorJurosParcela := ValorJurosParcela / 30 * vNumDias ;
              q1.FieldByName('CRE_VALOR_JUROS').AsFloat := ValorJurosParcela;

              q1.FieldByName('CRE_VALOR_PARCELA').AsFloat := q1.FieldByName('CRE_VALOR_PARCELA_LIMPA').AsFloat + ValorJurosParcela;  //
             end;
            end;
         if Vencimento = dia2 then
            begin
             FieldByName('CRE_STATUS').AsString := 'Vencendo Hoje';
             q1.FieldByName('CRE_VALOR_JUROS').AsFloat := 0;
             q1.FieldByName('CRE_VALOR_PARCELA').AsFloat := q1.FieldByName('CRE_VALOR_PARCELA_LIMPA').AsFloat;
            end;
         if Vencimento > dia2 then
            begin
             FieldByName('CRE_STATUS').AsString := 'A Vencer';
             q1.FieldByName('CRE_VALOR_JUROS').AsFloat := 0;
             q1.FieldByName('CRE_VALOR_PARCELA').AsFloat := q1.FieldByName('CRE_VALOR_PARCELA_LIMPA').AsFloat;
            end;


         post;
         ApplyUpdates;
         CommitUpdates;
         next;
        end;
       end;
     end;
   finally
     FreeandNil(q1);
   end;
end;

constructor TContasAReceberModel.create;
begin

end;

procedure TContasAReceberModel.Delete(
  ObjContasAReceberModel: TContasAReceberModel);
  var
  q1 : TFDquery;
begin
   q1 := TFDquery.Create(nil);
   //q1.Connection := dm.con;
   try
      with q1 do
      begin

      end;
   finally
     FreeandNil(q1);
   end;
end;

destructor TContasAReceberModel.destroy;
begin

  inherited;
end;

procedure TContasAReceberModel.Insert(
  ObjContasAReceberModel: TContasAReceberModel);
  var
  q1 : TFDquery;
begin
   q1 := TFDquery.create(nil);
   q1.Connection := dm.Con;

   try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Text := 'insert into TB_CONTASARECEBER'
        +'(CRE_CODIGO'
        +',CRE_NOME_CLIENTE'
        +',CRE_CODIGO_CLIENTE'
        +',CRE_CPF_CLIENTE'
        +',CRE_ENDERECO_CLIENTE'
        +',CRE_BAIRRO_CLIENTE'
        +',CRE_NUMERO_CLIENTE'
        +',CRE_MUNICIPIO_CLIENTE'
        +',CRE_COMPLEMENTO_CLIENTE'
        +',CRE_CEP_CLIENTE'
        +',CRE_TIPO_VENDA'
        +',CRE_VALOR_PARCELA'
        +',CRE_VALOR_JUROS'
        +',CRE_VALOR_MULTA'
        +',CRE_VALOR_PAGO'
        +',CRE_DATA_COMPRA'
        //+',CRE_DATA_QUITACAO'
        +',CRE_DATA_VENCIMENTO'
        +',CRE_REF_PARCELA'
        +',CRE_NUMERO_VENDA'
        +',CRE_QTD_PARCELAS'
        +',CRE_VALOR_COMPRA'
        +',CRE_FORMA_PAGAMENTO'
        +',CRE_CODIGO_VENDEDOR'
        +',CRE_NOME_VENDEDOR'
        +',CRE_OPERADOR'
        +',CRE_BENEFICIARIO'
        +',CRE_STATUS'
        +',CRE_SELECAO'
        +',CRE_VALOR_PARCELA_LIMPA'
        +',CRE_TIPO'
        +',CRE_NOME_PLANODECONTA'
        +',CRE_CODIGO_PLANODECONTA)'
        +'values(:CRE_CODIGO'
        +',:CRE_NOME_CLIENTE'
        +',:CRE_CODIGO_CLIENTE'
        +',:CRE_CPF_CLIENTE'
        +',:CRE_ENDERECO_CLIENTE'
        +',:CRE_BAIRRO_CLIENTE'
        +',:CRE_NUMERO_CLIENTE'
        +',:CRE_MUNICIPIO_CLIENTE'
        +',:CRE_COMPLEMENTO_CLIENTE'
        +',:CRE_CEP_CLIENTE'
        +',:CRE_TIPO_VENDA'
        +',:CRE_VALOR_PARCELA'
        +',:CRE_VALOR_JUROS'
        +',:CRE_VALOR_MULTA'
        +',:CRE_VALOR_PAGO'
        +',:CRE_DATA_COMPRA'
       // +',:CRE_DATA_QUITACAO'
        +',:CRE_DATA_VENCIMENTO'
        +',:CRE_REF_PARCELA'
        +',:CRE_NUMERO_VENDA'
        +',:CRE_QTD_PARCELAS'
        +',:CRE_VALOR_COMPRA'
        +',:CRE_FORMA_PAGAMENTO'
        +',:CRE_CODIGO_VENDEDOR'
        +',:CRE_NOME_VENDEDOR'
        +',:CRE_OPERADOR'
        +',:CRE_BENEFICIARIO'
        +',:CRE_STATUS'
        +',:CRE_SELECAO'
        +',:CRE_VALOR_PARCELA_LIMPA'
        +',:CRE_TIPO'
        +',:CRE_NOME_PLANODECONTA'
        +',:CRE_CODIGO_PLANODECONTA)';
        ParamByName('CRE_CODIGO').AsInteger:=CRE_CODIGO;
        ParamByName('CRE_NOME_CLIENTE').AsString:=CRE_NOME_CLIENTE;
        ParamByName('CRE_CODIGO_CLIENTE').AsInteger:=CRE_CODIGO_CLIENTE;
        ParamByName('CRE_CPF_CLIENTE').AsString:=CRE_CPF_CLIENTE;
        ParamByName('CRE_ENDERECO_CLIENTE').AsString:=CRE_ENDERECO_CLIENTE;
        ParamByName('CRE_BAIRRO_CLIENTE').AsString:=CRE_BAIRRO_CLIENTE;
        ParamByName('CRE_NUMERO_CLIENTE').AsString:=CRE_NUMERO_CLIENTE;
        ParamByName('CRE_MUNICIPIO_CLIENTE').AsString:=CRE_MUNICIPIO_CLIENTE;
        ParamByName('CRE_COMPLEMENTO_CLIENTE').AsString:=CRE_COMPLEMENTO_CLIENTE;
        ParamByName('CRE_CEP_CLIENTE').AsString:=CRE_CEP_CLIENTE;
        ParamByName('CRE_TIPO_VENDA').AsString:=CRE_TIPO_VENDA;
        ParamByName('CRE_VALOR_PARCELA').AsFloat:=CRE_VALOR_PARCELA;
        ParamByName('CRE_VALOR_JUROS').AsFloat:=CRE_VALOR_JUROS;
        ParamByName('CRE_VALOR_MULTA').AsFloat:=CRE_VALOR_MULTA;
        ParamByName('CRE_VALOR_PAGO').AsFloat:=CRE_VALOR_PAGO;
        ParamByName('CRE_DATA_COMPRA').AsDate:=CRE_DATA_COMPRA;
       // ParamByName('CRE_DATA_QUITACAO').AsDate:=CRE_DATA_QUITACAO;
        ParamByName('CRE_DATA_VENCIMENTO').AsDate:=CRE_DATA_VENCIMENTO;
        ParamByName('CRE_REF_PARCELA').AsString:=CRE_REF_PARCELA;
        ParamByName('CRE_NUMERO_VENDA').AsInteger:=CRE_NUMERO_VENDA;
        ParamByName('CRE_QTD_PARCELAS').AsInteger:=CRE_QTD_PARCELAS;
        ParamByName('CRE_VALOR_COMPRA').AsFloat:=CRE_VALOR_COMPRA;
        ParamByName('CRE_FORMA_PAGAMENTO').AsString:=CRE_FORMA_PAGAMENTO;
        ParamByName('CRE_CODIGO_VENDEDOR').AsInteger:=CRE_CODIGO_VENDEDOR;
        ParamByName('CRE_NOME_VENDEDOR').AsString:=CRE_NOME_VENDEDOR;
        ParamByName('CRE_OPERADOR').AsString:=CRE_OPERADOR;
        ParamByName('CRE_BENEFICIARIO').AsString:=CRE_BENEFICIARIO;
        ParamByName('CRE_STATUS').AsString:=CRE_STATUS;
        ParamByName('CRE_SELECAO').AsString:='False';
        ParamByName('CRE_VALOR_PARCELA_LIMPA').AsFloat:=CRE_VALOR_PARCELA_LIMPA;
        ParamByName('CRE_TIPO').AsString:=CRE_TIPO;
        ParamByName('CRE_NOME_PLANODECONTA').AsString:=CRE_NOME_PLANODECONTA;
        ParamByName('CRE_CODIGO_PLANODECONTA').AsInteger:=CRE_CODIGO_PLANODECONTA;
        ExecSQL;
      end;
   finally
     FreeandNil(q1);
   end;
end;


procedure TContasAReceberModel.Recebimento(CodParcela : Integer; ValorPago, VlorParcela : Double);
begin

end;
procedure TContasAReceberModel.Red(ObjContasAReceberModel: TContasAReceberModel;
  Codigo: Integer);
  var
  q1 : TFDquery;
begin
   q1 := TFDquery.Create(nil);
   //q1.Connection := dm.con;
   try
      with q1 do
      begin

      end;
   finally
     FreeandNil(q1);
   end;
end;


procedure TContasAReceberModel.SetCRE_BAIRRO_CLIENTE(const Value: String);
begin
  FCRE_BAIRRO_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_BENEFICIARIO(const Value: String);
begin
  FCRE_BENEFICIARIO := Value;
end;

procedure TContasAReceberModel.SetCRE_CEP_CLIENTE(const Value: String);
begin
  FCRE_CEP_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_CODIGO(const Value: Integer);
begin
  FCRE_CODIGO := Value;
end;

procedure TContasAReceberModel.SetCRE_CODIGO_CLIENTE(const Value: Integer);
begin
  FCRE_CODIGO_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_CODIGO_PLANODECONTA(const Value: Integer);
begin
  FCRE_CODIGO_PLANODECONTA := Value;
end;

procedure TContasAReceberModel.SetCRE_CODIGO_VENDEDOR(const Value: Integer);
begin
  FCRE_CODIGO_VENDEDOR := Value;
end;

procedure TContasAReceberModel.SetCRE_COMPLEMENTO_CLIENTE(const Value: String);
begin
  FCRE_COMPLEMENTO_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_CPF_CLIENTE(const Value: String);
begin
  FCRE_CPF_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_DATA_COMPRA(const Value: TDate);
begin
  FCRE_DATA_COMPRA := Value;
end;

procedure TContasAReceberModel.SetCRE_DATA_QUITACAO(const Value: TDate);
begin
  FCRE_DATA_QUITACAO := Value;
end;

procedure TContasAReceberModel.SetCRE_DATA_VENCIMENTO(const Value: TDate);
begin
  FCRE_DATA_VENCIMENTO := Value;
end;

procedure TContasAReceberModel.SetCRE_ENDERECO_CLIENTE(const Value: String);
begin
  FCRE_ENDERECO_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_FORMA_PAGAMENTO(const Value: String);
begin
  FCRE_FORMA_PAGAMENTO := Value;
end;

procedure TContasAReceberModel.SetCRE_MUNICIPIO_CLIENTE(const Value: String);
begin
  FCRE_MUNICIPIO_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_NOME_CLIENTE(const Value: String);
begin
  FCRE_NOME_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_NOME_PLANODECONTA(const Value: String);
begin
  FCRE_NOME_PLANODECONTA := Value;
end;

procedure TContasAReceberModel.SetCRE_NOME_VENDEDOR(const Value: String);
begin
  FCRE_NOME_VENDEDOR := Value;
end;

procedure TContasAReceberModel.SetCRE_NUMERO_CLIENTE(const Value: String);
begin
  FCRE_NUMERO_CLIENTE := Value;
end;

procedure TContasAReceberModel.SetCRE_NUMERO_VENDA(const Value: Integer);
begin
  FCRE_NUMERO_VENDA := Value;
end;

procedure TContasAReceberModel.SetCRE_OPERADOR(const Value: String);
begin
  FCRE_OPERADOR := Value;
end;

procedure TContasAReceberModel.SetCRE_QTD_PARCELAS(const Value: Integer);
begin
  FCRE_QTD_PARCELAS := Value;
end;

procedure TContasAReceberModel.SetCRE_REF_PARCELA(const Value: String);
begin
  FCRE_REF_PARCELA := Value;
end;

procedure TContasAReceberModel.SetCRE_SELECAO(const Value: String);
begin
  FCRE_SELECAO := Value;
end;

procedure TContasAReceberModel.SetCRE_STATUS(const Value: String);
begin
  FCRE_STATUS := Value;
end;

procedure TContasAReceberModel.SetCRE_TIPO(const Value: String);
begin
  FCRE_TIPO := Value;
end;

procedure TContasAReceberModel.SetCRE_TIPO_VENDA(const Value: String);
begin
  FCRE_TIPO_VENDA := Value;
end;

procedure TContasAReceberModel.SetCRE_VALOR_COMPRA(const Value: Double);
begin
  FCRE_VALOR_COMPRA := Value;
end;

procedure TContasAReceberModel.SetCRE_VALOR_JUROS(const Value: Double);
begin
  FCRE_VALOR_JUROS := Value;
end;

procedure TContasAReceberModel.SetCRE_VALOR_MULTA(const Value: Double);
begin
  FCRE_VALOR_MULTA := Value;
end;

procedure TContasAReceberModel.SetCRE_VALOR_PAGO(const Value: Double);
begin
  FCRE_VALOR_PAGO := Value;
end;

procedure TContasAReceberModel.SetCRE_VALOR_PARCELA(const Value: Double);
begin
  FCRE_VALOR_PARCELA := Value;
end;

procedure TContasAReceberModel.SetCRE_VALOR_PARCELA_LIMPA(const Value: Double);
begin
  FCRE_VALOR_PARCELA_LIMPA := Value;
end;

procedure TContasAReceberModel.Update(
  ObjContasAReceberModel: TContasAReceberModel);
  var
  q1 : TFDquery;
begin
   q1 := TFDquery.Create(nil);
   //q1.Connection := dm.con;
   try
      with q1 do
      begin

      end;
   finally



   end;

end;
end.