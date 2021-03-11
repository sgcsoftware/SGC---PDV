unit MiniSoft.Model.HistoricoDeProduto;


interface
        uses  IniFiles, ACBrUtil, pcnConversao, System.SysUtils, pcnConversaoNFe,
   ACBrDFeSSL, blcksock, Firedac.Comp.Client, Winapi.Windows, Winapi.WinInet, vcl.dialogs, Vcl.Forms,
   Conexao, uDWConstsData, uRESTDWPoolerDB;
   type
   THistoricoDeProdutoModel = class
     private
    FHIS_NCM: String;
    FHIS_LUCROPOR2: Double;
    FHIS_QTD_VENDA2: Double;
    FHIS_TIPODOC: String;
    FHIS_FORCLI: String;
    FHIS_CUSTO2: Double;
    FHIS_LUCRODIN: Double;
    FHIS_LUCROPOR: Double;
    FHIS_QTD_VENDA: Double;
    FHIS_VALOR2: Double;
    FHIS_QTD_ESTOQUE2: Double;
    FHIS_CST: String;
    FHIS_CODIGO_GRUPO: Integer;
    FHIS_DATA: TDate;
    FHIS_CUSTO: Double;
    FHIS_CODIGO_PRODUTO: Integer;
    FHIS_CODIGO_VENDA: Integer;
    FHIS_VALOR: Double;
    FHIS_QTD_ESTOQUE: Double;
    FHIS_DESCRICAO: String;
    FHIS_UUID: String;
    FHIS_CODIGO: Integer;
    FHIS_NUMEROFISCAL: Integer;
    FHIS_CODIGO_VENDEDOR: Integer;
    FHIS_TMONOFASICA: String;
    FHIS_LUCRODIN2: Double;
    FHIS_TIPO: String;
    FHIS_NUMEROVENDA: Integer;
    FHIS_RANDOMICO: String;
    procedure SetHIS_CODIGO(const Value: Integer);
    procedure SetHIS_CODIGO_GRUPO(const Value: Integer);
    procedure SetHIS_CODIGO_PRODUTO(const Value: Integer);
    procedure SetHIS_CODIGO_VENDA(const Value: Integer);
    procedure SetHIS_CODIGO_VENDEDOR(const Value: Integer);
    procedure SetHIS_CST(const Value: String);
    procedure SetHIS_CUSTO(const Value: Double);
    procedure SetHIS_CUSTO2(const Value: Double);
    procedure SetHIS_DATA(const Value: TDate);
    procedure SetHIS_DESCRICAO(const Value: String);
    procedure SetHIS_FORCLI(const Value: String);
    procedure SetHIS_LUCRODIN(const Value: Double);
    procedure SetHIS_LUCRODIN2(const Value: Double);
    procedure SetHIS_LUCROPOR(const Value: Double);
    procedure SetHIS_LUCROPOR2(const Value: Double);
    procedure SetHIS_NCM(const Value: String);
    procedure SetHIS_NUMEROFISCAL(const Value: Integer);
    procedure SetHIS_QTD_ESTOQUE(const Value: Double);
    procedure SetHIS_QTD_ESTOQUE2(const Value: Double);
    procedure SetHIS_QTD_VENDA(const Value: Double);
    procedure SetHIS_QTD_VENDA2(const Value: Double);
    procedure SetHIS_TIPODOC(const Value: String);
    procedure SetHIS_TMONOFASICA(const Value: String);
    procedure SetHIS_UUID(const Value: String);
    procedure SetHIS_VALOR(const Value: Double);
    procedure SetHIS_VALOR2(const Value: Double);
    procedure SetHIS_TIPO(const Value: String);
    procedure SetHIS_NUMEROVENDA(const Value: Integer);
    procedure SetHIS_RANDOMICO(const Value: String);
     public
     property HIS_CODIGO           : Integer read FHIS_CODIGO write SetHIS_CODIGO;
     property HIS_UUID             : String read FHIS_UUID write SetHIS_UUID;
     property HIS_DESCRICAO        : String read FHIS_DESCRICAO write SetHIS_DESCRICAO;
     property HIS_DATA             : TDate read FHIS_DATA write SetHIS_DATA;
     property HIS_FORCLI           : String read FHIS_FORCLI write SetHIS_FORCLI;
     property HIS_NUMEROFISCAL     : Integer read FHIS_NUMEROFISCAL write SetHIS_NUMEROFISCAL;
     property HIS_TIPODOC          : String read FHIS_TIPODOC write SetHIS_TIPODOC;
     property HIS_CODIGO_PRODUTO   : Integer read FHIS_CODIGO_PRODUTO write SetHIS_CODIGO_PRODUTO;
     property HIS_QTD_VENDA        : Double read FHIS_QTD_VENDA write SetHIS_QTD_VENDA;
     property HIS_QTD_ESTOQUE      : Double read FHIS_QTD_ESTOQUE write SetHIS_QTD_ESTOQUE;
     property HIS_QTD_VENDA2       : Double read FHIS_QTD_VENDA2 write SetHIS_QTD_VENDA2;
     property HIS_QTD_ESTOQUE2     : Double read FHIS_QTD_ESTOQUE2 write SetHIS_QTD_ESTOQUE2;
     property HIS_CODIGO_VENDA     : Integer read FHIS_CODIGO_VENDA write SetHIS_CODIGO_VENDA;
     property HIS_CUSTO            : Double read FHIS_CUSTO write SetHIS_CUSTO;
     property HIS_VALOR            : Double read FHIS_VALOR write SetHIS_VALOR;
     property HIS_LUCROPOR         : Double read FHIS_LUCROPOR write SetHIS_LUCROPOR;
     property HIS_LUCRODIN         : Double read FHIS_LUCRODIN write SetHIS_LUCRODIN;
     property HIS_CUSTO2           : Double read FHIS_CUSTO2 write SetHIS_CUSTO2;
     property HIS_VALOR2           : Double read FHIS_VALOR2 write SetHIS_VALOR2;
     property HIS_LUCROPOR2        : Double read FHIS_LUCROPOR2 write SetHIS_LUCROPOR2;
     property HIS_LUCRODIN2        : Double read FHIS_LUCRODIN2 write SetHIS_LUCRODIN2;
     property HIS_CODIGO_GRUPO     : Integer read FHIS_CODIGO_GRUPO write SetHIS_CODIGO_GRUPO;
     property HIS_CODIGO_VENDEDOR  : Integer read FHIS_CODIGO_VENDEDOR write SetHIS_CODIGO_VENDEDOR;
     property HIS_TMONOFASICA      : String read FHIS_TMONOFASICA write SetHIS_TMONOFASICA;
     property HIS_CST              : String read FHIS_CST write SetHIS_CST;
     property HIS_NCM              : String read FHIS_NCM write SetHIS_NCM;
     property HIS_TIPO : String read FHIS_TIPO write SetHIS_TIPO;
     property HIS_NUMEROVENDA : Integer read FHIS_NUMEROVENDA write SetHIS_NUMEROVENDA;
     property HIS_RANDOMICO : String read FHIS_RANDOMICO write SetHIS_RANDOMICO;
     procedure Insert(ObjHistoricoDeProduto : THistoricoDeProdutoModel);
     procedure Update(ObjHistoricoDeProduto : THistoricoDeProdutoModel);
     procedure Delete(ObjHistoricoDeProduto : THistoricoDeProdutoModel);
     procedure Read  (ObjHistoricoDeProduto : THistoricoDeProdutoModel ; Codigo : Integer);
     procedure ReadR  (ObjHistoricoDeProduto : THistoricoDeProdutoModel ; Codigo : String);
     procedure DeleteR(ObjHistoricoDeProduto : THistoricoDeProdutoModel; FValue : String);
     procedure RecalculaHistorico (FValue, Fid: String; Qtd : Double);
     procedure ImprimeHistoricoProdutoFiscal(CodProduto : Integer);
     procedure ImprimeHistoricoProdutoReal(CodProduto : Integer);
     procedure ImprimeHistoricoProdutoFiscalCompleto(CodProduto : Integer);
     constructor create;
     destructor destroy ; override;
   end;
implementation

{ THistoricoDeProdutoModel }

constructor THistoricoDeProdutoModel.create;
begin

end;

procedure THistoricoDeProdutoModel.Delete(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel);
begin

end;

procedure THistoricoDeProdutoModel.DeleteR(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel; FValue: String);
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
       sql.Add('delete from TB_HISTORICOPRODUTO where HIS_RANDOMICO ='+QuotedStr(FValue));
       ExecSQL;
      // ApplyUpdates;
     end;
   finally
     FreeandNil(q1)
   end;
end;

destructor THistoricoDeProdutoModel.destroy;
begin

  inherited;
end;

procedure THistoricoDeProdutoModel.ImprimeHistoricoProdutoFiscal(
  CodProduto: Integer);
begin

end;

procedure THistoricoDeProdutoModel.ImprimeHistoricoProdutoFiscalCompleto(
  CodProduto: Integer);
begin

end;

procedure THistoricoDeProdutoModel.ImprimeHistoricoProdutoReal(
  CodProduto: Integer);
begin

end;

procedure THistoricoDeProdutoModel.Insert(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel);
VAR
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1, ObjHistoricoDeProduto do
    begin
       Close;
       Sql.Text := 'insert into TB_HISTORICOPRODUTO'
       +'(HIS_CODIGO'
       +',HIS_UUID'
       +',HIS_DESCRICAO'
       +',HIS_DATA'
       +',HIS_FORCLI'
       +',HIS_NUMEROFISCAL'
       +',HIS_TIPODOC'
       +',HIS_CODIGO_PRODUTO'
       +',HIS_QTD_VENDA'
       +',HIS_QTD_ESTOQUE'
       +',HIS_QTD_VENDA2'
       +',HIS_QTD_ESTOQUE2'
       +',HIS_CODIGO_VENDA'
       +',HIS_CUSTO'
       +',HIS_VALOR'
       +',HIS_LUCROPOR'
       +',HIS_LUCRODIN'
       +',HIS_CUSTO2'
       +',HIS_VALOR2'
       +',HIS_LUCROPOR2'
       +',HIS_LUCRODIN2'
       +',HIS_CODIGO_GRUPO'
       +',HIS_CODIGO_VENDEDOR'
       +',HIS_TMONOFASICA'
       +',HIS_CST'
       +',HIS_NCM'
       +',HIS_TIPO'
       +',HIS_NUMEROVENDA' //
       +',HIS_RANDOMICO)'
       +'values(:HIS_CODIGO'
       +',:HIS_UUID'
       +',:HIS_DESCRICAO'
       +',:HIS_DATA'
       +',:HIS_FORCLI'
       +',:HIS_NUMEROFISCAL'
       +',:HIS_TIPODOC'
       +',:HIS_CODIGO_PRODUTO'
       +',:HIS_QTD_VENDA'
       +',:HIS_QTD_ESTOQUE'
       +',:HIS_QTD_VENDA2'
       +',:HIS_QTD_ESTOQUE2'
       +',:HIS_CODIGO_VENDA'
       +',:HIS_CUSTO'
       +',:HIS_VALOR'
       +',:HIS_LUCROPOR'
       +',:HIS_LUCRODIN'
       +',:HIS_CUSTO2'
       +',:HIS_VALOR2'
       +',:HIS_LUCROPOR2'
       +',:HIS_LUCRODIN2'
       +',:HIS_CODIGO_GRUPO'
       +',:HIS_CODIGO_VENDEDOR'
       +',:HIS_TMONOFASICA'
       +',:HIS_CST'
       +',:HIS_NCM'
       +',:HIS_TIPO'
       +',:HIS_NUMEROVENDA'
       +',:HIS_RANDOMICO)';
       ParamByName('HIS_CODIGO').AsInteger:=HIS_CODIGO;
       ParamByName('HIS_UUID').Asstring:=HIS_UUID;
       ParamByName('HIS_DESCRICAO').Asstring:=HIS_DESCRICAO;
       ParamByName('HIS_DATA').AsDate:=HIS_DATA;
       ParamByName('HIS_FORCLI').Asstring:=HIS_FORCLI;
       ParamByName('HIS_NUMEROFISCAL').AsInteger:=HIS_NUMEROFISCAL;
       ParamByName('HIS_TIPODOC').Asstring:=HIS_TIPODOC;
       ParamByName('HIS_CODIGO_PRODUTO').AsInteger:=HIS_CODIGO_PRODUTO;
       ParamByName('HIS_QTD_VENDA').ASfloat:=HIS_QTD_VENDA;
       ParamByName('HIS_QTD_ESTOQUE').ASfloat:=HIS_QTD_ESTOQUE;
       ParamByName('HIS_QTD_VENDA2').ASfloat:=HIS_QTD_VENDA2;
       ParamByName('HIS_QTD_ESTOQUE2').ASfloat:=HIS_QTD_ESTOQUE2;
       ParamByName('HIS_CODIGO_VENDA').ASinteger:=HIS_CODIGO_VENDA;
       ParamByName('HIS_CUSTO').ASfloat:=HIS_CUSTO;
       ParamByName('HIS_VALOR').ASfloat:=HIS_VALOR;
       ParamByName('HIS_LUCROPOR').ASfloat:=HIS_LUCROPOR;
       ParamByName('HIS_LUCRODIN').ASfloat:=HIS_LUCRODIN;
       ParamByName('HIS_CUSTO2').ASfloat:=HIS_CUSTO2;
       ParamByName('HIS_VALOR2').ASfloat:=HIS_VALOR2;
       ParamByName('HIS_LUCROPOR2').ASfloat:=HIS_LUCROPOR2;
       ParamByName('HIS_LUCRODIN2').ASfloat:=HIS_LUCRODIN2;
       ParamByName('HIS_CODIGO_GRUPO').AsInteger:=HIS_CODIGO_GRUPO;
       ParamByName('HIS_CODIGO_VENDEDOR').AsInteger:=HIS_CODIGO_VENDEDOR;
       ParamByName('HIS_TMONOFASICA').Asstring:=HIS_TMONOFASICA;
       ParamByName('HIS_CST').Asstring:=HIS_CST;
       ParamByName('HIS_NCM').Asstring:=HIS_NCM;
       ParamByName('HIS_TIPO').Asstring:=HIS_TIPO;
       ParamByName('HIS_NUMEROVENDA').AsInteger:=HIS_NUMEROVENDA;
       ParamByName('HIS_RANDOMICO').Asstring:=HIS_RANDOMICO;
       ExecSQL;
    end;
  finally
    FreeandNil(q1);
  end;

end;

procedure THistoricoDeProdutoModel.Read(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel; Codigo: Integer);
begin

end;

procedure THistoricoDeProdutoModel.ReadR(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel; Codigo: String);
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
       sql.Add('select * from TB_HISTORICOPRODUTO where HIS_RANDOMICO='+QuotedStr(Codigo));
       open;


      HIS_CODIGO:=q1.FieldByName('HIS_CODIGO').AsInteger;
      HIS_UUID:=q1.FieldByName('HIS_UUID').AsString;
      HIS_DESCRICAO:=q1.FieldByName('HIS_DESCRICAO').AsString;
      HIS_DATA:=q1.FieldByName('HIS_DATA').AsDateTime;
      HIS_FORCLI:=q1.FieldByName('HIS_FORCLI').AsString;
      HIS_NUMEROFISCAL:=q1.FieldByName('HIS_NUMEROFISCAL').AsInteger;
      HIS_TIPODOC:=q1.FieldByName('HIS_TIPODOC').AsString;
      HIS_CODIGO_PRODUTO:=q1.FieldByName('HIS_CODIGO_PRODUTO').AsInteger;
      HIS_QTD_VENDA:=q1.FieldByName('HIS_QTD_VENDA').AsFloat;
      HIS_QTD_ESTOQUE:=q1.FieldByName('HIS_QTD_ESTOQUE').AsFloat;
      HIS_QTD_VENDA2:=q1.FieldByName('HIS_QTD_VENDA2').AsFloat;
      HIS_QTD_ESTOQUE2:=q1.FieldByName('HIS_QTD_ESTOQUE2').AsFloat;
      HIS_CODIGO_VENDA:=q1.FieldByName('HIS_CODIGO_VENDA').AsInteger;
      HIS_CUSTO:=q1.FieldByName('HIS_CUSTO').AsFloat;
      HIS_VALOR:=q1.FieldByName('HIS_VALOR').AsFloat;
      HIS_LUCROPOR:=q1.FieldByName('HIS_LUCROPOR').AsFloat;
      HIS_LUCRODIN:=q1.FieldByName('HIS_LUCRODIN').AsFloat;
      HIS_CUSTO2:=q1.FieldByName('HIS_CUSTO2').AsFloat;
      HIS_VALOR2:=q1.FieldByName('HIS_VALOR2').AsFloat;
      HIS_LUCROPOR2:=q1.FieldByName('HIS_LUCROPOR2').AsFloat;
      HIS_LUCRODIN2:=q1.FieldByName('HIS_LUCRODIN2').AsFloat;
      HIS_CODIGO_GRUPO:=q1.FieldByName('HIS_CODIGO_GRUPO').AsInteger;
      HIS_CODIGO_VENDEDOR:=q1.FieldByName('HIS_CODIGO_VENDEDOR').AsInteger;
      HIS_TMONOFASICA:=q1.FieldByName('HIS_TMONOFASICA').AsString;
      HIS_CST:=q1.FieldByName('HIS_CST').AsString;
      HIS_NCM:=q1.FieldByName('HIS_NCM').AsString;
      HIS_TIPO:=q1.FieldByName('HIS_TIPO').AsString;
      HIS_NUMEROVENDA:=q1.FieldByName('HIS_NUMEROVENDA').AsInteger;
      HIS_RANDOMICO:=q1.FieldByName('HIS_RANDOMICO').AsString;
     end;
   finally
     Freeandnil(q1);
   end;

end;

procedure THistoricoDeProdutoModel.RecalculaHistorico(FValue, Fid: String;
  Qtd: Double);
var
q1 : TFDquery;
qtdAtual, Saldo : Double;
begin
   q1 := TFDquery.Create(nil);
   q1.Connection := dm.Con;
   q1.CachedUpdates := true;
   try
     with q1 do
     begin

       close;
       sql.Clear;
       sql.Add('select * from TB_HISTORICOPRODUTO where HIS_CODIGO_PRODUTO='+QuotedStr(FValue));
       sql.Add('and his_codigo >'+QuotedStr(Fid));
       open;
       while not eof do
       begin

        if  (FieldByName('his_tipodoc').AsString = 'Entrada Xml') or (FieldByName('his_tipodoc').AsString = 'Exclusão NF-e') or (FieldByName('his_tipodoc').AsString = 'Cancelamento NF-e') or (FieldByName('his_tipodoc').AsString = 'Alteração NF-e') then
       begin
        qtdAtual := FieldByName('his_qtd_venda').AsFloat;
        Qtd := Qtd + FieldByName('his_qtd_venda').AsFloat;
        Edit;
        FieldByName('his_qtd_estoque').AsFloat := Qtd;
        Post;
       end;
      if  (FieldByName('his_tipodoc').AsString = 'Saida NF-e') or (FieldByName('his_tipodoc').AsString = 'Saida NFC-e') then     //Saida NFC-e
       begin
        qtdAtual := FieldByName('his_qtd_venda').AsFloat;
        Qtd := Qtd - FieldByName('his_qtd_venda').AsFloat;
        Edit;
        FieldByName('his_qtd_estoque').AsFloat := Qtd;
        Post;
       end;
       q1.ApplyUpdates;
       q1.CommitUpdates;
       Next;
      end;

     end;
   finally
     Freeandnil(q1);
   end;
end;


procedure THistoricoDeProdutoModel.SetHIS_CODIGO(const Value: Integer);
begin
  FHIS_CODIGO := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_CODIGO_GRUPO(const Value: Integer);
begin
  FHIS_CODIGO_GRUPO := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_CODIGO_PRODUTO(const Value: Integer);
begin
  FHIS_CODIGO_PRODUTO := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_CODIGO_VENDA(const Value: Integer);
begin
  FHIS_CODIGO_VENDA := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_CODIGO_VENDEDOR(const Value: Integer);
begin
  FHIS_CODIGO_VENDEDOR := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_CST(const Value: String);
begin
  FHIS_CST := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_CUSTO(const Value: Double);
begin
  FHIS_CUSTO := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_CUSTO2(const Value: Double);
begin
  FHIS_CUSTO2 := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_DATA(const Value: TDate);
begin
  FHIS_DATA := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_DESCRICAO(const Value: String);
begin
  FHIS_DESCRICAO := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_FORCLI(const Value: String);
begin
  FHIS_FORCLI := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_LUCRODIN(const Value: Double);
begin
  FHIS_LUCRODIN := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_LUCRODIN2(const Value: Double);
begin
  FHIS_LUCRODIN2 := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_LUCROPOR(const Value: Double);
begin
  FHIS_LUCROPOR := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_LUCROPOR2(const Value: Double);
begin
  FHIS_LUCROPOR2 := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_NCM(const Value: String);
begin
  FHIS_NCM := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_NUMEROFISCAL(const Value: Integer);
begin
  FHIS_NUMEROFISCAL := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_NUMEROVENDA(const Value: Integer);
begin
  FHIS_NUMEROVENDA := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_QTD_ESTOQUE(const Value: Double);
begin
  FHIS_QTD_ESTOQUE := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_QTD_ESTOQUE2(const Value: Double);
begin
  FHIS_QTD_ESTOQUE2 := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_QTD_VENDA(const Value: Double);
begin
  FHIS_QTD_VENDA := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_QTD_VENDA2(const Value: Double);
begin
  FHIS_QTD_VENDA2 := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_RANDOMICO(const Value: String);
begin
  FHIS_RANDOMICO := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_TIPO(const Value: String);
begin
  FHIS_TIPO := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_TIPODOC(const Value: String);
begin
  FHIS_TIPODOC := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_TMONOFASICA(const Value: String);
begin
  FHIS_TMONOFASICA := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_UUID(const Value: String);
begin
  FHIS_UUID := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_VALOR(const Value: Double);
begin
  FHIS_VALOR := Value;
end;

procedure THistoricoDeProdutoModel.SetHIS_VALOR2(const Value: Double);
begin
  FHIS_VALOR2 := Value;
end;

procedure THistoricoDeProdutoModel.Update(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel);
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
       sql.Add('update TB_HISTORICOPRODUTO set');
       Sql.Add('HIS_CODIGO=:HIS_CODIGO');
       Sql.Add(',HIS_UUID=:HIS_UUID');
       Sql.Add(',HIS_DESCRICAO=:HIS_DESCRICAO');
       Sql.Add(',HIS_DATA=:HIS_DATA');
       Sql.Add(',HIS_FORCLI=:HIS_FORCLI');
       Sql.Add(',HIS_NUMEROFISCAL=:HIS_NUMEROFISCAL');
       Sql.Add(',HIS_TIPODOC=:HIS_TIPODOC');
       Sql.Add(',HIS_CODIGO_PRODUTO=:HIS_CODIGO_PRODUTO');
       Sql.Add(',HIS_QTD_VENDA=:HIS_QTD_VENDA');
       Sql.Add(',HIS_QTD_ESTOQUE=:HIS_QTD_ESTOQUE');
       Sql.Add(',HIS_QTD_VENDA2=:HIS_QTD_VENDA2');
       Sql.Add(',HIS_QTD_ESTOQUE2=:HIS_QTD_ESTOQUE2');
       Sql.Add(',HIS_CODIGO_VENDA=:HIS_CODIGO_VENDA');
       Sql.Add(',HIS_CUSTO=:HIS_CUSTO');
       Sql.Add(',HIS_VALOR=:HIS_VALOR');
       Sql.Add(',HIS_LUCROPOR=:HIS_LUCROPOR');
       Sql.Add(',HIS_LUCRODIN=:HIS_LUCRODIN');
       Sql.Add(',HIS_CUSTO2=:HIS_CUSTO2');
       Sql.Add(',HIS_VALOR2=:HIS_VALOR2');
       Sql.Add(',HIS_LUCROPOR2=:HIS_LUCROPOR2');
       Sql.Add(',HIS_LUCRODIN2=:HIS_LUCRODIN2');
       Sql.Add(',HIS_CODIGO_GRUPO=:HIS_CODIGO_GRUPO');
       Sql.Add(',HIS_CODIGO_VENDEDOR=:HIS_CODIGO_VENDEDOR');
       Sql.Add(',HIS_TMONOFASICA=:HIS_TMONOFASICA');
       Sql.Add(',HIS_CST=:HIS_CST');
       Sql.Add(',HIS_NCM=:HIS_NCM');
       Sql.Add(',HIS_TIPO=:HIS_TIPO');
       sql.Add('where HIS_CODIGO =:HIS_CODIGO');
       ParamByName('HIS_CODIGO').AsInteger:=HIS_CODIGO;
       ParamByName('HIS_UUID').Asstring:=HIS_UUID;
       ParamByName('HIS_DESCRICAO').Asstring:=HIS_DESCRICAO;
       ParamByName('HIS_DATA').AsDate:=HIS_DATA;
       ParamByName('HIS_FORCLI').Asstring:=HIS_FORCLI;
       ParamByName('HIS_NUMEROFISCAL').AsInteger:=HIS_NUMEROFISCAL;
       ParamByName('HIS_TIPODOC').Asstring:=HIS_TIPODOC;
       ParamByName('HIS_CODIGO_PRODUTO').AsInteger:=HIS_CODIGO_PRODUTO;
       ParamByName('HIS_QTD_VENDA').ASfloat:=HIS_QTD_VENDA;
       ParamByName('HIS_QTD_ESTOQUE').ASfloat:=HIS_QTD_ESTOQUE;
       ParamByName('HIS_QTD_VENDA2').ASfloat:=HIS_QTD_VENDA2;
       ParamByName('HIS_QTD_ESTOQUE2').ASfloat:=HIS_QTD_ESTOQUE2;
       ParamByName('HIS_CODIGO_VENDA').ASinteger:=HIS_CODIGO_VENDA;
       ParamByName('HIS_CUSTO').ASfloat:=HIS_CUSTO;
       ParamByName('HIS_VALOR').ASfloat:=HIS_VALOR;
       ParamByName('HIS_LUCROPOR').ASfloat:=HIS_LUCROPOR;
       ParamByName('HIS_LUCRODIN').ASfloat:=HIS_LUCRODIN;
       ParamByName('HIS_CUSTO2').ASfloat:=HIS_CUSTO2;
       ParamByName('HIS_VALOR2').ASfloat:=HIS_VALOR2;
       ParamByName('HIS_LUCROPOR2').ASfloat:=HIS_LUCROPOR2;
       ParamByName('HIS_LUCRODIN2').ASfloat:=HIS_LUCRODIN2;
       ParamByName('HIS_CODIGO_GRUPO').AsInteger:=HIS_CODIGO_GRUPO;
       ParamByName('HIS_CODIGO_VENDEDOR').AsInteger:=HIS_CODIGO_VENDEDOR;
       ParamByName('HIS_TMONOFASICA').Asstring:=HIS_TMONOFASICA;
       ParamByName('HIS_CST').Asstring:=HIS_CST;
       ParamByName('HIS_NCM').Asstring:=HIS_NCM;
       ParamByName('HIS_TIPO').Asstring:=HIS_TIPO;
       ExecSQL;
      // q1.app
     end;
   finally
     FreeandNil(q1);
   end;
end;

end.
