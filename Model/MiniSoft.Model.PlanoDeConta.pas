unit MiniSoft.Model.PlanoDeConta;


interface
     uses vcl.dialogs, System.SysUtils, Firedac.Comp.Client, System.Classes, System.Math,
     Conexao, IdHashMessageDigest, uDWConstsData, uRESTDWPoolerDB;
     type
     TPlanoDeContaModel = class
       private
    FPLA_BENEFICIARIO: String;
    FPLA_NOMEPLANO: String;
    FPLA_UUID: String;
    FPLA_CODIGO: Integer;
    FPLA_CONTA: String;
    FPLA_SALDO: Double;
    procedure SetPLA_BENEFICIARIO(const Value: String);
    procedure SetPLA_CODIGO(const Value: Integer);
    procedure SetPLA_CONTA(const Value: String);
    procedure SetPLA_NOMEPLANO(const Value: String);
    procedure SetPLA_SALDO(const Value: Double);
    procedure SetPLA_UUID(const Value: String);
       public
       property PLA_CODIGO : Integer read FPLA_CODIGO write SetPLA_CODIGO;
       property PLA_UUID : String read FPLA_UUID write SetPLA_UUID;
       property PLA_CONTA : String read FPLA_CONTA write SetPLA_CONTA;
       property PLA_NOMEPLANO : String read FPLA_NOMEPLANO write SetPLA_NOMEPLANO;
       property PLA_SALDO : Double read FPLA_SALDO write SetPLA_SALDO;
       property PLA_BENEFICIARIO : String read FPLA_BENEFICIARIO write SetPLA_BENEFICIARIO;
       procedure insert(ObjPlanoDeConta : TPlanoDeContaModel);
       procedure Update(ObjPlanoDeConta : TPlanoDeContaModel);
       procedure Delete(ObjPlanoDeConta : TPlanoDeContaModel);
       procedure Read  (ObjPlanoDeConta : TPlanoDeContaModel ; Codigo : Integer);
       procedure MovimentaPlanoDeConta(vlrEntrada, vlrSaida : Double ; Codigo : Integer);
       procedure MovimentaPlanoDeContaInverso (vlrEntrada, vlrSaida : Double ; Codigo : Integer);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TPlanoDeContaModel }

constructor TPlanoDeContaModel.create;
begin

end;

procedure TPlanoDeContaModel.Delete(ObjPlanoDeConta: TPlanoDeContaModel);
begin

end;

destructor TPlanoDeContaModel.destroy;
begin

  inherited;
end;

procedure TPlanoDeContaModel.insert(ObjPlanoDeConta: TPlanoDeContaModel);
var
q1 : TFDquery;
begin
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

    try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Text := 'insert into TB_PLANODECONTA'
        +'(PLA_CODIGO, PLA_UUID, PLA_CONTA, PLA_NOMEPLANO, PLA_SALDO, PLA_BENEFICIARIO)'
        +'VALUES(:PLA_CODIGO, :PLA_UUID, :PLA_CONTA, :PLA_NOMEPLANO, :PLA_SALDO, :PLA_BENEFICIARIO)';
        ParamByName('PLA_CODIGO').AsInteger := PLA_CODIGO;
        ParamByName('PLA_UUID').AsString := PLA_UUID;
        ParamByName('PLA_CONTA').AsString := PLA_CONTA;
        ParamByName('PLA_NOMEPLANO').AsString := PLA_NOMEPLANO;
        ParamByName('PLA_SALDO').AsFloat := PLA_SALDO;
        ParamByName('PLA_BENEFICIARIO').AsString := PLA_BENEFICIARIO;
        ExecSQL;
      end;
    finally
     FreeandNil(q1);
    end;
end;

procedure TPlanoDeContaModel.MovimentaPlanoDeConta(vlrEntrada, vlrSaida: Double;

  Codigo: Integer);
var
q1 : TFDquery;
begin
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_PLANODECONTA where pla_codigo='+QuotedStr(inttostr(Codigo)));
       //ParamByName('pla_codigo').AsInteger := Codigo;
       open;
       if not IsEmpty then
       begin
       edit;
       FieldByName('PLA_SALDO').AsFloat := q1.FieldByName('PLA_SALDO').AsFloat + vlrEntrada - vlrSaida;
       post;
       end;
     end;
   finally
     FreeandnIl(q1);
   end;
end;

procedure TPlanoDeContaModel.MovimentaPlanoDeContaInverso(vlrEntrada,
  vlrSaida: Double; Codigo: Integer);
var
q1 : TFDquery;
begin
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_PLANODECONTA where pla_codigo=:pla_codigo');
       ParamByName('pla_codigo').AsInteger := Codigo;
       open;
       edit;
       FieldByName('PLA_SALDO').AsFloat := q1.FieldByName('PLA_SALDO').AsFloat - vlrEntrada + vlrSaida;
       post;
     end;
   finally
     FreeandnIl(q1);
   end;
end;

procedure TPlanoDeContaModel.Read(ObjPlanoDeConta: TPlanoDeContaModel;
  Codigo: Integer);
var
q1 : TFDquery;
begin
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

    try
      with q1 do
      begin
         close;
         sql.Clear;
         sql.Add('select * from TB_PLANODECONTA where PLA_CODIGO = :PLA_CODIGO');
         ParamByName('PLA_CODIGO').AsInteger := Codigo;
         open;
         PLA_CODIGO := FieldByName('PLA_CODIGO').AsInteger;
         //PLA_UUID := q1.FieldByName('PLA_UUID').Asstring;
         PLA_CONTA := FieldByName('PLA_CONTA').Asstring;
         PLA_NOMEPLANO := FieldByName('PLA_NOMEPLANO').Asstring;
         PLA_SALDO := FieldByName('PLA_SALDO').Asfloat;
         PLA_BENEFICIARIO := FieldByName('PLA_BENEFICIARIO').Asstring;
      end;
    finally
      FreeandNil(q1);
    end;

end;

procedure TPlanoDeContaModel.SetPLA_BENEFICIARIO(const Value: String);
begin
  FPLA_BENEFICIARIO := Value;
end;

procedure TPlanoDeContaModel.SetPLA_CODIGO(const Value: Integer);
begin
  FPLA_CODIGO := Value;
end;

procedure TPlanoDeContaModel.SetPLA_CONTA(const Value: String);
begin
  FPLA_CONTA := Value;
end;

procedure TPlanoDeContaModel.SetPLA_NOMEPLANO(const Value: String);
begin
  FPLA_NOMEPLANO := Value;
end;

procedure TPlanoDeContaModel.SetPLA_SALDO(const Value: Double);
begin
  FPLA_SALDO := Value;
end;

procedure TPlanoDeContaModel.SetPLA_UUID(const Value: String);
begin
  FPLA_UUID := Value;
end;

procedure TPlanoDeContaModel.Update(ObjPlanoDeConta: TPlanoDeContaModel);
var
q1 : TFDquery;
begin
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

    try
      with q1 do
      begin
         close;
         sql.Add('UPDATE TB_PLANODECONTA SET');
         sql.Add('PLA_CODIGO=:PLA_CODIGO');
         sql.Add(',PLA_CONTA=:PLA_CONTA');
         sql.Add(',PLA_NOMEPLANO=:PLA_NOMEPLANO');
         sql.Add(',PLA_SALDO=:PLA_SALDO');
         sql.Add(',PLA_BENEFICIARIO=:PLA_BENEFICIARIO');
         sql.Add('where pla_codigo = :pla_codigo');
         ParamByName('PLA_CODIGO').AsInteger := PLA_CODIGO;
         ParamByName('PLA_CONTA').AsString := PLA_CONTA;
         ParamByName('PLA_NOMEPLANO').AsString := PLA_NOMEPLANO;
         ParamByName('PLA_SALDO').AsFloat := PLA_SALDO;
         ParamByName('PLA_BENEFICIARIO').AsString := PLA_BENEFICIARIO;
         ExecSQL;
      end;
    finally
      FreeandNil(q1);
    end;

end;

end.
