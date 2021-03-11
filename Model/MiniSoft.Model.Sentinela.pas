unit MiniSoft.Model.Sentinela;
interface
uses Conexao, Firedac.Comp.Client, uDWConstsData, uRESTDWPoolerDB;
     type
     TSentinelaModel = class
       private
    FSEN_OBS: String;
    FSEN_ACAO: String;
    FSEN_BENEFICIARIO: String;
    FSEN_HORA: TTime;
    FSEN_COD_USUARIO: Integer;
    FSEN_CODIGO: Integer;
    FSEN_JUSTIFICATIVA: String;
    FSEN_USUARIO: String;
    FSEN_DATA: TDate;
    FSEN_MODULO: String;
    procedure SetSEN_ACAO(const Value: String);
    procedure SetSEN_BENEFICIARIO(const Value: String);
    procedure SetSEN_COD_USUARIO(const Value: Integer);
    procedure SetSEN_CODIGO(const Value: Integer);
    procedure SetSEN_DATA(const Value: TDate);
    procedure SetSEN_HORA(const Value: TTime);
    procedure SetSEN_JUSTIFICATIVA(const Value: String);
    procedure SetSEN_MODULO(const Value: String);
    procedure SetSEN_OBS(const Value: String);
    procedure SetSEN_USUARIO(const Value: String);
       public
       property SEN_CODIGO : Integer read FSEN_CODIGO write SetSEN_CODIGO;
       property SEN_MODULO : String read FSEN_MODULO write SetSEN_MODULO;
       property SEN_ACAO : String read FSEN_ACAO write SetSEN_ACAO;
       property SEN_DATA : TDate read FSEN_DATA write SetSEN_DATA;
       property SEN_HORA : TTime read FSEN_HORA write SetSEN_HORA;
       property SEN_JUSTIFICATIVA : String read FSEN_JUSTIFICATIVA write SetSEN_JUSTIFICATIVA;
       property SEN_USUARIO : String read FSEN_USUARIO write SetSEN_USUARIO;
       property SEN_COD_USUARIO : Integer read FSEN_COD_USUARIO write SetSEN_COD_USUARIO;
       property SEN_BENEFICIARIO : String read FSEN_BENEFICIARIO write SetSEN_BENEFICIARIO;
       property SEN_OBS : String read FSEN_OBS write SetSEN_OBS;
       procedure Insert(ObjSENTINELA : TSentinelaModel);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TSentinelaModel }

constructor TSentinelaModel.create;
begin

end;

destructor TSentinelaModel.destroy;
begin

  inherited;
end;

procedure TSentinelaModel.Insert(ObjSENTINELA: TSentinelaModel);
var
q1 : Tfdquery;
begin
  q1 := Tfdquery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1, ObjSENTINELA do
    begin
       Close;
       sql.Text := ('INSERT INTO TB_SENTINELA'
       +'(SEN_MODULO, SEN_ACAO, SEN_DATA,SEN_HORA, SEN_JUSTIFICATIVA,'
       +'SEN_USUARIO, SEN_COD_USUARIO, SEN_BENEFICIARIO, SEN_OBS)'
       +'VALUES (:SEN_MODULO, :SEN_ACAO, :SEN_DATA,:SEN_HORA, :SEN_JUSTIFICATIVA,'
       +':SEN_USUARIO, :SEN_COD_USUARIO, :SEN_BENEFICIARIO, :SEN_OBS)');
       ParamByName('SEN_MODULO').AsString := SEN_MODULO;
       ParamByName('SEN_ACAO').AsString := SEN_ACAO;
       ParamByName('SEN_DATA').AsDate  := SEN_DATA;
       ParamByName('SEN_HORA').AsTime := SEN_HORA;
       ParamByName('SEN_JUSTIFICATIVA').AsString := SEN_JUSTIFICATIVA;
       ParamByName('SEN_USUARIO').AsString :=SEN_USUARIO ;
       ParamByName('SEN_COD_USUARIO').AsInteger :=SEN_COD_USUARIO ;
       ParamByName('SEN_BENEFICIARIO').AsString :=SEN_BENEFICIARIO;
       ParamByName('SEN_OBS').AsString := SEN_OBS;

       ExecSQL;
    end;
  finally

  end;

end;

procedure TSentinelaModel.SetSEN_ACAO(const Value: String);
begin
  FSEN_ACAO := Value;
end;

procedure TSentinelaModel.SetSEN_BENEFICIARIO(const Value: String);
begin
  FSEN_BENEFICIARIO := Value;
end;

procedure TSentinelaModel.SetSEN_CODIGO(const Value: Integer);
begin
  FSEN_CODIGO := Value;
end;

procedure TSentinelaModel.SetSEN_COD_USUARIO(const Value: Integer);
begin
  FSEN_COD_USUARIO := Value;
end;

procedure TSentinelaModel.SetSEN_DATA(const Value: TDate);
begin
  FSEN_DATA := Value;
end;

procedure TSentinelaModel.SetSEN_HORA(const Value: TTime);
begin
  FSEN_HORA := Value;
end;

procedure TSentinelaModel.SetSEN_JUSTIFICATIVA(const Value: String);
begin
  FSEN_JUSTIFICATIVA := Value;
end;

procedure TSentinelaModel.SetSEN_MODULO(const Value: String);
begin
  FSEN_MODULO := Value;
end;

procedure TSentinelaModel.SetSEN_OBS(const Value: String);
begin
  FSEN_OBS := Value;
end;

procedure TSentinelaModel.SetSEN_USUARIO(const Value: String);
begin
  FSEN_USUARIO := Value;
end;

end.
