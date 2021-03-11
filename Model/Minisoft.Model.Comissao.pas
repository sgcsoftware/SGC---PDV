unit Minisoft.Model.Comissao;


interface
  uses Firedac.Comp.Client, vcl.dialogs, Vcl.Forms, Conexao,
  System.SysUtils, uDWConstsData, uRESTDWPoolerDB;
  type
  TComissaoModel = class
    private
    FCOM_CODIGO_GRUPO: Integer;
    FCOM_NOME_VENDEDOR: String;
    FCOM_PRECO_PRODUTO: Double;
    FCOM_CODIGO_PRODUTO: Integer;
    FCOM_TIPOVENDA: String;
    FCOM_PRODUTO: String;
    FCOM_NUMERO_FISCAL: Integer;
    FCOM_CODIGO_VENDA: Integer;
    FCOM_BENEFICIARIO: String;
    FCOM_QUANTIDADE_PRODUTO: Double;
    FCOM_VALOR_COMISSAO: Double;
    FCOM_CODIGO: Integer;
    FCOM_NOME_GRUPO: String;
    FCOM_CODIGO_VENDEDOR: Integer;
    FCOM_CUSTO_PRODUTO: Double;
    FCOM_FORMA_PAGAMENTO: String;
    FCOM_VALOR_FORMA_PAGAMENTO: Double;
    FCOM_DATA: TDate;
    procedure SetCOM_BENEFICIARIO(const Value: String);
    procedure SetCOM_CODIGO(const Value: Integer);
    procedure SetCOM_CODIGO_GRUPO(const Value: Integer);
    procedure SetCOM_CODIGO_PRODUTO(const Value: Integer);
    procedure SetCOM_CODIGO_VENDA(const Value: Integer);
    procedure SetCOM_CODIGO_VENDEDOR(const Value: Integer);
    procedure SetCOM_CUSTO_PRODUTO(const Value: Double);
    procedure SetCOM_NOME_GRUPO(const Value: String);
    procedure SetCOM_NOME_VENDEDOR(const Value: String);
    procedure SetCOM_NUMERO_FISCAL(const Value: Integer);
    procedure SetCOM_PRECO_PRODUTO(const Value: Double);
    procedure SetCOM_PRODUTO(const Value: String);
    procedure SetCOM_QUANTIDADE_PRODUTO(const Value: Double);
    procedure SetCOM_TIPOVENDA(const Value: String);
    procedure SetCOM_VALOR_COMISSAO(const Value: Double);
    procedure SetCOM_FORMA_PAGAMENTO(const Value: String);
    procedure SetCOM_VALOR_FORMA_PAGAMENTO(const Value: Double);
    procedure SetCOM_DATA(const Value: TDate);
    public
    property COM_CODIGO              : Integer read FCOM_CODIGO write SetCOM_CODIGO;
    property COM_TIPOVENDA           : String read FCOM_TIPOVENDA write SetCOM_TIPOVENDA;
    property COM_CODIGO_VENDA        : Integer read FCOM_CODIGO_VENDA write SetCOM_CODIGO_VENDA;
    property COM_NUMERO_FISCAL       : Integer read FCOM_NUMERO_FISCAL write SetCOM_NUMERO_FISCAL;
    property COM_PRODUTO             : String read FCOM_PRODUTO write SetCOM_PRODUTO;
    property COM_CODIGO_PRODUTO      : Integer read FCOM_CODIGO_PRODUTO write SetCOM_CODIGO_PRODUTO;
    property COM_QUANTIDADE_PRODUTO  : Double read FCOM_QUANTIDADE_PRODUTO write SetCOM_QUANTIDADE_PRODUTO;
    property COM_CUSTO_PRODUTO       : Double read FCOM_CUSTO_PRODUTO write SetCOM_CUSTO_PRODUTO;
    property COM_PRECO_PRODUTO       : Double read FCOM_PRECO_PRODUTO write SetCOM_PRECO_PRODUTO;
    property COM_VALOR_COMISSAO      : Double read FCOM_VALOR_COMISSAO write SetCOM_VALOR_COMISSAO;
    property COM_CODIGO_GRUPO        : Integer read FCOM_CODIGO_GRUPO write SetCOM_CODIGO_GRUPO;
    property COM_NOME_GRUPO          : String read FCOM_NOME_GRUPO write SetCOM_NOME_GRUPO;
    property COM_CODIGO_VENDEDOR     : Integer read FCOM_CODIGO_VENDEDOR write SetCOM_CODIGO_VENDEDOR;
    property COM_NOME_VENDEDOR       : String read FCOM_NOME_VENDEDOR write SetCOM_NOME_VENDEDOR;
    property COM_BENEFICIARIO        : String read FCOM_BENEFICIARIO write SetCOM_BENEFICIARIO;
    property COM_FORMA_PAGAMENTO : String read FCOM_FORMA_PAGAMENTO write SetCOM_FORMA_PAGAMENTO;
    property COM_VALOR_FORMA_PAGAMENTO : Double read FCOM_VALOR_FORMA_PAGAMENTO write SetCOM_VALOR_FORMA_PAGAMENTO;
    property COM_DATA : TDate read FCOM_DATA write SetCOM_DATA;
    procedure Insert(ObjComissao : TComissaoModel);
    Procedure Update(ObjComissao : TComissaoModel);
    procedure Delete(ObjComissao : TComissaoModel);
    procedure Read  (ObjComissao : TComissaoModel ; Codigo : Integer);
    function CalculaComissaoDinheiro(TotalVenda,vlrPagamento, TotalIten, porPro, porGru, porVend : Double): Double;
    function ResultadoComissao (TotalVenda, VlrPag, PorcentagemPagemento, TotalIten : Double) : Double;
    constructor create;
    destructor destroy; override;
  end;
  implementation

{ TComissaoModel }

function TComissaoModel.CalculaComissaoDinheiro(TotalVenda,vlrPagamento, TotalIten, porPro, porGru, porVend : Double): Double;
var
Comissao : Double;

begin

  if porPro > 0 then
    begin
     Comissao := ResultadoComissao(TotalVenda,vlrPagamento,porPro, TotalIten);
    end
    else if porGru > 0 then
    Comissao := ResultadoComissao(TotalVenda,vlrPagamento,porGru, TotalIten)
    else
    Comissao := ResultadoComissao(TotalVenda,vlrPagamento,porVend, TotalIten);

    Result := Comissao;
end;

constructor TComissaoModel.create;
begin

end;

procedure TComissaoModel.Delete(ObjComissao: TComissaoModel);
var
q1 : TFdquery;
begin
    q1 := TFdquery.Create(nil);
    q1.Connection := dm.Con;

   try
    with q1 do
    begin

    end;
   finally
     FreeandNil(q1);
   end;
end;

destructor TComissaoModel.destroy;
begin

  inherited;
end;

procedure TComissaoModel.Insert(ObjComissao: TComissaoModel);
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
      sql.Text := 'INSERT INTO TB_COMISSAO'
      +'(COM_CODIGO'
      +',COM_TIPOVENDA'
      +',COM_CODIGO_VENDA'
      +',COM_NUMERO_FISCAL'
      +',COM_PRODUTO'
      +',COM_CODIGO_PRODUTO'
      +',COM_QUANTIDADE_PRODUTO'
      +',COM_CUSTO_PRODUTO'
      +',COM_PRECO_PRODUTO'
      +',COM_VALOR_COMISSAO'
      +',COM_CODIGO_GRUPO'
      +',COM_NOME_GRUPO'
      +',COM_CODIGO_VENDEDOR'
      +',COM_NOME_VENDEDOR'
      +',COM_BENEFICIARIO'
      +',COM_FORMA_PAGAMENTO'
      +',COM_VALOR_FORMA_PAGAMENTO'
      +',COM_DATA)'
      +'VALUES(:COM_CODIGO'
      +',:COM_TIPOVENDA'
      +',:COM_CODIGO_VENDA'
      +',:COM_NUMERO_FISCAL'
      +',:COM_PRODUTO'
      +',:COM_CODIGO_PRODUTO'
      +',:COM_QUANTIDADE_PRODUTO'
      +',:COM_CUSTO_PRODUTO'
      +',:COM_PRECO_PRODUTO'
      +',:COM_VALOR_COMISSAO'
      +',:COM_CODIGO_GRUPO'
      +',:COM_NOME_GRUPO'
      +',:COM_CODIGO_VENDEDOR'
      +',:COM_NOME_VENDEDOR'
      +',:COM_BENEFICIARIO'
      +',:COM_FORMA_PAGAMENTO'
      +',:COM_VALOR_FORMA_PAGAMENTO'
      +',:COM_DATA)';
      ParamByName('COM_CODIGO').AsInteger:=COM_CODIGO;
      ParamByName('COM_TIPOVENDA').AsString:=COM_TIPOVENDA;
      ParamByName('COM_CODIGO_VENDA').AsInteger:=COM_CODIGO_VENDA;
      ParamByName('COM_NUMERO_FISCAL').AsInteger:=COM_NUMERO_FISCAL;
      ParamByName('COM_PRODUTO').AsString:=COM_PRODUTO;
      ParamByName('COM_CODIGO_PRODUTO').AsInteger:=COM_CODIGO_PRODUTO;
      ParamByName('COM_QUANTIDADE_PRODUTO').AsFloat:=COM_QUANTIDADE_PRODUTO;
      ParamByName('COM_CUSTO_PRODUTO').AsFloat:=COM_CUSTO_PRODUTO;
      ParamByName('COM_PRECO_PRODUTO').AsFloat:=COM_PRECO_PRODUTO;
      ParamByName('COM_VALOR_COMISSAO').AsFloat:=COM_VALOR_COMISSAO;
      ParamByName('COM_CODIGO_GRUPO').AsInteger:=COM_CODIGO_GRUPO;
      ParamByName('COM_NOME_GRUPO').AsString:=COM_NOME_GRUPO;
      ParamByName('COM_CODIGO_VENDEDOR').AsInteger:=COM_CODIGO_VENDEDOR;
      ParamByName('COM_NOME_VENDEDOR').AsString:=COM_NOME_VENDEDOR;
      ParamByName('COM_BENEFICIARIO').AsString:=COM_BENEFICIARIO;
      ParamByName('COM_FORMA_PAGAMENTO').AsString:=COM_FORMA_PAGAMENTO;
      ParamByName('COM_VALOR_FORMA_PAGAMENTO').AsFloat:=COM_VALOR_FORMA_PAGAMENTO;
      ParamByName('COM_DATA').AsDateTime:=COM_DATA;
      ExecSQL;
    end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TComissaoModel.Read(ObjComissao: TComissaoModel; Codigo: Integer);
var
q1 : TFdquery;
begin
    q1 := TFdquery.Create(nil);
    //q1.Connection := dm.Con;
   try
    with q1 do
    begin

    end;
   finally
     FreeandNil(q1);
   end;
end;

function TComissaoModel.ResultadoComissao(TotalVenda, VlrPag, PorcentagemPagemento, TotalIten : Double) : Double;
  var
  Resultado, x, y : Double;
begin
  x := vlrPag * 100 / TotalVenda;
  y := x * TotalIten / 100;

  Resultado := PorcentagemPagemento * y / 100;
  Result := Resultado;
end;

procedure TComissaoModel.SetCOM_BENEFICIARIO(const Value: String);
begin
  FCOM_BENEFICIARIO := Value;
end;

procedure TComissaoModel.SetCOM_CODIGO(const Value: Integer);
begin
  FCOM_CODIGO := Value;
end;

procedure TComissaoModel.SetCOM_CODIGO_GRUPO(const Value: Integer);
begin
  FCOM_CODIGO_GRUPO := Value;
end;

procedure TComissaoModel.SetCOM_CODIGO_PRODUTO(const Value: Integer);
begin
  FCOM_CODIGO_PRODUTO := Value;
end;

procedure TComissaoModel.SetCOM_CODIGO_VENDA(const Value: Integer);
begin
  FCOM_CODIGO_VENDA := Value;
end;

procedure TComissaoModel.SetCOM_CODIGO_VENDEDOR(const Value: Integer);
begin
  FCOM_CODIGO_VENDEDOR := Value;
end;

procedure TComissaoModel.SetCOM_CUSTO_PRODUTO(const Value: Double);
begin
  FCOM_CUSTO_PRODUTO := Value;
end;

procedure TComissaoModel.SetCOM_DATA(const Value: TDate);
begin
  FCOM_DATA := Value;
end;

procedure TComissaoModel.SetCOM_FORMA_PAGAMENTO(const Value: String);
begin
  FCOM_FORMA_PAGAMENTO := Value;
end;

procedure TComissaoModel.SetCOM_NOME_GRUPO(const Value: String);
begin
  FCOM_NOME_GRUPO := Value;
end;

procedure TComissaoModel.SetCOM_NOME_VENDEDOR(const Value: String);
begin
  FCOM_NOME_VENDEDOR := Value;
end;

procedure TComissaoModel.SetCOM_NUMERO_FISCAL(const Value: Integer);
begin
  FCOM_NUMERO_FISCAL := Value;
end;

procedure TComissaoModel.SetCOM_PRECO_PRODUTO(const Value: Double);
begin
  FCOM_PRECO_PRODUTO := Value;
end;

procedure TComissaoModel.SetCOM_PRODUTO(const Value: String);
begin
  FCOM_PRODUTO := Value;
end;

procedure TComissaoModel.SetCOM_QUANTIDADE_PRODUTO(const Value: Double);
begin
  FCOM_QUANTIDADE_PRODUTO := Value;
end;

procedure TComissaoModel.SetCOM_TIPOVENDA(const Value: String);
begin
  FCOM_TIPOVENDA := Value;
end;

procedure TComissaoModel.SetCOM_VALOR_COMISSAO(const Value: Double);
begin
  FCOM_VALOR_COMISSAO := Value;
end;

procedure TComissaoModel.SetCOM_VALOR_FORMA_PAGAMENTO(const Value: Double);
begin
  FCOM_VALOR_FORMA_PAGAMENTO := Value;
end;

procedure TComissaoModel.Update(ObjComissao: TComissaoModel);
var
q1 : TFdquery;
begin
    q1 := TFdquery.Create(nil);
    //q1.Connection := dm.Con;
   try
    with q1 do
    begin

    end;
   finally
     FreeandNil(q1);
   end;
end;

end.
