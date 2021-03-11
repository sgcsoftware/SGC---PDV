unit MiniSoft.Model.ClientesContaAPagar;


interface

uses Conexao, IniFiles, ACBrUtil, pcnConversao, System.SysUtils, pcnConversaoNFe,
        ACBrDFeSSL, blcksock, Firedac.Comp.Client, uDWConstsData, uRESTDWPoolerDB;
    type
    TClientesContaAPagarModel = class
      private
    FCCR_CODIGO_CLIENTE: Integer;
    FCCR_CODIGO: Integer;
    FCCF_NOME_CLIENTE: String;
    FCCR_DATA_ULTIMO_PAGAMENTO: TDate;
    FCCR_BENEFICIARIO: String;
    FCCR_DATA: TDate;
    FCCR_DATA_ULTIMA_COMPRA: TDate;
    procedure SetCCF_NOME_CLIENTE(const Value: String);
    procedure SetCCR_BENEFICIARIO(const Value: String);
    procedure SetCCR_CODIGO(const Value: Integer);
    procedure SetCCR_CODIGO_CLIENTE(const Value: Integer);
    procedure SetCCR_DATA_ULTIMO_PAGAMENTO(const Value: TDate);
    procedure SetCCR_DATA(const Value: TDate);
    procedure SetCCR_DATA_ULTIMA_COMPRA(const Value: TDate);
      public
      property CCR_CODIGO :  Integer read FCCR_CODIGO write SetCCR_CODIGO;
      property CCR_CODIGO_CLIENTE :  Integer read FCCR_CODIGO_CLIENTE write SetCCR_CODIGO_CLIENTE;
      property CCF_NOME_CLIENTE :  String read FCCF_NOME_CLIENTE write SetCCF_NOME_CLIENTE;
      property CCR_DATA_ULTIMO_PAGAMENTO :  TDate read FCCR_DATA_ULTIMO_PAGAMENTO write SetCCR_DATA_ULTIMO_PAGAMENTO;
      property CCR_BENEFICIARIO :  String read FCCR_BENEFICIARIO write SetCCR_BENEFICIARIO;
      property CCR_DATA : TDate read FCCR_DATA write SetCCR_DATA;
      property CCR_DATA_ULTIMA_COMPRA : TDate read FCCR_DATA_ULTIMA_COMPRA write SetCCR_DATA_ULTIMA_COMPRA;
       procedure Insert(ObjClientesContaAPagar : TClientesContaAPagarModel);
       procedure Update(ObjClientesContaAPagar : TClientesContaAPagarModel);
       procedure Delete(ObjClientesContaAPagar : TClientesContaAPagarModel);
       procedure Read  (ObjClientesContaAPagar : TClientesContaAPagarModel ; Codigo : Integer);
      constructor create;
      destructor destroy; override;
    end;
implementation

{ TClientesContaAPagarModel }

constructor TClientesContaAPagarModel.create;
begin

end;

procedure TClientesContaAPagarModel.Delete(
  ObjClientesContaAPagar: TClientesContaAPagarModel);
var
  q1 : TFdquery;
begin
   q1 := TFdquery.Create(nil);
   q1.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('delete * from TB_CLIENTESCONTASARECEBER where ccr_codigo=:ccr_codigo');
       ParamByName('ccr_codigo').AsInteger := CCR_CODIGO;
       ExecSQL;
     end;
   finally
     FreeandNIl(q1);
   end;
end;

destructor TClientesContaAPagarModel.destroy;
begin

  inherited;
end;

procedure TClientesContaAPagarModel.Insert(
  ObjClientesContaAPagar: TClientesContaAPagarModel);
var
  q1 : TFdquery;
begin
   q1 := TFdquery.Create(nil);
   q1.Connection := dm.Con;

   try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Text := 'insert into TB_CLIENTESCONTASARECEBER'
        +'(CCR_CODIGO'
        +',CCR_CODIGO_CLIENTE'
        +',CCF_NOME_CLIENTE'
       // +',CCR_DATA_ULTIMO_PAGAMENTO'
        +',CCR_BENEFICIARIO'
        +',CCR_DATA)'
        +'VALUES(:CCR_CODIGO'
        +',:CCR_CODIGO_CLIENTE'
        +',:CCF_NOME_CLIENTE'
       // +',:CCR_DATA_ULTIMO_PAGAMENTO'
        +',:CCR_BENEFICIARIO'
        +',:CCR_DATA)';
        ParamByName('CCR_CODIGO').AsInteger := CCR_CODIGO;
        ParamByName('CCR_CODIGO_CLIENTE').AsInteger := CCR_CODIGO_CLIENTE;
        ParamByName('CCF_NOME_CLIENTE').AsString := CCF_NOME_CLIENTE;
      //  ParamByName('CCR_DATA_ULTIMO_PAGAMENTO').AsDate :=CCR_DATA_ULTIMO_PAGAMENTO;
        ParamByName('CCR_BENEFICIARIO').AsString := CCR_BENEFICIARIO;
        ParamByName('CCR_DATA').AsDate :=Now;
      //  ParamByName('CCR_DATA_ULTIMA_COMPRA').AsDate :=CCR_DATA_ULTIMA_COMPRA;
        ExecSQL;
      end;
   finally
     FreeandNIl(q1);
   end;
end;

procedure TClientesContaAPagarModel.Read(
  ObjClientesContaAPagar: TClientesContaAPagarModel; Codigo: Integer);
var
  q1 : TFdquery;
begin
   q1 := TFdquery.Create(nil);
   q1.Connection := dm.Con;

   try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Add('select * from TB_CLIENTESCONTASARECEBER where ccr_codigo=:ccr_codigo');
        ParamByName('ccr_codigo').AsInteger := Codigo;
        open;
        CCR_CODIGO := q1.FieldByName('CCR_CODIGO').AsInteger;
        CCR_CODIGO_CLIENTE := q1.FieldByName('CCR_CODIGO_CLIENTE').AsInteger;
        CCF_NOME_CLIENTE := q1.FieldByName('CCF_NOME_CLIENTE').AsString;
        CCR_DATA_ULTIMO_PAGAMENTO := q1.FieldByName('CCR_DATA_ULTIMO_PAGAMENTO').AsDateTime;
        CCR_BENEFICIARIO := q1.FieldByName('CCR_BENEFICIARIO').AsString;
        CCR_DATA := q1.FieldByName('CCR_DATA').AsDateTime;
        CCR_DATA_ULTIMA_COMPRA := q1.FieldByName('CCR_DATA_ULTIMA_COMPRA').AsDateTime;
      end;
   finally
     FreeandNIl(q1);
   end;
end;

procedure TClientesContaAPagarModel.SetCCF_NOME_CLIENTE(const Value: String);
begin
  FCCF_NOME_CLIENTE := Value;
end;

procedure TClientesContaAPagarModel.SetCCR_BENEFICIARIO(const Value: String);
begin
  FCCR_BENEFICIARIO := Value;
end;

procedure TClientesContaAPagarModel.SetCCR_CODIGO(const Value: Integer);
begin
  FCCR_CODIGO := Value;
end;

procedure TClientesContaAPagarModel.SetCCR_CODIGO_CLIENTE(const Value: Integer);
begin
  FCCR_CODIGO_CLIENTE := Value;
end;

procedure TClientesContaAPagarModel.SetCCR_DATA(const Value: TDate);
begin
  FCCR_DATA := Value;
end;

procedure TClientesContaAPagarModel.SetCCR_DATA_ULTIMA_COMPRA(
  const Value: TDate);
begin
  FCCR_DATA_ULTIMA_COMPRA := Value;
end;

procedure TClientesContaAPagarModel.SetCCR_DATA_ULTIMO_PAGAMENTO(
  const Value: TDate);
begin
  FCCR_DATA_ULTIMO_PAGAMENTO := Value;
end;

procedure TClientesContaAPagarModel.Update(
  ObjClientesContaAPagar: TClientesContaAPagarModel);
var
  q1 : TFdquery;
begin
   q1 := TFdquery.Create(nil);
   q1.Connection := dm.Con;

   try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Add('update TB_CLIENTESCONTASARECEBER set');
        sql.Add('CCR_CODIGO = :CCRCODIGO');
        sql.Add(',CCR_CODIGO_CLIENTE = :CCR_CODIGO_CLIENTE');
        sql.Add(',CCF_NOME_CLIENTE = :CCF_NOME_CLIENTE');
        sql.Add(',CCR_DATA_ULTIMO_PAGAMENTO = :CCR_DATA_ULTIMO_PAGAMENTO');
        sql.Add(',CCR_BENEFICIARIO = :CCR_BENEFICIARIO');
        SQL.Add('where CCR_CODIGO = :CCR_CODIGO');
        ParamByName('CCR_CODIGO').AsInteger := CCR_CODIGO;
        ParamByName('CCR_CODIGO_CLIENTE').AsInteger := CCR_CODIGO_CLIENTE;
        ParamByName('CCF_NOME_CLIENTE').AsString := CCF_NOME_CLIENTE;
        ParamByName('CCR_DATA_ULTIMO_PAGAMENTO').AsDate := CCR_DATA_ULTIMO_PAGAMENTO;
        ParamByName('CCR_BENEFICIARIO').AsString := CCR_BENEFICIARIO;
        ParamByName('CCR_DATA').AsDate := CCR_DATA_ULTIMO_PAGAMENTO;
        ParamByName('CCR_DATA_ULTIMA_COMPRA').AsDate := CCR_DATA_ULTIMO_PAGAMENTO;
        ExecSQL;
      end;
   finally
     FreeandNIl(q1);
   end;
end;

end.
