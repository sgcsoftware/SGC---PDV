unit MiniSoft.Model.Usuarios;

interface
    uses vcl.dialogs, System.SysUtils, Firedac.Comp.Client, System.Classes, System.Math,
  Conexao, IdHashMessageDigest, Minisoft.Model.Sentinela, uDWConstsData, uRESTDWPoolerDB;
    type
    TUsuariosModel = class
      private
    FUSU_UUID: String;
    FUSU_CODIGO: integer;
    FUSU_NOME_COMPLETO: String;
    FUSU_LOGIN: String;
    FUSU_BENEFICIARIO: String;
    FUSU_PORCENTAGEM_VENDA: Double;
    FUSU_ULTIMO_ACESSO: TDate;
    FUSU_SENHA: String;
    FUSU_NIVEL: String;
    FUSU_LOGADO: String;
    FUSU_CODIGO_NIVEL: Integer;
    FUSU_COMISSAO_CHEQUE: Double;
    FUSU_COMISSAO_CREDITO: Double;
    FUSU_COMISSAO_DINHEIRO: Double;
    FUSU_COMISSAO_BOLETO: Double;
    FUSU_COMISSAO_CREDIARIO: Double;
    FUSU_COMISSAO_DEBITO: Double;
    procedure SetUSU_CODIGO(const Value: integer);
    procedure SetUSU_NOME_COMPLETO(const Value: String);
    procedure SetUSU_UUID(const Value: String);
    procedure SetUSU_BENEFICIARIO(const Value: String);
    procedure SetUSU_LOGIN(const Value: String);
    procedure SetUSU_PORCENTAGEM_VENDA(const Value: Double);
    procedure SetUSU_SENHA(const Value: String);
    procedure SetUSU_ULTIMO_ACESSO(const Value: TDate);
    procedure SetUSU_NIVEL(const Value: String);
    procedure SetUSU_LOGADO(const Value: String);
    procedure SetUSU_CODIGO_NIVEL(const Value: Integer);
    procedure SetUSU_COMISSAO_BOLETO(const Value: Double);
    procedure SetUSU_COMISSAO_CHEQUE(const Value: Double);
    procedure SetUSU_COMISSAO_CREDIARIO(const Value: Double);
    procedure SetUSU_COMISSAO_CREDITO(const Value: Double);
    procedure SetUSU_COMISSAO_DEBITO(const Value: Double);
    procedure SetUSU_COMISSAO_DINHEIRO(const Value: Double);
      public
      property USU_CODIGO : integer read FUSU_CODIGO write SetUSU_CODIGO;
      property USU_UUID : String read FUSU_UUID write SetUSU_UUID;
      property USU_NOME_COMPLETO : String read FUSU_NOME_COMPLETO write SetUSU_NOME_COMPLETO;
      property USU_LOGIN : String read FUSU_LOGIN write SetUSU_LOGIN;
      property USU_SENHA : String read FUSU_SENHA write SetUSU_SENHA;
      property USU_BENEFICIARIO : String read FUSU_BENEFICIARIO write SetUSU_BENEFICIARIO;
      property USU_PORCENTAGEM_VENDA : Double read FUSU_PORCENTAGEM_VENDA write SetUSU_PORCENTAGEM_VENDA;
      property USU_ULTIMO_ACESSO : TDate read FUSU_ULTIMO_ACESSO write SetUSU_ULTIMO_ACESSO;
      property USU_NIVEL : String read FUSU_NIVEL write SetUSU_NIVEL;
      property USU_LOGADO : String read FUSU_LOGADO write SetUSU_LOGADO;
      property USU_CODIGO_NIVEL : Integer read FUSU_CODIGO_NIVEL write SetUSU_CODIGO_NIVEL;
      property USU_COMISSAO_DINHEIRO : Double read FUSU_COMISSAO_DINHEIRO write SetUSU_COMISSAO_DINHEIRO;
      property USU_COMISSAO_CREDIARIO : Double read FUSU_COMISSAO_CREDIARIO write SetUSU_COMISSAO_CREDIARIO;
      property USU_COMISSAO_DEBITO : Double read FUSU_COMISSAO_DEBITO write SetUSU_COMISSAO_DEBITO;
      property USU_COMISSAO_CREDITO : Double read FUSU_COMISSAO_CREDITO write SetUSU_COMISSAO_CREDITO;
      property USU_COMISSAO_CHEQUE : Double read FUSU_COMISSAO_CHEQUE write SetUSU_COMISSAO_CHEQUE;
      property USU_COMISSAO_BOLETO : Double read FUSU_COMISSAO_BOLETO write SetUSU_COMISSAO_BOLETO;
      procedure Insert(ObjUSUARIO : TUsuariosModel);
      procedure Update(ObjUSUARIO : TUsuariosModel);
      procedure Delete(ObjUSUARIO : TUsuariosModel);
      procedure Read  (ObjUSUARIO : TUsuariosModel ; Codigo : Integer);
      class function Criptografar(const Value: string): string;
      function Login (ObjUSUARIO : TUsuariosModel; Beneficiario, login, senha : String) : Boolean;
      constructor create;
      destructor destroy ; override;
    end;
    implementation

{ TUsuariosModel }

constructor TUsuariosModel.create;
begin

end;

class function TUsuariosModel.Criptografar(const Value: string): string;
var
    xMD5: TIdHashMessageDigest5;
begin
    xMD5 := TIdHashMessageDigest5.Create;
    try
        Result := xMD5.HashStringAsHex(Value);
    finally
        xMD5.Free;
    end;
end;

procedure TUsuariosModel.Delete(ObjUSUARIO: TUsuariosModel);
var
q1 : TFDQuery;
begin
  q1 := TFDQuery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1, ObjUSUARIO do
    begin
       Close;
       sql.Add('delete from tb_usuarios where usu_codigo = :usu_codigo');
       ParamByName('usu_codigo').AsInteger := USU_CODIGO;
       ExecSQL;
    end;

  finally
    FreeandNil(q1);
  end;
end;

destructor TUsuariosModel.destroy;
begin

  inherited;
end;

procedure TUsuariosModel.Insert(ObjUSUARIO: TUsuariosModel);
var
q1 : TFDQuery;
begin
  q1 := TFDQuery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1, ObjUSUARIO do
    begin
       Close;
       Sql.Text := 'INSERT INTO TB_USUARIOS (USU_NOME_COMPLETO,USU_LOGIN,'
      +'USU_SENHA,USU_NIVEL,USU_BENEFICIARIO,USU_ULTIMO_ACESSO, USU_CODIGO_NIVEL,USU_COMISSAO_DINHEIRO,USU_COMISSAO_CREDIARIO,USU_COMISSAO_DEBITO,USU_COMISSAO_CREDITO,USU_COMISSAO_CHEQUE,USU_COMISSAO_BOLETO)'
      +'VALUES (:USU_NOME_COMPLETO,:USU_LOGIN,:USU_SENHA,:USU_NIVEL,'
      +':USU_BENEFICIARIO,:USU_ULTIMO_ACESSO,:USU_CODIGO_NIVEL,:USU_COMISSAO_DINHEIRO,:USU_COMISSAO_CREDIARIO,:USU_COMISSAO_DEBITO,:USU_COMISSAO_CREDITO,:USU_COMISSAO_CHEQUE,:USU_COMISSAO_BOLETO)';
       ParamByName('USU_NOME_COMPLETO').AsString := USU_NOME_COMPLETO;
       ParamByName('USU_LOGIN').AsString := USU_LOGIN;
       ParamByName('USU_SENHA').AsString := Criptografar(USU_SENHA);
       ParamByName('USU_NIVEL').AsString := USU_NIVEL;
       ParamByName('USU_BENEFICIARIO').AsString := USU_BENEFICIARIO;
      // ParamByName('USU_PORCENTAGEM_VENDA').asfloat := USU_PORCENTAGEM_VENDA;
       ParamByName('USU_ULTIMO_ACESSO').asDate := USU_ULTIMO_ACESSO;
       ParamByName('USU_CODIGO_NIVEL').AsInteger := USU_CODIGO_NIVEL;
       ParamByName('USU_COMISSAO_DINHEIRO').asfloat := USU_COMISSAO_DINHEIRO;
       ParamByName('USU_COMISSAO_CREDIARIO').asfloat := USU_COMISSAO_CREDIARIO;
       ParamByName('USU_COMISSAO_DEBITO').asfloat := USU_COMISSAO_DEBITO;
       ParamByName('USU_COMISSAO_CREDITO').asfloat := USU_COMISSAO_CREDITO;
       ParamByName('USU_COMISSAO_CHEQUE').asfloat := USU_COMISSAO_CHEQUE;
       ParamByName('USU_COMISSAO_BOLETO').asfloat := USU_COMISSAO_BOLETO;
       ExecSQL;
       ShowMessage('Usuário Cadastrado Com Sucesso!')
    end;
  finally
     FreeandNil(q1);
  end;
end;

function TUsuariosModel.Login(ObjUSUARIO : TUsuariosModel;Beneficiario, login, senha: String): Boolean;
var
q1 : TFDQuery;
i : String;
SENTINELA : TSentinelaModel;
begin
  q1 := TFDQuery.Create(nil);
  q1.Connection := dm.Con;

   try
     i := Criptografar(senha);
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from tb_usuarios where usu_beneficiario=:usu_beneficiario');
       sql.Add('and usu_login = :usu_login');
       sql.Add('and usu_senha = :usu_senha');
       ParamByName('usu_beneficiario').Value := beneficiario;
       ParamByName('usu_login').Value := login;
       ParamByName('usu_senha').Value := Criptografar(senha);
       open;
       if not IsEmpty then
         begin
          USU_CODIGO_NIVEL := q1.FieldByName('USU_CODIGO_NIVEL').AsInteger;
          USU_LOGADO := 'True';
          USU_CODIGO := q1.FieldByName('USU_CODIGO').AsInteger;
          USU_LOGIN := q1.FieldByName('USU_LOGIN').AsString;
          q1.Edit;
          q1.FieldByName('USU_ULTIMO_ACESSO').AsDateTime := now;
          q1.Post;
          SENTINELA := TSentinelaModel.create;
          try
            with SENTINELA do
            begin
               SEN_MODULO := 'Login';
               SEN_ACAO := 'Acesso';
               SEN_DATA := now;
               SEN_HORA := now;
               SEN_JUSTIFICATIVA := 'Acesso Autorizado';
               SEN_USUARIO := login;
               SEN_COD_USUARIO := q1.FieldByName('usu_codigo').AsInteger;
               SEN_BENEFICIARIO := beneficiario;
               SEN_OBS := 'Acesso Autorizado ao Usuário '+login;
               Insert(SENTINELA);
            end;
          finally
           FreeandNil(SENTINELA);
          end;
         end
         else
         begin
          USU_LOGADO := 'False';
          SENTINELA := TSentinelaModel.create;
          try
            with SENTINELA do
            begin
               SEN_MODULO := 'Login PDV';
               SEN_ACAO := 'Acesso';
               SEN_DATA := now;
               SEN_HORA := now;
               SEN_JUSTIFICATIVA := 'Senha Inválida';
               SEN_USUARIO := login;
               SEN_COD_USUARIO := 0;
               SEN_BENEFICIARIO := beneficiario;
               SEN_OBS := 'Acesso Negado ao Usuário '+login+' Senha Inválida!';
               Insert(SENTINELA);
            end;
          finally
           FreeandNil(SENTINELA);
          end;
         end;
     end;
   finally
    FreeandNil(q1);
   end;
end;

procedure TUsuariosModel.Read(ObjUSUARIO: TUsuariosModel ; Codigo : Integer);
var
q1 : TFDQuery;
begin
  q1 := TFDQuery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1, ObjUSUARIO do
    begin
       Close;
       Sql.Clear;
       sql.Add('select * from tb_usuarios where usu_codigo = :usu_codigo');
       ParamByName('usu_codigo').AsInteger := Codigo;
       open;
       USU_CODIGO := FieldByName('USU_CODIGO').asinteger;
       USU_NOME_COMPLETO := FieldByName('USU_NOME_COMPLETO').AsString;
       USU_LOGIN := FieldByName('USU_LOGIN').AsString;
       USU_SENHA := FieldByName('USU_SENHA').AsString;
       USU_ULTIMO_ACESSO := FieldByName('USU_ULTIMO_ACESSO').AsDateTime;
       USU_NIVEL := FieldByName('USU_NIVEL').AsString;
       USU_CODIGO_NIVEL := FieldByName('USU_CODIGO_NIVEL').Asinteger;
       USU_COMISSAO_DINHEIRO := FieldByName('USU_COMISSAO_DINHEIRO').asfloat;
       USU_COMISSAO_CREDIARIO := FieldByName('USU_COMISSAO_CREDIARIO').asfloat;
       USU_COMISSAO_DEBITO := FieldByName('USU_COMISSAO_DEBITO').asfloat;
       USU_COMISSAO_CREDITO := FieldByName('USU_COMISSAO_CREDITO').asfloat;
       USU_COMISSAO_CHEQUE := FieldByName('USU_COMISSAO_CHEQUE').asfloat;
       USU_COMISSAO_BOLETO := FieldByName('USU_COMISSAO_BOLETO').asfloat;
    end;
  finally
    FreeandNil(q1)
  end;
end;

procedure TUsuariosModel.SetUSU_BENEFICIARIO(const Value: String);
begin
  FUSU_BENEFICIARIO := Value;
end;

procedure TUsuariosModel.SetUSU_CODIGO(const Value: integer);
begin
  FUSU_CODIGO := Value;
end;

procedure TUsuariosModel.SetUSU_CODIGO_NIVEL(const Value: Integer);
begin
  FUSU_CODIGO_NIVEL := Value;
end;

procedure TUsuariosModel.SetUSU_COMISSAO_BOLETO(const Value: Double);
begin
  FUSU_COMISSAO_BOLETO := Value;
end;

procedure TUsuariosModel.SetUSU_COMISSAO_CHEQUE(const Value: Double);
begin
  FUSU_COMISSAO_CHEQUE := Value;
end;

procedure TUsuariosModel.SetUSU_COMISSAO_CREDIARIO(const Value: Double);
begin
  FUSU_COMISSAO_CREDIARIO := Value;
end;

procedure TUsuariosModel.SetUSU_COMISSAO_CREDITO(const Value: Double);
begin
  FUSU_COMISSAO_CREDITO := Value;
end;

procedure TUsuariosModel.SetUSU_COMISSAO_DEBITO(const Value: Double);
begin
  FUSU_COMISSAO_DEBITO := Value;
end;

procedure TUsuariosModel.SetUSU_COMISSAO_DINHEIRO(const Value: Double);
begin
  FUSU_COMISSAO_DINHEIRO := Value;
end;

procedure TUsuariosModel.SetUSU_LOGADO(const Value: String);
begin
  FUSU_LOGADO := Value;
end;

procedure TUsuariosModel.SetUSU_LOGIN(const Value: String);
begin
  FUSU_LOGIN := Value;
end;

procedure TUsuariosModel.SetUSU_NIVEL(const Value: String);
begin
  FUSU_NIVEL := Value;
end;

procedure TUsuariosModel.SetUSU_NOME_COMPLETO(const Value: String);
begin
  FUSU_NOME_COMPLETO := Value;
end;

procedure TUsuariosModel.SetUSU_PORCENTAGEM_VENDA(const Value: Double);
begin
  FUSU_PORCENTAGEM_VENDA := Value;
end;

procedure TUsuariosModel.SetUSU_SENHA(const Value: String);
begin
  FUSU_SENHA := Value;
end;

procedure TUsuariosModel.SetUSU_ULTIMO_ACESSO(const Value: TDate);
begin
  FUSU_ULTIMO_ACESSO := Value;
end;

procedure TUsuariosModel.SetUSU_UUID(const Value: String);
begin
  FUSU_UUID := Value;
end;

procedure TUsuariosModel.Update(ObjUSUARIO: TUsuariosModel);
var
q1 : TFDQuery;
begin
  q1 := TFDQuery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1, ObjUSUARIO do
    begin
       Close;
       Sql.Clear;
       Sql.Add('UPDATE TB_USUARIOS SET');
       sql.Add('USU_NOME_COMPLETO = :USU_NOME_COMPLETO');
       sql.Add(',USU_LOGIN = :USU_LOGIN');
       sql.Add(',USU_NIVEL = :USU_NIVEL');
       sql.Add(',USU_BENEFICIARIO = :USU_BENEFICIARIO');
       sql.Add(',USU_ULTIMO_ACESSO = :USU_ULTIMO_ACESSO');
       sql.Add(',USU_CODIGO_NIVEL = :USU_CODIGO_NIVEL');
       sql.Add(',USU_COMISSAO_DINHEIRO = :USU_COMISSAO_DINHEIRO');
       sql.Add(',USU_COMISSAO_CREDIARIO = :USU_COMISSAO_CREDIARIO');
       sql.Add(',USU_COMISSAO_DEBITO = :USU_COMISSAO_DEBITO');
       sql.Add(',USU_COMISSAO_CREDITO = :USU_COMISSAO_CREDITO');
       sql.Add(',USU_COMISSAO_CHEQUE = :USU_COMISSAO_CHEQUE');
       sql.Add(',USU_COMISSAO_BOLETO = :USU_COMISSAO_BOLETO');
       sql.Add('where USU_CODIGO = :USU_CODIGO');
       ParamByName('USU_CODIGO').asinteger := USU_CODIGO;
       ParamByName('USU_NOME_COMPLETO').AsString := USU_NOME_COMPLETO;
       ParamByName('USU_LOGIN').AsString := USU_LOGIN;
      // ParamByName('USU_SENHA').AsString := Criptografar(USU_SENHA);
       ParamByName('USU_NIVEL').AsString := USU_NIVEL;
       ParamByName('USU_BENEFICIARIO').AsString := USU_BENEFICIARIO;
       ParamByName('USU_ULTIMO_ACESSO').asDate := USU_ULTIMO_ACESSO;
       ParamByName('USU_CODIGO_NIVEL').AsInteger := USU_CODIGO_NIVEL;
       ParamByName('USU_COMISSAO_DINHEIRO').asfloat := USU_COMISSAO_DINHEIRO;
       ParamByName('USU_COMISSAO_CREDIARIO').asfloat := USU_COMISSAO_CREDIARIO;
       ParamByName('USU_COMISSAO_DEBITO').asfloat := USU_COMISSAO_DEBITO;
       ParamByName('USU_COMISSAO_CREDITO').asfloat := USU_COMISSAO_CREDITO;
       ParamByName('USU_COMISSAO_CHEQUE').asfloat := USU_COMISSAO_CHEQUE;
       ParamByName('USU_COMISSAO_BOLETO').asfloat := USU_COMISSAO_BOLETO;
       ExecSQL;

    end;
  finally
     FreeandNil(q1);
  end;
end;

end.
