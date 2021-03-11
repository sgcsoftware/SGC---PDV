unit MiniSoft.Model.MovimentacaoDeVendas;


interface
      uses  IniFiles, Firedac.Comp.Client, Conexao, System.SysUtils, Vcl.Dialogs,
      uDWConstsData, uRESTDWPoolerDB;
      type
      TMovimentacaoDeVendasModel = class
        private
    FMOV_CODIGO: Integer;
    FMOV_FORMACHEQUEP: Double;
    FMOV_CODIGO_VENDEDOR: Integer;
    FMOV_VENDEDOR: String;
    FMOV_TIPO_VENDA: String;
    FMOV_FORMADINHEIRO: Double;
    FMOV_FORMABOLETO: Double;
    FMOV_CODIGO_USUARIO: Integer;
    FMOV_USUARIO: String;
    FMOV_FORMACARCREDITO: Double;
    FMOV_FORMACHEQUEA: Double;
    FMOV_DATA: TDate;
    FMOV_NUMERO_FISCAL: Integer;
    FMOV_CODIGO_VENDA: Integer;
    FMOV_CREDIARIO: Double;
    FMOV_BENEFICIARIO: String;
    FMOV_FORMACARDEBITO: Double;
    procedure SetMOV_BENEFICIARIO(const Value: String);
    procedure SetMOV_CODIGO(const Value: Integer);
    procedure SetMOV_CODIGO_USUARIO(const Value: Integer);
    procedure SetMOV_CODIGO_VENDA(const Value: Integer);
    procedure SetMOV_CODIGO_VENDEDOR(const Value: Integer);
    procedure SetMOV_CREDIARIO(const Value: Double);
    procedure SetMOV_DATA(const Value: TDate);
    procedure SetMOV_FORMABOLETO(const Value: Double);
    procedure SetMOV_FORMACARCREDITO(const Value: Double);
    procedure SetMOV_FORMACARDEBITO(const Value: Double);
    procedure SetMOV_FORMACHEQUEA(const Value: Double);
    procedure SetMOV_FORMACHEQUEP(const Value: Double);
    procedure SetMOV_FORMADINHEIRO(const Value: Double);
    procedure SetMOV_NUMERO_FISCAL(const Value: Integer);
    procedure SetMOV_TIPO_VENDA(const Value: String);
    procedure SetMOV_USUARIO(const Value: String);
    procedure SetMOV_VENDEDOR(const Value: String);
        public
         property MOV_CODIGO           : Integer read FMOV_CODIGO write SetMOV_CODIGO;
         property MOV_TIPO_VENDA       : String read FMOV_TIPO_VENDA write SetMOV_TIPO_VENDA;
         property MOV_CODIGO_VENDA     : Integer read FMOV_CODIGO_VENDA write SetMOV_CODIGO_VENDA;
         property MOV_NUMERO_FISCAL    : Integer read FMOV_NUMERO_FISCAL write SetMOV_NUMERO_FISCAL;
         property MOV_DATA             : TDate read FMOV_DATA write SetMOV_DATA;
         property MOV_USUARIO          : String read FMOV_USUARIO write SetMOV_USUARIO;
         property MOV_CODIGO_USUARIO    : Integer read FMOV_CODIGO_USUARIO write SetMOV_CODIGO_USUARIO;
         property MOV_VENDEDOR         : String read FMOV_VENDEDOR write SetMOV_VENDEDOR;
         property MOV_CODIGO_VENDEDOR   : Integer read FMOV_CODIGO_VENDEDOR write SetMOV_CODIGO_VENDEDOR;
         property MOV_FORMADINHEIRO    : Double read FMOV_FORMADINHEIRO write SetMOV_FORMADINHEIRO;
         property MOV_FORMABOLETO      : Double read FMOV_FORMABOLETO write SetMOV_FORMABOLETO;
         property MOV_FORMACARDEBITO   : Double read FMOV_FORMACARDEBITO write SetMOV_FORMACARDEBITO;
         property MOV_FORMACARCREDITO  : Double read FMOV_FORMACARCREDITO write SetMOV_FORMACARCREDITO;
         property MOV_FORMACHEQUEA     : Double read FMOV_FORMACHEQUEA write SetMOV_FORMACHEQUEA;
         property MOV_FORMACHEQUEP     : Double read FMOV_FORMACHEQUEP write SetMOV_FORMACHEQUEP;
         property MOV_CREDIARIO        : Double read FMOV_CREDIARIO write SetMOV_CREDIARIO;
         property MOV_BENEFICIARIO     : String read FMOV_BENEFICIARIO write SetMOV_BENEFICIARIO;
         procedure insert(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel);
         procedure Update(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel ; Tipo : String; CodVenda : Integer);
         procedure Delete(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel; Codigo: Integer; TipoVenda:String);
         procedure Read  (ObjMovimentacaoDeVendasModel  : TMovimentacaoDeVendasModel ; Codigo : Integer);
        constructor create;
        destructor destroy; override;
      end;
implementation

{ TMovimentacaoDeVendasModel }

constructor TMovimentacaoDeVendasModel.create;
begin

end;

procedure TMovimentacaoDeVendasModel.Delete(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel;
Codigo: Integer; TipoVenda:String);
begin

end;

destructor TMovimentacaoDeVendasModel.destroy;
begin

  inherited;
end;

procedure TMovimentacaoDeVendasModel.insert(
  ObjMovimentacaoDeVendasModel: TMovimentacaoDeVendasModel);
VAR
q1 : TFdquery;
begin
  q1 := TFdquery.Create(nil);
  q1.Connection := dm.Con;

    try
      with q1 do
      begin
        close;
        sql.Text := 'insert into TB_MOVIMENTACAOVENDAS'
        +'(MOV_CODIGO'
        +',MOV_TIPO_VENDA'
        +',MOV_CODIGO_VENDA'
        +',MOV_NUMERO_FISCAL'
        +',MOV_DATA'
        +',MOV_USUARIO'
        +',MOV_CODIGO_USUARIO'
        +',MOV_VENDEDOR'
        +',MOV_CODIGO_VENDEDOR'
        +',MOV_FORMADINHEIRO'
        +',MOV_FORMABOLETO'
        +',MOV_FORMACARDEBITO'
        +',MOV_FORMACARCREDITO'
        +',MOV_FORMACHEQUEA'
        +',MOV_FORMACHEQUEP'
        +',MOV_CREDIARIO'
        +',MOV_BENEFICIARIO)'
        +'values(:MOV_CODIGO'
        +',:MOV_TIPO_VENDA'
        +',:MOV_CODIGO_VENDA'
        +',:MOV_NUMERO_FISCAL'
        +',:MOV_DATA'
        +',:MOV_USUARIO'
        +',:MOV_CODIGO_USUARIO'
        +',:MOV_VENDEDOR'
        +',:MOV_CODIGO_VENDEDOR'
        +',:MOV_FORMADINHEIRO'
        +',:MOV_FORMABOLETO'
        +',:MOV_FORMACARDEBITO'
        +',:MOV_FORMACARCREDITO'
        +',:MOV_FORMACHEQUEA'
        +',:MOV_FORMACHEQUEP'
        +',:MOV_CREDIARIO'
        +',:MOV_BENEFICIARIO)';
        paramByName('MOV_CODIGO').Asinteger:=MOV_CODIGO;
        paramByName('MOV_TIPO_VENDA').AsString:=MOV_TIPO_VENDA;
        paramByName('MOV_CODIGO_VENDA').AsInteger:=MOV_CODIGO_VENDA;
        paramByName('MOV_NUMERO_FISCAL').AsInteger:=MOV_NUMERO_FISCAL;
        paramByName('MOV_DATA').AsDate:=MOV_DATA;
        paramByName('MOV_USUARIO').AsString:=MOV_USUARIO;
        paramByName('MOV_CODIGO_USUARIO').AsInteger:=MOV_CODIGO_USUARIO;
        paramByName('MOV_VENDEDOR').AsString:=MOV_VENDEDOR;
        paramByName('MOV_CODIGO_VENDEDOR').AsInteger:=MOV_CODIGO_VENDEDOR;
        paramByName('MOV_FORMADINHEIRO').AsFloat:=MOV_FORMADINHEIRO;
        paramByName('MOV_FORMABOLETO').AsFloat:=MOV_FORMABOLETO;
        paramByName('MOV_FORMACARDEBITO').AsFloat:=MOV_FORMACARDEBITO;
        paramByName('MOV_FORMACARCREDITO').AsFloat:=MOV_FORMACARCREDITO;
        paramByName('MOV_FORMACHEQUEA').AsFloat:=MOV_FORMACHEQUEA;
        paramByName('MOV_FORMACHEQUEP').AsFloat:=MOV_FORMACHEQUEP;
        paramByName('MOV_CREDIARIO').AsFloat:=MOV_CREDIARIO;
        paramByName('MOV_BENEFICIARIO').AsString:=MOV_BENEFICIARIO;
        ExecSQL;
      end;
    finally
      FreeandNil(q1);
    end;
end;

procedure TMovimentacaoDeVendasModel.Read(
  ObjMovimentacaoDeVendasModel: TMovimentacaoDeVendasModel; Codigo: Integer);
begin

end;

procedure TMovimentacaoDeVendasModel.SetMOV_BENEFICIARIO(const Value: String);
begin
  FMOV_BENEFICIARIO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_CODIGO(const Value: Integer);
begin
  FMOV_CODIGO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_CODIGO_USUARIO(
  const Value: Integer);
begin
  FMOV_CODIGO_USUARIO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_CODIGO_VENDA(const Value: Integer);
begin
  FMOV_CODIGO_VENDA := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_CODIGO_VENDEDOR(
  const Value: Integer);
begin
  FMOV_CODIGO_VENDEDOR := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_CREDIARIO(const Value: Double);
begin
  FMOV_CREDIARIO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_DATA(const Value: TDate);
begin
  FMOV_DATA := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_FORMABOLETO(const Value: Double);
begin
  FMOV_FORMABOLETO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_FORMACARCREDITO(
  const Value: Double);
begin
  FMOV_FORMACARCREDITO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_FORMACARDEBITO(const Value: Double);
begin
  FMOV_FORMACARDEBITO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_FORMACHEQUEA(const Value: Double);
begin
  FMOV_FORMACHEQUEA := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_FORMACHEQUEP(const Value: Double);
begin
  FMOV_FORMACHEQUEP := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_FORMADINHEIRO(const Value: Double);
begin
  FMOV_FORMADINHEIRO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_NUMERO_FISCAL(const Value: Integer);
begin
  FMOV_NUMERO_FISCAL := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_TIPO_VENDA(const Value: String);
begin
  FMOV_TIPO_VENDA := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_USUARIO(const Value: String);
begin
  FMOV_USUARIO := Value;
end;

procedure TMovimentacaoDeVendasModel.SetMOV_VENDEDOR(const Value: String);
begin
  FMOV_VENDEDOR := Value;
end;

procedure TMovimentacaoDeVendasModel.Update(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel ; Tipo : String; CodVenda : Integer);
VAR
q1 : TFdquery;
begin
  q1 := TFdquery.Create(nil);
  q1.Connection := dm.Con;

  try
     with q1 do
     begin
       close;
       sql.Add('update TB_MOVIMENTACAOVENDAS set');
       //Sql.Add('MOV_CODIGO=:MOV_CODIGO');
       Sql.Add('MOV_TIPO_VENDA=:MOV_TIPO_VENDA');
       Sql.Add(',MOV_CODIGO_VENDA=:MOV_CODIGO_VENDA');
       Sql.Add(',MOV_NUMERO_FISCAL=:MOV_NUMERO_FISCAL');
       Sql.Add(',MOV_DATA=:MOV_DATA');
       Sql.Add(',MOV_USUARIO=:MOV_USUARIO');
       Sql.Add(',MOV_CODIGO_USUARIO=:MOV_CODIGO_USUARIO');
       Sql.Add(',MOV_VENDEDOR=:MOV_VENDEDOR');
       Sql.Add(',MOV_CODIGO_VENDEDOR=:MOV_CODIGO_VENDEDOR');
       Sql.Add(',MOV_FORMADINHEIRO=:MOV_FORMADINHEIRO');
       Sql.Add(',MOV_FORMABOLETO=:MOV_FORMABOLETO');
       Sql.Add(',MOV_FORMACARDEBITO=:MOV_FORMACARDEBITO');
       Sql.Add(',MOV_FORMACARCREDITO=:MOV_FORMACARCREDITO');
       Sql.Add(',MOV_FORMACHEQUEA=:MOV_FORMACHEQUEA');
       Sql.Add(',MOV_FORMACHEQUEP=:MOV_FORMACHEQUEP');
       Sql.Add(',MOV_CREDIARIO=:MOV_CREDIARIO');
       Sql.Add(',MOV_BENEFICIARIO=:MOV_BENEFICIARIO');
       sql.Add('where MOV_TIPO_VENDA =:MOV_TIPO_VENDA');
       sql.Add('and MOV_CODIGO_VENDA =:MOV_CODIGO_VENDA');
       //paramByName('MOV_CODIGO').Asinteger:=MOV_CODIGO;
        paramByName('MOV_TIPO_VENDA').AsString:=Tipo;
        paramByName('MOV_CODIGO_VENDA').AsInteger:=CodVenda;
        paramByName('MOV_NUMERO_FISCAL').AsInteger:=MOV_NUMERO_FISCAL;
        paramByName('MOV_DATA').AsDate:=MOV_DATA;
        paramByName('MOV_USUARIO').AsString:=MOV_USUARIO;
        paramByName('MOV_CODIGO_USUARIO').AsInteger:=MOV_CODIGO_USUARIO;
        paramByName('MOV_VENDEDOR').AsString:=MOV_VENDEDOR;
        paramByName('MOV_CODIGO_VENDEDOR').AsInteger:=MOV_CODIGO_VENDEDOR;
        paramByName('MOV_FORMADINHEIRO').AsFloat:=MOV_FORMADINHEIRO;
        paramByName('MOV_FORMABOLETO').AsFloat:=MOV_FORMABOLETO;
        paramByName('MOV_FORMACARDEBITO').AsFloat:=MOV_FORMACARDEBITO;
        paramByName('MOV_FORMACARCREDITO').AsFloat:=MOV_FORMACARCREDITO;
        paramByName('MOV_FORMACHEQUEA').AsFloat:=MOV_FORMACHEQUEA;
        paramByName('MOV_FORMACHEQUEP').AsFloat:=MOV_FORMACHEQUEP;
        paramByName('MOV_CREDIARIO').AsFloat:=MOV_CREDIARIO;
        paramByName('MOV_BENEFICIARIO').AsString:=MOV_BENEFICIARIO;
        ExecSQL;

     end;
  finally
    freeandNil(q1);
  end;
end;

end.
