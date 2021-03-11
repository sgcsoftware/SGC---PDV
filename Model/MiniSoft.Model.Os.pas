unit MiniSoft.Model.Os;

interface
     uses Firedac.Comp.Client, Conexao, System.SysUtils,
  Minisoft.Model.PlanoDeConta, Minisoft.Controllerl.PlanoDeConta,
  MiniSoft.Funcoes.Geral, Vcl.Dialogs;
  type
  TModelOs = class
    private
    FORD_BENEFICIARIO: String;
    FORD_CLIENTE_EMAIL: String;
    FORD_CLIENTE_BAIRRO: String;
    FORD_CLIENTE_ENDERECOEXECUCAO: String;
    FORD_DESPORCENTAGEM: Double;
    FORD_CLIENTE_UF: String;
    FORD_RANDOMICO: String;
    FORD_SUBTOTAL: Double;
    FORD_CLIENTE: String;
    FORD_CODIGO: Integer;
    FORD_ACRESDINHEIRO: Double;
    FORD_TOTAL: Double;
    FORD_CLIENTE_NUMERO: String;
    FORD_CPFCNPJ: String;
    FORD_NUMERO: String;
    FORD_DESDINHEIRO: Double;
    FORD_CLIENTE_MUNICIPIO: String;
    FORD_STATUS: String;
    FORD_CLIENTE_TELEFONE2: String;
    FORD_CLIENTE_MUNICIPIODEENTREGA: String;
    FORD_CLIENTE_CONTATO: String;
    FORD_CLIENTE_WHATSAPP: String;
    FORD_CLIENTE_TELEFONE1: String;
    FORD_CLIENTE_ENDERECO: String;
    FORD_CLIENTE_CELULAR: String;
    FORD_DATA: TDate;
    FORD_CLIENTE_RG: String;
    FORD_OBSERVACAO: String;
    FORD_ACRESPORCENTAGEM: Double;
    FORD_CLIENTE_CODIGO: Integer;
    FORD_FUNCIONARIO: String;
    FORD_CODIGO_FUNCIONARIO: Integer;
    FORD_HORAS: TTime;
    FORD_OBS2: String;
    FORD_OBS3: String;
    FORD_OBS4: String;
    procedure SetORD_ACRESDINHEIRO(const Value: Double);
    procedure SetORD_ACRESPORCENTAGEM(const Value: Double);
    procedure SetORD_BENEFICIARIO(const Value: String);
    procedure SetORD_CLIENTE(const Value: String);
    procedure SetORD_CLIENTE_BAIRRO(const Value: String);
    procedure SetORD_CLIENTE_CELULAR(const Value: String);
    procedure SetORD_CLIENTE_CONTATO(const Value: String);
    procedure SetORD_CLIENTE_EMAIL(const Value: String);
    procedure SetORD_CLIENTE_ENDERECO(const Value: String);
    procedure SetORD_CLIENTE_ENDERECOEXECUCAO(const Value: String);
    procedure SetORD_CLIENTE_MUNICIPIO(const Value: String);
    procedure SetORD_CLIENTE_MUNICIPIODEENTREGA(const Value: String);
    procedure SetORD_CLIENTE_NUMERO(const Value: String);
    procedure SetORD_CLIENTE_RG(const Value: String);
    procedure SetORD_CLIENTE_TELEFONE1(const Value: String);
    procedure SetORD_CLIENTE_TELEFONE2(const Value: String);
    procedure SetORD_CLIENTE_UF(const Value: String);
    procedure SetORD_CLIENTE_WHATSAPP(const Value: String);
    procedure SetORD_CODIGO(const Value: Integer);
    procedure SetORD_CPFCNPJ(const Value: String);
    procedure SetORD_DATA(const Value: TDate);
    procedure SetORD_DESDINHEIRO(const Value: Double);
    procedure SetORD_DESPORCENTAGEM(const Value: Double);
    procedure SetORD_NUMERO(const Value: String);
    procedure SetORD_OBSERVACAO(const Value: String);
    procedure SetORD_RANDOMICO(const Value: String);
    procedure SetORD_STATUS(const Value: String);
    procedure SetORD_SUBTOTAL(const Value: Double);
    procedure SetORD_TOTAL(const Value: Double);
    procedure SetORD_CLIENTE_CODIGO(const Value: Integer);
    procedure SetORD_CODIGO_FUNCIONARIO(const Value: Integer);
    procedure SetORD_FUNCIONARIO(const Value: String);
    procedure SetORD_HORAS(const Value: TTime);
    procedure SetORD_OBS2(const Value: String);
    procedure SetORD_OBS3(const Value: String);
    procedure SetORD_OBS4(const Value: String);
    public
    property ORD_CODIGO                      : Integer read FORD_CODIGO write SetORD_CODIGO;
    property ORD_NUMERO                      : String read FORD_NUMERO write SetORD_NUMERO;
    property ORD_RANDOMICO                   : String read FORD_RANDOMICO write SetORD_RANDOMICO;
    property ORD_DATA                        : TDate read FORD_DATA write SetORD_DATA;
    property ORD_STATUS                      : String read FORD_STATUS write SetORD_STATUS;
    property ORD_CPFCNPJ                     : String read FORD_CPFCNPJ write SetORD_CPFCNPJ;
    property ORD_CLIENTE                     : String read FORD_CLIENTE write SetORD_CLIENTE;
    property ORD_CLIENTE_CONTATO             : String read FORD_CLIENTE_CONTATO write SetORD_CLIENTE_CONTATO;
    property ORD_CLIENTE_RG                  : String read FORD_CLIENTE_RG write SetORD_CLIENTE_RG;
    property ORD_CLIENTE_ENDERECO            : String read FORD_CLIENTE_ENDERECO write SetORD_CLIENTE_ENDERECO;
    property ORD_CLIENTE_NUMERO              : String read FORD_CLIENTE_NUMERO write SetORD_CLIENTE_NUMERO;
    property ORD_CLIENTE_BAIRRO              : String read FORD_CLIENTE_BAIRRO write SetORD_CLIENTE_BAIRRO;
    property ORD_CLIENTE_UF                  : String read FORD_CLIENTE_UF write SetORD_CLIENTE_UF;
    property ORD_CLIENTE_MUNICIPIO           : String read FORD_CLIENTE_MUNICIPIO write SetORD_CLIENTE_MUNICIPIO;
    property ORD_CLIENTE_EMAIL               : String read FORD_CLIENTE_EMAIL write SetORD_CLIENTE_EMAIL;
    property ORD_CLIENTE_TELEFONE1           : String read FORD_CLIENTE_TELEFONE1 write SetORD_CLIENTE_TELEFONE1;
    property ORD_CLIENTE_TELEFONE2           : String read FORD_CLIENTE_TELEFONE2 write SetORD_CLIENTE_TELEFONE2;
    property ORD_CLIENTE_CELULAR             : String read FORD_CLIENTE_CELULAR write SetORD_CLIENTE_CELULAR;
    property ORD_CLIENTE_WHATSAPP            : String read FORD_CLIENTE_WHATSAPP write SetORD_CLIENTE_WHATSAPP;
    property ORD_CLIENTE_ENDERECOEXECUCAO    : String read FORD_CLIENTE_ENDERECOEXECUCAO write SetORD_CLIENTE_ENDERECOEXECUCAO;
    property ORD_CLIENTE_MUNICIPIODEENTREGA  : String read FORD_CLIENTE_MUNICIPIODEENTREGA write SetORD_CLIENTE_MUNICIPIODEENTREGA;
    property ORD_TOTAL                       : Double read FORD_TOTAL write SetORD_TOTAL;
    property ORD_SUBTOTAL                    : Double read FORD_SUBTOTAL write SetORD_SUBTOTAL;
    property ORD_DESDINHEIRO                 : Double read FORD_DESDINHEIRO write SetORD_DESDINHEIRO;
    property ORD_DESPORCENTAGEM              : Double read FORD_DESPORCENTAGEM write SetORD_DESPORCENTAGEM;
    property ORD_ACRESDINHEIRO               : Double read FORD_ACRESDINHEIRO write SetORD_ACRESDINHEIRO;
    property ORD_ACRESPORCENTAGEM            : Double read FORD_ACRESPORCENTAGEM write SetORD_ACRESPORCENTAGEM;
    property ORD_OBSERVACAO                  : String read FORD_OBSERVACAO write SetORD_OBSERVACAO;
    property ORD_BENEFICIARIO                : String read FORD_BENEFICIARIO write SetORD_BENEFICIARIO;
    property ORD_CLIENTE_CODIGO : Integer read FORD_CLIENTE_CODIGO write SetORD_CLIENTE_CODIGO;
    property ORD_FUNCIONARIO : String read FORD_FUNCIONARIO write SetORD_FUNCIONARIO;
    property ORD_CODIGO_FUNCIONARIO : Integer read FORD_CODIGO_FUNCIONARIO write SetORD_CODIGO_FUNCIONARIO;
    property ORD_HORAS : TTime read FORD_HORAS write SetORD_HORAS;
    property ORD_OBS2 : String read FORD_OBS2 write SetORD_OBS2;
    property ORD_OBS3 : String read FORD_OBS3 write SetORD_OBS3;
    property ORD_OBS4 : String read FORD_OBS4 write SetORD_OBS4;
    procedure Insert(ObjOs : TModelOs);
    Procedure Update(ObjOs : TModelOs);
    procedure Delete(ObjOs : TModelOs);
    procedure Read  (ObjOs : TModelOs ; Codigo : Integer);
    constructor create;
    destructor destroy; override;
  end;
implementation

{ TModelOs }

constructor TModelOs.create;
begin

end;

procedure TModelOs.Delete(ObjOs: TModelOs);
begin

end;

destructor TModelOs.destroy;
begin

  inherited;
end;

procedure TModelOs.Insert(ObjOs: TModelOs);
var
q1 : TFDQuery;
begin
   q1 := TFdquery.Create(nil);
   q1.Connection := dm.Con;
   dm.Con.StartTransaction;
   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Text := 'insert into TB_ORDEMDESERVICO'
        +'(ORD_CODIGO'
        +',ORD_NUMERO'
        +',ORD_RANDOMICO'
        +',ORD_DATA'
        +',ORD_STATUS'
        +',ORD_CPFCNPJ'
        +',ORD_CLIENTE'
        +',ORD_CLIENTE_CONTATO'
        +',ORD_CLIENTE_RG'
        +',ORD_CLIENTE_ENDERECO'
        +',ORD_CLIENTE_NUMERO'
        +',ORD_CLIENTE_BAIRRO'
        +',ORD_CLIENTE_UF'
        +',ORD_CLIENTE_MUNICIPIO'
        +',ORD_CLIENTE_EMAIL'
        +',ORD_CLIENTE_TELEFONE1'
        +',ORD_CLIENTE_TELEFONE2'
        +',ORD_CLIENTE_CELULAR'
        +',ORD_CLIENTE_WHATSAPP'
        +',ORD_CLIENTE_ENDERECOEXECUCAO'
        +',ORD_CLIENTE_MUNICIPIODEENTREGA'
        +',ORD_TOTAL'
        +',ORD_SUBTOTAL'
        +',ORD_DESDINHEIRO'
        +',ORD_DESPORCENTAGEM'
        +',ORD_ACRESDINHEIRO'
        +',ORD_ACRESPORCENTAGEM'
        +',ORD_OBSERVACAO'
        +',ORD_BENEFICIARIO'
        +',ORD_CLIENTE_CODIGO'
        +',ORD_FUNCIONARIO'
        +',ORD_CODIGO_FUNCIONARIO'
        +',ORD_HORAS'
        +',ORD_OBS2'
        +',ORD_OBS3'
        +',ORD_OBS4)'
        +'values(:ORD_CODIGO'
        +',:ORD_NUMERO'
        +',:ORD_RANDOMICO'
        +',:ORD_DATA'
        +',:ORD_STATUS'
        +',:ORD_CPFCNPJ'
        +',:ORD_CLIENTE'
        +',:ORD_CLIENTE_CONTATO'
        +',:ORD_CLIENTE_RG'
        +',:ORD_CLIENTE_ENDERECO'
        +',:ORD_CLIENTE_NUMERO'
        +',:ORD_CLIENTE_BAIRRO'
        +',:ORD_CLIENTE_UF'
        +',:ORD_CLIENTE_MUNICIPIO'
        +',:ORD_CLIENTE_EMAIL'
        +',:ORD_CLIENTE_TELEFONE1'
        +',:ORD_CLIENTE_TELEFONE2'
        +',:ORD_CLIENTE_CELULAR'
        +',:ORD_CLIENTE_WHATSAPP'
        +',:ORD_CLIENTE_ENDERECOEXECUCAO'
        +',:ORD_CLIENTE_MUNICIPIODEENTREGA'
        +',:ORD_TOTAL'
        +',:ORD_SUBTOTAL'
        +',:ORD_DESDINHEIRO'
        +',:ORD_DESPORCENTAGEM'
        +',:ORD_ACRESDINHEIRO'
        +',:ORD_ACRESPORCENTAGEM'
        +',:ORD_OBSERVACAO'
        +',:ORD_BENEFICIARIO'
        +',:ORD_CLIENTE_CODIGO'
        +',:ORD_FUNCIONARIO'
        +',:ORD_CODIGO_FUNCIONARIO'
        +',:ORD_HORAS'
        +',:ORD_OBS2'
        +',:ORD_OBS3'
        +',:ORD_OBS4)';
        ParamByName('ORD_CODIGO').asInteger:=ORD_CODIGO;
        ParamByName('ORD_NUMERO').AsString:=ORD_NUMERO;
        ParamByName('ORD_RANDOMICO').AsString:=ORD_RANDOMICO;
        ParamByName('ORD_DATA').AsDate:=ORD_DATA;
        ParamByName('ORD_STATUS').AsString:=ORD_STATUS;
        ParamByName('ORD_CPFCNPJ').AsString:=ORD_CPFCNPJ;
        ParamByName('ORD_CLIENTE').AsString:=ORD_CLIENTE;
        ParamByName('ORD_CLIENTE_CONTATO').AsString:=ORD_CLIENTE_CONTATO;
        ParamByName('ORD_CLIENTE_RG').AsString:=ORD_CLIENTE_RG;
        ParamByName('ORD_CLIENTE_ENDERECO').AsString:=ORD_CLIENTE_ENDERECO;
        ParamByName('ORD_CLIENTE_NUMERO').AsString:=ORD_CLIENTE_NUMERO;
        ParamByName('ORD_CLIENTE_BAIRRO').AsString:=ORD_CLIENTE_BAIRRO;
        ParamByName('ORD_CLIENTE_UF').AsString:=ORD_CLIENTE_UF;
        ParamByName('ORD_CLIENTE_MUNICIPIO').AsString:=ORD_CLIENTE_MUNICIPIO;
        ParamByName('ORD_CLIENTE_EMAIL').AsString:=ORD_CLIENTE_EMAIL;
        ParamByName('ORD_CLIENTE_TELEFONE1').AsString:=ORD_CLIENTE_TELEFONE1;
        ParamByName('ORD_CLIENTE_TELEFONE2').AsString:=ORD_CLIENTE_TELEFONE2;
        ParamByName('ORD_CLIENTE_CELULAR').AsString:=ORD_CLIENTE_CELULAR;
        ParamByName('ORD_CLIENTE_WHATSAPP').AsString:=ORD_CLIENTE_WHATSAPP;
        ParamByName('ORD_CLIENTE_ENDERECOEXECUCAO').AsString:=ORD_CLIENTE_ENDERECOEXECUCAO;
        ParamByName('ORD_CLIENTE_MUNICIPIODEENTREGA').AsString:=ORD_CLIENTE_MUNICIPIODEENTREGA;
        ParamByName('ORD_TOTAL').AsFloat:=ORD_TOTAL;
        ParamByName('ORD_SUBTOTAL').AsFloat:=ORD_SUBTOTAL;
        ParamByName('ORD_DESDINHEIRO').AsFloat:=ORD_DESDINHEIRO;
        ParamByName('ORD_DESPORCENTAGEM').AsFloat:=ORD_DESPORCENTAGEM;
        ParamByName('ORD_ACRESDINHEIRO').AsFloat:=ORD_ACRESDINHEIRO;
        ParamByName('ORD_ACRESPORCENTAGEM').AsFloat:=ORD_ACRESPORCENTAGEM;
        ParamByName('ORD_OBSERVACAO').AsString:=ORD_OBSERVACAO;
        ParamByName('ORD_BENEFICIARIO').AsString:=ORD_BENEFICIARIO;
        ParamByName('ORD_CLIENTE_CODIGO').AsInteger:=ORD_CLIENTE_CODIGO;
        ParamByName('ORD_FUNCIONARIO').AsString:=ORD_FUNCIONARIO;
        ParamByName('ORD_CODIGO_FUNCIONARIO').AsInteger:=ORD_CODIGO_FUNCIONARIO;
        ParamByName('ORD_HORAS').AsTime:=ORD_HORAS;
        ParamByName('ORD_OBS2').AsString:=ORD_OBS2;
        ParamByName('ORD_OBS3').AsString:=ORD_OBS3;
        ParamByName('ORD_OBS4').AsString:=ORD_OBS4;
        ExecSQL;
        dm.Con.Commit;
     end;
   finally
     Freeandnil(q1);
   end;
end;

procedure TModelOs.Read(ObjOs: TModelOs; Codigo: Integer);
var
q1 : TFdquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;
  with q1 do
  begin
    close;
    sql.Clear;
    sql.Add('select * from TB_ORDEMDESERVICO where ORD_CODIGO ='+QuotedStr(inttostr(Codigo)));
    open;
    ORD_CODIGO:=FieldByName('ORD_CODIGO').AsInteger;
    ORD_NUMERO:=FieldByName('ORD_NUMERO').AsString;
    ORD_RANDOMICO:=FieldByName('ORD_RANDOMICO').AsString;
    ORD_DATA:=FieldByName('ORD_DATA').AsDateTime;
    ORD_STATUS:=FieldByName('ORD_STATUS').AsString;
    ORD_CPFCNPJ:=FieldByName('ORD_CPFCNPJ').AsString;
    ORD_CLIENTE:=FieldByName('ORD_CLIENTE').AsString;
    ORD_CLIENTE_CONTATO:=FieldByName('ORD_CLIENTE_CONTATO').AsString;
    ORD_CLIENTE_RG:=FieldByName('ORD_CLIENTE_RG').AsString;
    ORD_CLIENTE_ENDERECO:=FieldByName('ORD_CLIENTE_ENDERECO').AsString;
    ORD_CLIENTE_NUMERO:=FieldByName('ORD_CLIENTE_NUMERO').AsString;
    ORD_CLIENTE_BAIRRO:=FieldByName('ORD_CLIENTE_BAIRRO').AsString;
    ORD_CLIENTE_UF:=FieldByName('ORD_CLIENTE_UF').AsString;
    ORD_CLIENTE_MUNICIPIO:=FieldByName('ORD_CLIENTE_MUNICIPIO').AsString;
    ORD_CLIENTE_EMAIL:=FieldByName('ORD_CLIENTE_EMAIL').AsString;
    ORD_CLIENTE_TELEFONE1:=FieldByName('ORD_CLIENTE_TELEFONE1').AsString;
    ORD_CLIENTE_TELEFONE2:=FieldByName('ORD_CLIENTE_TELEFONE2').AsString;
    ORD_CLIENTE_CELULAR:=FieldByName('ORD_CLIENTE_CELULAR').AsString;
    ORD_CLIENTE_WHATSAPP:=FieldByName('ORD_CLIENTE_WHATSAPP').AsString;
    ORD_CLIENTE_ENDERECOEXECUCAO:=FieldByName('ORD_CLIENTE_ENDERECOEXECUCAO').AsString;
    ORD_CLIENTE_MUNICIPIODEENTREGA:=FieldByName('ORD_CLIENTE_MUNICIPIODEENTREGA').AsString;
    ORD_TOTAL:=FieldByName('ORD_TOTAL').AsFloat;
    ORD_SUBTOTAL:=FieldByName('ORD_SUBTOTAL').AsFloat;
    ORD_DESDINHEIRO:=FieldByName('ORD_DESDINHEIRO').AsFloat;
    ORD_DESPORCENTAGEM:=FieldByName('ORD_DESPORCENTAGEM').AsFloat;
    ORD_ACRESDINHEIRO:=FieldByName('ORD_ACRESDINHEIRO').AsFloat;
    ORD_ACRESPORCENTAGEM:=FieldByName('ORD_ACRESPORCENTAGEM').AsFloat;
    ORD_OBSERVACAO:=FieldByName('ORD_OBSERVACAO').AsString;
    ORD_BENEFICIARIO:=FieldByName('ORD_BENEFICIARIO').AsString;
    ORD_CLIENTE_CODIGO := FieldByName('ORD_CLIENTE_CODIGO').AsInteger;
    ORD_FUNCIONARIO := FieldByName('ORD_FUNCIONARIO').AsString;
    ORD_CODIGO_FUNCIONARIO :=FieldByName('ORD_CODIGO_FUNCIONARIO').AsInteger;
    ORD_HORAS := FieldByName('ORD_HORAS').AsDateTime;
    ORD_OBS2 := FieldByName('ORD_OBS2').AsString;
    ORD_OBS3 := FieldByName('ORD_OBS3').AsString;
    ORD_OBS4 := FieldByName('ORD_OBS4').AsString;
  end;
end;

procedure TModelOs.SetORD_ACRESDINHEIRO(const Value: Double);
begin
  FORD_ACRESDINHEIRO := Value;
end;

procedure TModelOs.SetORD_ACRESPORCENTAGEM(const Value: Double);
begin
  FORD_ACRESPORCENTAGEM := Value;
end;

procedure TModelOs.SetORD_BENEFICIARIO(const Value: String);
begin
  FORD_BENEFICIARIO := Value;
end;

procedure TModelOs.SetORD_CLIENTE(const Value: String);
begin
  FORD_CLIENTE := Value;
end;

procedure TModelOs.SetORD_CLIENTE_BAIRRO(const Value: String);
begin
  FORD_CLIENTE_BAIRRO := Value;
end;

procedure TModelOs.SetORD_CLIENTE_CELULAR(const Value: String);
begin
  FORD_CLIENTE_CELULAR := Value;
end;

procedure TModelOs.SetORD_CLIENTE_CODIGO(const Value: Integer);
begin
  FORD_CLIENTE_CODIGO := Value;
end;

procedure TModelOs.SetORD_CLIENTE_CONTATO(const Value: String);
begin
  FORD_CLIENTE_CONTATO := Value;
end;

procedure TModelOs.SetORD_CLIENTE_EMAIL(const Value: String);
begin
  FORD_CLIENTE_EMAIL := Value;
end;

procedure TModelOs.SetORD_CLIENTE_ENDERECO(const Value: String);
begin
  FORD_CLIENTE_ENDERECO := Value;
end;

procedure TModelOs.SetORD_CLIENTE_ENDERECOEXECUCAO(const Value: String);
begin
  FORD_CLIENTE_ENDERECOEXECUCAO := Value;
end;

procedure TModelOs.SetORD_CLIENTE_MUNICIPIO(const Value: String);
begin
  FORD_CLIENTE_MUNICIPIO := Value;
end;

procedure TModelOs.SetORD_CLIENTE_MUNICIPIODEENTREGA(const Value: String);
begin
  FORD_CLIENTE_MUNICIPIODEENTREGA := Value;
end;

procedure TModelOs.SetORD_CLIENTE_NUMERO(const Value: String);
begin
  FORD_CLIENTE_NUMERO := Value;
end;

procedure TModelOs.SetORD_CLIENTE_RG(const Value: String);
begin
  FORD_CLIENTE_RG := Value;
end;

procedure TModelOs.SetORD_CLIENTE_TELEFONE1(const Value: String);
begin
  FORD_CLIENTE_TELEFONE1 := Value;
end;

procedure TModelOs.SetORD_CLIENTE_TELEFONE2(const Value: String);
begin
  FORD_CLIENTE_TELEFONE2 := Value;
end;

procedure TModelOs.SetORD_CLIENTE_UF(const Value: String);
begin
  FORD_CLIENTE_UF := Value;
end;

procedure TModelOs.SetORD_CLIENTE_WHATSAPP(const Value: String);
begin
  FORD_CLIENTE_WHATSAPP := Value;
end;

procedure TModelOs.SetORD_CODIGO(const Value: Integer);
begin
  FORD_CODIGO := Value;
end;

procedure TModelOs.SetORD_CODIGO_FUNCIONARIO(const Value: Integer);
begin
  FORD_CODIGO_FUNCIONARIO := Value;
end;

procedure TModelOs.SetORD_CPFCNPJ(const Value: String);
begin
  FORD_CPFCNPJ := Value;
end;

procedure TModelOs.SetORD_DATA(const Value: TDate);
begin
  FORD_DATA := Value;
end;

procedure TModelOs.SetORD_DESDINHEIRO(const Value: Double);
begin
  FORD_DESDINHEIRO := Value;
end;

procedure TModelOs.SetORD_DESPORCENTAGEM(const Value: Double);
begin
  FORD_DESPORCENTAGEM := Value;
end;

procedure TModelOs.SetORD_FUNCIONARIO(const Value: String);
begin
  FORD_FUNCIONARIO := Value;
end;

procedure TModelOs.SetORD_HORAS(const Value: TTime);
begin
  FORD_HORAS := Value;
end;

procedure TModelOs.SetORD_NUMERO(const Value: String);
begin
  FORD_NUMERO := Value;
end;

procedure TModelOs.SetORD_OBS2(const Value: String);
begin
  FORD_OBS2 := Value;
end;

procedure TModelOs.SetORD_OBS3(const Value: String);
begin
  FORD_OBS3 := Value;
end;

procedure TModelOs.SetORD_OBS4(const Value: String);
begin
  FORD_OBS4 := Value;
end;

procedure TModelOs.SetORD_OBSERVACAO(const Value: String);
begin
  FORD_OBSERVACAO := Value;
end;

procedure TModelOs.SetORD_RANDOMICO(const Value: String);
begin
  FORD_RANDOMICO := Value;
end;

procedure TModelOs.SetORD_STATUS(const Value: String);
begin
  FORD_STATUS := Value;
end;

procedure TModelOs.SetORD_SUBTOTAL(const Value: Double);
begin
  FORD_SUBTOTAL := Value;
end;

procedure TModelOs.SetORD_TOTAL(const Value: Double);
begin
  FORD_TOTAL := Value;
end;

procedure TModelOs.Update(ObjOs: TModelOs);
var
q1 : TFdquery;
begin
   q1 := TFdquery.Create(nil);
   q1.Connection := dm.Con;
   dm.Con.StartTransaction;
   try
     with q1 do
     begin
       close;
       sql.Clear;
        Sql.Add('update TB_ORDEMDESERVICO set');
        Sql.Add('ORD_CODIGO=:ORD_CODIGO');
        Sql.Add(',ORD_NUMERO=:ORD_NUMERO');
        Sql.Add(',ORD_RANDOMICO=:ORD_RANDOMICO');
        Sql.Add(',ORD_DATA=:ORD_DATA');
        Sql.Add(',ORD_STATUS=:ORD_STATUS');
        Sql.Add(',ORD_CPFCNPJ=:ORD_CPFCNPJ');
        Sql.Add(',ORD_CLIENTE=:ORD_CLIENTE');
        Sql.Add(',ORD_CLIENTE_CONTATO=:ORD_CLIENTE_CONTATO');
        Sql.Add(',ORD_CLIENTE_RG=:ORD_CLIENTE_RG');
        Sql.Add(',ORD_CLIENTE_ENDERECO=:ORD_CLIENTE_ENDERECO');
        Sql.Add(',ORD_CLIENTE_NUMERO=:ORD_CLIENTE_NUMERO');
        Sql.Add(',ORD_CLIENTE_BAIRRO=:ORD_CLIENTE_BAIRRO');
        Sql.Add(',ORD_CLIENTE_UF=:ORD_CLIENTE_UF');
        Sql.Add(',ORD_CLIENTE_MUNICIPIO=:ORD_CLIENTE_MUNICIPIO');
        Sql.Add(',ORD_CLIENTE_EMAIL=:ORD_CLIENTE_EMAIL');
        Sql.Add(',ORD_CLIENTE_TELEFONE1=:ORD_CLIENTE_TELEFONE1');
        Sql.Add(',ORD_CLIENTE_TELEFONE2=:ORD_CLIENTE_TELEFONE2');
        Sql.Add(',ORD_CLIENTE_CELULAR=:ORD_CLIENTE_CELULAR');
        Sql.Add(',ORD_CLIENTE_WHATSAPP=:ORD_CLIENTE_WHATSAPP');
        Sql.Add(',ORD_CLIENTE_ENDERECOEXECUCAO=:ORD_CLIENTE_ENDERECOEXECUCAO');
        Sql.Add(',ORD_CLIENTE_MUNICIPIODEENTREGA=:ORD_CLIENTE_MUNICIPIODEENTREGA');
        Sql.Add(',ORD_TOTAL=:ORD_TOTAL');
        Sql.Add(',ORD_SUBTOTAL=:ORD_SUBTOTAL');
        Sql.Add(',ORD_DESDINHEIRO=:ORD_DESDINHEIRO');
        Sql.Add(',ORD_DESPORCENTAGEM=:ORD_DESPORCENTAGEM');
        Sql.Add(',ORD_ACRESDINHEIRO=:ORD_ACRESDINHEIRO');
        Sql.Add(',ORD_ACRESPORCENTAGEM=:ORD_ACRESPORCENTAGEM');
        Sql.Add(',ORD_OBSERVACAO=:ORD_OBSERVACAO');
        Sql.Add(',ORD_BENEFICIARIO=:ORD_BENEFICIARIO');
        Sql.Add(',ORD_CLIENTE_CODIGO=:ORD_CLIENTE_CODIGO');
        Sql.Add(',ORD_OBS2=:ORD_OBS2');
        Sql.Add(',ORD_OBS3=:ORD_OBS3');
        Sql.Add(',ORD_OBS4=:ORD_OBS4');
        //Sql.Add(',ORD_FUNCIONARIO=:ORD_FUNCIONARIO');
       // Sql.Add(',ORD_CODIGO_FUNCIONARIO=:ORD_CODIGO_FUNCIONARIO');
        Sql.Add('where ORD_CODIGO = :ORD_CODIGO');
        ParamByName('ORD_CODIGO').asInteger:=ORD_CODIGO;
        ParamByName('ORD_NUMERO').AsString:=ORD_NUMERO;
        ParamByName('ORD_RANDOMICO').AsString:=ORD_RANDOMICO;
        ParamByName('ORD_DATA').AsDate:=ORD_DATA;
        ParamByName('ORD_STATUS').AsString:=ORD_STATUS;
        ParamByName('ORD_CPFCNPJ').AsString:=ORD_CPFCNPJ;
        ParamByName('ORD_CLIENTE').AsString:=ORD_CLIENTE;
        ParamByName('ORD_CLIENTE_CONTATO').AsString:=ORD_CLIENTE_CONTATO;
        ParamByName('ORD_CLIENTE_RG').AsString:=ORD_CLIENTE_RG;
        ParamByName('ORD_CLIENTE_ENDERECO').AsString:=ORD_CLIENTE_ENDERECO;
        ParamByName('ORD_CLIENTE_NUMERO').AsString:=ORD_CLIENTE_NUMERO;
        ParamByName('ORD_CLIENTE_BAIRRO').AsString:=ORD_CLIENTE_BAIRRO;
        ParamByName('ORD_CLIENTE_UF').AsString:=ORD_CLIENTE_UF;
        ParamByName('ORD_CLIENTE_MUNICIPIO').AsString:=ORD_CLIENTE_MUNICIPIO;
        ParamByName('ORD_CLIENTE_EMAIL').AsString:=ORD_CLIENTE_EMAIL;
        ParamByName('ORD_CLIENTE_TELEFONE1').AsString:=ORD_CLIENTE_TELEFONE1;
        ParamByName('ORD_CLIENTE_TELEFONE2').AsString:=ORD_CLIENTE_TELEFONE2;
        ParamByName('ORD_CLIENTE_CELULAR').AsString:=ORD_CLIENTE_CELULAR;
        ParamByName('ORD_CLIENTE_WHATSAPP').AsString:=ORD_CLIENTE_WHATSAPP;
        ParamByName('ORD_CLIENTE_ENDERECOEXECUCAO').AsString:=ORD_CLIENTE_ENDERECOEXECUCAO;
        ParamByName('ORD_CLIENTE_MUNICIPIODEENTREGA').AsString:=ORD_CLIENTE_MUNICIPIODEENTREGA;
        ParamByName('ORD_TOTAL').AsFloat:=ORD_TOTAL;
        ParamByName('ORD_SUBTOTAL').AsFloat:=ORD_SUBTOTAL;
        ParamByName('ORD_DESDINHEIRO').AsFloat:=ORD_DESDINHEIRO;
        ParamByName('ORD_DESPORCENTAGEM').AsFloat:=ORD_DESPORCENTAGEM;
        ParamByName('ORD_ACRESDINHEIRO').AsFloat:=ORD_ACRESDINHEIRO;
        ParamByName('ORD_ACRESPORCENTAGEM').AsFloat:=ORD_ACRESPORCENTAGEM;
        ParamByName('ORD_OBSERVACAO').AsString:=ORD_OBSERVACAO;
        ParamByName('ORD_BENEFICIARIO').AsString:=ORD_BENEFICIARIO;
        ParamByName('ORD_CLIENTE_CODIGO').AsInteger:=ORD_CLIENTE_CODIGO;
       // ParamByName('ORD_FUNCIONARIO').AsString:=ORD_FUNCIONARIO;
       // ParamByName('ORD_CODIGO_FUNCIONARIO').AsInteger:=ORD_CODIGO_FUNCIONARIO;
        ParamByName('ORD_OBS2').AsString:=ORD_OBS2;
        ParamByName('ORD_OBS3').AsString:=ORD_OBS3;
        ParamByName('ORD_OBS4').AsString:=ORD_OBS4;
        ExecSQL;
        dm.Con.Commit;
     end;
   finally
     Freeandnil(q1);
   end;
end;

end.
