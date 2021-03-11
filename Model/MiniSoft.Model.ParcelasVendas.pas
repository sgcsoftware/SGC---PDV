unit MiniSoft.Model.ParcelasVendas;


interface

uses Conexao, IniFiles, Firedac.Comp.Client, System.SysUtils, Vcl.Forms, MiniSoft.Funcoes,
     uDWConstsData, uRESTDWPoolerDB;
   type
   TParcelasVendasModel = class
     private
    FPAR_NUMEROVENDA: Integer;
    FPAR_REFERENCIA: String;
    FPAR_DATA: TDate;
    FPAR_TIPOVENDA: String;
    FPAR_NUMEROFATURA: Integer;
    FPAR_BENEFICIARIO: String;
    FPAR_VALORPARCELA: Double;
    FPAR_VALORVENDA: Double;
    FPAR_CODIGO_CLIENTE: Integer;
    FPAR_CLIENTE: String;
    FPAR_CODIGO: Integer;
    FPAR_DATAVENCIMENTO: TDate;
    FPAR_CODIGOVENDA: Integer;
    FPAR_NUMEROPARCELA: String;
    FPAR_RANDOMICO: String;
    FPAR_FORMAPAG: String;
    FPAR_CONTA: String;
    FPAR_AGENCIA: String;
    FPAR_NCHEQUE: Integer;
    FPAR_BANCO: String;
    FPAR_EMISSOR: String;
    FPAR_CPFCNPJ: String;
    procedure SetPAR_BENEFICIARIO(const Value: String);
    procedure SetPAR_CLIENTE(const Value: String);
    procedure SetPAR_CODIGO(const Value: Integer);
    procedure SetPAR_CODIGO_CLIENTE(const Value: Integer);
    procedure SetPAR_CODIGOVENDA(const Value: Integer);
    procedure SetPAR_DATA(const Value: TDate);
    procedure SetPAR_DATAVENCIMENTO(const Value: TDate);
    procedure SetPAR_NUMEROFATURA(const Value: Integer);
    procedure SetPAR_NUMEROPARCELA(const Value: String);
    procedure SetPAR_NUMEROVENDA(const Value: Integer);
    procedure SetPAR_REFERENCIA(const Value: String);
    procedure SetPAR_TIPOVENDA(const Value: String);
    procedure SetPAR_VALORPARCELA(const Value: Double);
    procedure SetPAR_VALORVENDA(const Value: Double);
    procedure SetPAR_RANDOMICO(const Value: String);
    procedure SetPAR_FORMAPAG(const Value: String);
    procedure SetPAR_AGENCIA(const Value: String);
    procedure SetPAR_BANCO(const Value: String);
    procedure SetPAR_CONTA(const Value: String);
    procedure SetPAR_CPFCNPJ(const Value: String);
    procedure SetPAR_EMISSOR(const Value: String);
    procedure SetPAR_NCHEQUE(const Value: Integer);
     public
     property PAR_CODIGO           : Integer read FPAR_CODIGO write SetPAR_CODIGO;
     property PAR_CLIENTE          : String read FPAR_CLIENTE write SetPAR_CLIENTE;
     property PAR_CODIGO_CLIENTE   : Integer read FPAR_CODIGO_CLIENTE write SetPAR_CODIGO_CLIENTE;
     property PAR_NUMEROFATURA     : Integer read FPAR_NUMEROFATURA write SetPAR_NUMEROFATURA;
     property PAR_CODIGOVENDA      : Integer read FPAR_CODIGOVENDA write SetPAR_CODIGOVENDA;
     property PAR_NUMEROVENDA      : Integer read FPAR_NUMEROVENDA write SetPAR_NUMEROVENDA;
     property PAR_TIPOVENDA        : String read FPAR_TIPOVENDA write SetPAR_TIPOVENDA;
     property PAR_VALORVENDA       : Double read FPAR_VALORVENDA write SetPAR_VALORVENDA;
     property PAR_VALORPARCELA     : Double read FPAR_VALORPARCELA write SetPAR_VALORPARCELA;
     property PAR_DATA             : TDate read FPAR_DATA write SetPAR_DATA;
     property PAR_DATAVENCIMENTO   : TDate read FPAR_DATAVENCIMENTO write SetPAR_DATAVENCIMENTO;
     property PAR_NUMEROPARCELA    : String read FPAR_NUMEROPARCELA write SetPAR_NUMEROPARCELA;
     property PAR_REFERENCIA       : String read FPAR_REFERENCIA write SetPAR_REFERENCIA;
     property PAR_BENEFICIARIO     : String read FPAR_BENEFICIARIO write SetPAR_BENEFICIARIO;
     property PAR_RANDOMICO : String read FPAR_RANDOMICO write SetPAR_RANDOMICO;
     property PAR_FORMAPAG : String read FPAR_FORMAPAG write SetPAR_FORMAPAG;
     property PAR_BANCO : String read FPAR_BANCO write SetPAR_BANCO;
     property PAR_AGENCIA : String read FPAR_AGENCIA write SetPAR_AGENCIA;
     property PAR_CONTA : String read FPAR_CONTA write SetPAR_CONTA;
     property PAR_NCHEQUE : Integer read FPAR_NCHEQUE write SetPAR_NCHEQUE;
     property PAR_CPFCNPJ : String read FPAR_CPFCNPJ write SetPAR_CPFCNPJ;
     property PAR_EMISSOR : String read FPAR_EMISSOR write SetPAR_EMISSOR;
     procedure Insert(ObjParcelas : TParcelasVendasModel);
     procedure Update(ObjParcelas : TParcelasVendasModel);
     procedure Red(ObjParcelas : TParcelasVendasModel; Codigo : Integer);
     procedure Delete(ObjParcelas : TParcelasVendasModel);
     procedure ImprimeCarne(CodVenda : Integer; TipoVenda : String);
     procedure ImprimeCarnelx300(CodVenda : Integer; TipoVenda : String);
     procedure ImprimeDuplicata(CodVenda : Integer; TipoVenda : String);
     procedure ImprimePromissoria(CodVenda : Integer; TipoVenda : String);
     procedure ImprimeViaClienteCrediario (CodVenda : Integer; TipoVenda : String);
     constructor create;
     destructor destroy; override;
   end;
implementation
{ TParcelasVendasModel }

uses ConfigFile.Model;

constructor TParcelasVendasModel.create;
begin

end;

procedure TParcelasVendasModel.Delete(ObjParcelas: TParcelasVendasModel);
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
       sql.Add('delete from TB_PARCELASVENDAS where par_codigo=:par_codigo');
       ParamByName('par_codigo').AsInteger := par_codigo;
       ExecSQL;
     end;
   finally
     FreeandNil(q1);
   end;
end;

destructor TParcelasVendasModel.destroy;
begin

  inherited;
end;

procedure TParcelasVendasModel.ImprimeCarne(CodVenda: Integer;
  TipoVenda: String);
begin
   with dm.ContasAReceber do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_CONTASARECEBER where CRE_NUMERO_VENDA='+QuotedStr(inttostr(CodVenda)));
     sql.Add('and CRE_TIPO_VENDA='+QuotedStr(TipoVenda));
     open;
     Dm.ContasAReceber.RecordCount;
   end;

   dm.frxCarne.LoadFromFile(ExtractFilePath(Application.exeName) + '\Relatorios\CarneContasReceberA4.fr3');
   dm.frxCarne.ShowReport;
end;

procedure TParcelasVendasModel.ImprimeCarnelx300(CodVenda: Integer;
  TipoVenda: String);
begin
  with dm.ContasAReceber do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_CONTASARECEBER where CRE_NUMERO_VENDA='+QuotedStr(inttostr(CodVenda)));
     sql.Add('and CRE_TIPO_VENDA='+QuotedStr(TipoVenda));
     open;
     first;
   end;
 while not dm.ContasAReceber.Eof do
 begin
   dm.relatoriolx300.LoadFromFile(ExtractFilePath(Application.exeName) + '\Relatorios\lx300.fr3');
   DM.RelatorioLX300.PrintOptions.ShowDialog:= false;
   dm.RelatorioLX300.PrintOptions.Printer := ConfigIni.ImpressoraCarne;
   DM.RelatorioLX300.PrepareReport;
   DM.RelatorioLX300.print;
   dm.ContasAReceber.Next;
 end;
end;

procedure TParcelasVendasModel.ImprimeDuplicata(CodVenda: Integer;
  TipoVenda: String);
  var
  f : TFuncoesGerais;
begin
      with dm.ContasAReceber do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_CONTASARECEBER where CRE_NUMERO_VENDA='+QuotedStr(inttostr(CodVenda)));
     sql.Add('and CRE_TIPO_VENDA='+QuotedStr(TipoVenda));
     open;
   end;
   f := TFuncoesGerais.create;
   try
    dm.frxCarne.LoadFromFile(ExtractFilePath(Application.exeName) + '\Relatorios\Duplicata.fr3');
    dm.frxCarne.Script.Variables['ValorEstenco'] := f.ValorExtenso(dm.ContasAReceber.FieldByName('CRE_VALOR_PARCELA').AsFloat, True);
    dm.frxCarne.Variables.Clear;
    dm.frxCarne.ShowReport;
   finally
     FreeandNil(f);
   end;

end;

procedure TParcelasVendasModel.ImprimePromissoria(CodVenda: Integer;
  TipoVenda: String);
  var
  f : TFuncoesGerais;
begin
      with dm.ContasAReceber do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_CONTASARECEBER where CRE_NUMERO_VENDA='+QuotedStr(inttostr(CodVenda)));
     sql.Add('and CRE_TIPO_VENDA='+QuotedStr(TipoVenda));
     open;
   end;
   f := TFuncoesGerais.create;
   try
   dm.frxCarne.LoadFromFile(ExtractFilePath(Application.exeName) + '\Relatorios\Promissoria.fr3');
   dm.frxCarne.Variables.Clear;
   dm.frxCarne.Script.Variables['valor'] := f.ValorExtenso(dm.ContasAReceber.FieldByName('CRE_VALOR_COMPRA').AsFloat, True);
   dm.frxCarne.ShowReport;
   finally
     FreeandNil(f);
   end;
end;

procedure TParcelasVendasModel.ImprimeViaClienteCrediario(CodVenda: Integer;
  TipoVenda: String);
 var
  f : TFuncoesGerais;
begin
      with dm.ContasAReceber do
   begin
     close;
     sql.Clear;
     sql.Add('select * from TB_CONTASARECEBER where CRE_NUMERO_VENDA='+QuotedStr(inttostr(CodVenda)));
     sql.Add('and CRE_TIPO_VENDA='+QuotedStr(TipoVenda));
     open;
   end;
   with dm.FDNfce do
   begin
     close;
     sql.Clear;
     sql.Add('select * from tb_nfce where NFC_IDE_NNF ='+QuotedStr(inttostr(CodVenda)));
     open;
   end;
   f := TFuncoesGerais.create;
   try
   dm.frxViaCliente.LoadFromFile(ExtractFilePath(Application.exeName) + '\Relatorios\ViaCliente.fr3');
   dm.frxViaCliente.Variables.Clear;
   dm.frxViaCliente.PrintOptions.ShowDialog:= False;
   dm.frxViaCliente.PrepareReport;
   if ConfigIni.ImpressoraPadrao <> '' then
    begin
     dm.frxViaCliente.PrintOptions.Printer := ConfigIni.ImpressoraPadrao
    end
    else
    begin

    end;
    dm.frxViaCliente.Print;
   finally
     FreeandNil(f);
   end;
end;

procedure TParcelasVendasModel.Insert(ObjParcelas: TParcelasVendasModel);
var
q1 : TFDquery;
begin
   q1 := TFDquery.Create(nil);
   q1.Connection := dm.Con;

   try
    with q1 do
    begin
      close;
      sql.Text := 'insert into TB_PARCELASVENDAS'
      +'(PAR_CODIGO'
      +',PAR_CLIENTE'
      +',PAR_CODIGO_CLIENTE'
      +',PAR_NUMEROFATURA'
      +',PAR_CODIGOVENDA'
      +',PAR_NUMEROVENDA'
      +',PAR_TIPOVENDA'
      +',PAR_VALORVENDA'
      +',PAR_VALORPARCELA'
      +',PAR_DATA'
      +',PAR_DATAVENCIMENTO'
      +',PAR_NUMEROPARCELA'
      +',PAR_REFERENCIA'
      +',PAR_BENEFICIARIO'
      +',PAR_RANDOMICO'
      +',PAR_FORMAPAG'
      +',PAR_BANCO'
      +',PAR_AGENCIA'
      +',PAR_CONTA'
      +',PAR_NCHEQUE'
      +',PAR_CPFCNPJ'
      +',PAR_EMISSOR)'
      +'values(:PAR_CODIGO'
      +',:PAR_CLIENTE'
      +',:PAR_CODIGO_CLIENTE'
      +',:PAR_NUMEROFATURA'
      +',:PAR_CODIGOVENDA'
      +',:PAR_NUMEROVENDA'
      +',:PAR_TIPOVENDA'
      +',:PAR_VALORVENDA'
      +',:PAR_VALORPARCELA'
      +',:PAR_DATA'
      +',:PAR_DATAVENCIMENTO'
      +',:PAR_NUMEROPARCELA'
      +',:PAR_REFERENCIA'
      +',:PAR_BENEFICIARIO'
      +',:PAR_RANDOMICO'
      +',:PAR_FORMAPAG'
      +',:PAR_BANCO'
      +',:PAR_AGENCIA'
      +',:PAR_CONTA'
      +',:PAR_NCHEQUE'
      +',:PAR_CPFCNPJ'
      +',:PAR_EMISSOR)';
      ParamByName('PAR_CODIGO').AsInteger:=PAR_CODIGO;
      ParamByName('PAR_CLIENTE').AsString:=PAR_CLIENTE;
      ParamByName('PAR_CODIGO_CLIENTE').AsInteger:=PAR_CODIGO_CLIENTE;
      ParamByName('PAR_NUMEROFATURA').AsInteger:=PAR_NUMEROFATURA;
      ParamByName('PAR_CODIGOVENDA').AsInteger:=PAR_CODIGOVENDA;
      ParamByName('PAR_NUMEROVENDA').AsInteger:=PAR_NUMEROVENDA;
      ParamByName('PAR_TIPOVENDA').AsString:=PAR_TIPOVENDA;
      ParamByName('PAR_VALORVENDA').AsFloat:=PAR_VALORVENDA;
      ParamByName('PAR_VALORPARCELA').AsFloat:=PAR_VALORPARCELA;
      ParamByName('PAR_DATA').AsDate:=PAR_DATA;
      ParamByName('PAR_DATAVENCIMENTO').AsDate:=PAR_DATAVENCIMENTO;
      ParamByName('PAR_NUMEROPARCELA').AsString:=PAR_NUMEROPARCELA;
      ParamByName('PAR_REFERENCIA').AsString:=PAR_REFERENCIA;
      ParamByName('PAR_BENEFICIARIO').AsString:=PAR_BENEFICIARIO;
      ParamByName('PAR_RANDOMICO').AsString:=PAR_RANDOMICO;
      ParamByName('PAR_FORMAPAG').AsString:=PAR_FORMAPAG;
      ParamByName('PAR_BANCO').AsString:=PAR_BANCO;
      ParamByName('PAR_AGENCIA').AsString:=PAR_AGENCIA;
      ParamByName('PAR_CONTA').AsString:=PAR_CONTA;
      ParamByName('PAR_NCHEQUE').AsInteger:=PAR_NCHEQUE;
      ParamByName('PAR_CPFCNPJ').AsString:=PAR_CPFCNPJ;
      ParamByName('PAR_EMISSOR').AsString:=PAR_EMISSOR;
      ExecSQL;
    end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TParcelasVendasModel.Red(ObjParcelas: TParcelasVendasModel; Codigo: Integer);
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
       sql.Add('select * from TB_PARCELASVENDAS where PAR_CODIGOVENDA = :PAR_CODIGOVENDA');
       sql.Add('and PAR_TIPOVENDA =:PAR_TIPOVENDA');
       ParamByName('PAR_CODIGOVENDA').AsInteger := PAR_CODIGOVENDA;
       ParamByName('PAR_TIPOVENDA').AsString := PAR_TIPOVENDA;
       open;
       PAR_CODIGO := q1.FieldByName('PAR_CODIGO').AsInteger;
       PAR_CLIENTE := q1.FieldByName('PAR_CLIENTE').AsString;
       PAR_CODIGO_CLIENTE := q1.FieldByName('PAR_CODIGO_CLIENTE').AsInteger;
       PAR_NUMEROFATURA := q1.FieldByName('PAR_NUMEROFATURA').AsInteger;
       PAR_CODIGOVENDA := q1.FieldByName('PAR_CODIGOVENDA').AsInteger;
       PAR_NUMEROVENDA := q1.FieldByName('PAR_NUMEROVENDA').AsInteger;
       PAR_TIPOVENDA := q1.FieldByName('PAR_TIPOVENDA').AsString;
       PAR_VALORVENDA := q1.FieldByName('PAR_VALORVENDA').AsFloat;
       PAR_VALORPARCELA := q1.FieldByName('PAR_VALORPARCELA').AsFloat;
       PAR_DATA := q1.FieldByName('PAR_DATA').AsDateTime;
       PAR_DATAVENCIMENTO := q1.FieldByName('PAR_DATAVENCIMENTO').AsDateTime;
       PAR_NUMEROPARCELA := q1.FieldByName('PAR_NUMEROPARCELA').AsString;
       PAR_REFERENCIA := q1.FieldByName('PAR_REFERENCIA').AsString;
       PAR_BENEFICIARIO := q1.FieldByName('PAR_BENEFICIARIO').AsString;
       PAR_RANDOMICO := q1.FieldByName('PAR_BENEFICIARIO').AsString;
       PAR_FORMAPAG := q1.FieldByName('PAR_FORMAPAG').AsString;
       PAR_BANCO := q1.FieldByName('PAR_BANCO').AsString;
       PAR_AGENCIA := q1.FieldByName('PAR_AGENCIA').AsString;
       PAR_CONTA := q1.FieldByName('PAR_CONTA').AsString;
       PAR_NCHEQUE := q1.FieldByName('PAR_NCHEQUE').AsInteger;
       PAR_CPFCNPJ := q1.FieldByName('PAR_CPFCNPJ').AsString;
       PAR_EMISSOR := q1.FieldByName('PAR_EMISSOR').AsString;
     end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TParcelasVendasModel.SetPAR_AGENCIA(const Value: String);
begin
  FPAR_AGENCIA := Value;
end;

procedure TParcelasVendasModel.SetPAR_BANCO(const Value: String);
begin
  FPAR_BANCO := Value;
end;

procedure TParcelasVendasModel.SetPAR_BENEFICIARIO(const Value: String);
begin
  FPAR_BENEFICIARIO := Value;
end;

procedure TParcelasVendasModel.SetPAR_CLIENTE(const Value: String);
begin
  FPAR_CLIENTE := Value;
end;

procedure TParcelasVendasModel.SetPAR_CODIGO(const Value: Integer);
begin
  FPAR_CODIGO := Value;
end;

procedure TParcelasVendasModel.SetPAR_CODIGOVENDA(const Value: Integer);
begin
  FPAR_CODIGOVENDA := Value;
end;

procedure TParcelasVendasModel.SetPAR_CODIGO_CLIENTE(const Value: Integer);
begin
  FPAR_CODIGO_CLIENTE := Value;
end;

procedure TParcelasVendasModel.SetPAR_CONTA(const Value: String);
begin
  FPAR_CONTA := Value;
end;

procedure TParcelasVendasModel.SetPAR_CPFCNPJ(const Value: String);
begin
  FPAR_CPFCNPJ := Value;
end;

procedure TParcelasVendasModel.SetPAR_DATA(const Value: TDate);
begin
  FPAR_DATA := Value;
end;

procedure TParcelasVendasModel.SetPAR_DATAVENCIMENTO(const Value: TDate);
begin
  FPAR_DATAVENCIMENTO := Value;
end;

procedure TParcelasVendasModel.SetPAR_EMISSOR(const Value: String);
begin
  FPAR_EMISSOR := Value;
end;

procedure TParcelasVendasModel.SetPAR_FORMAPAG(const Value: String);
begin
  FPAR_FORMAPAG := Value;
end;

procedure TParcelasVendasModel.SetPAR_NCHEQUE(const Value: Integer);
begin
  FPAR_NCHEQUE := Value;
end;

procedure TParcelasVendasModel.SetPAR_NUMEROFATURA(const Value: Integer);
begin
  FPAR_NUMEROFATURA := Value;
end;

procedure TParcelasVendasModel.SetPAR_NUMEROPARCELA(const Value: String);
begin
  FPAR_NUMEROPARCELA := Value;
end;

procedure TParcelasVendasModel.SetPAR_NUMEROVENDA(const Value: Integer);
begin
  FPAR_NUMEROVENDA := Value;
end;

procedure TParcelasVendasModel.SetPAR_RANDOMICO(const Value: String);
begin
  FPAR_RANDOMICO := Value;
end;

procedure TParcelasVendasModel.SetPAR_REFERENCIA(const Value: String);
begin
  FPAR_REFERENCIA := Value;
end;

procedure TParcelasVendasModel.SetPAR_TIPOVENDA(const Value: String);
begin
  FPAR_TIPOVENDA := Value;
end;

procedure TParcelasVendasModel.SetPAR_VALORPARCELA(const Value: Double);
begin
  FPAR_VALORPARCELA := Value;
end;

procedure TParcelasVendasModel.SetPAR_VALORVENDA(const Value: Double);
begin
  FPAR_VALORVENDA := Value;
end;

procedure TParcelasVendasModel.Update(ObjParcelas: TParcelasVendasModel);
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
       sql.Add('update TB_PARCELASVENDAS set');
       Sql.Add('PAR_CODIGO=:PAR_CODIGO');
       Sql.Add(',PAR_CLIENTE=:PAR_CLIENTE');
       Sql.Add(',PAR_CODIGO_CLIENTE=:PAR_CODIGO_CLIENTE');
       Sql.Add(',PAR_NUMEROFATURA=:PAR_NUMEROFATURA');
       Sql.Add(',PAR_CODIGOVENDA=:PAR_CODIGOVENDA');
       Sql.Add(',PAR_NUMEROVENDA=:PAR_NUMEROVENDA');
       Sql.Add(',PAR_TIPOVENDA=:PAR_TIPOVENDA');
       Sql.Add(',PAR_VALORVENDA=:PAR_VALORVENDA');
       Sql.Add(',PAR_VALORPARCELA=:PAR_VALORPARCELA');
       Sql.Add(',PAR_DATA=:PAR_DATA');
       Sql.Add(',PAR_DATAVENCIMENTO=:PAR_DATAVENCIMENTO');
       Sql.Add(',PAR_NUMEROPARCELA=:PAR_NUMEROPARCELA');
       Sql.Add(',PAR_REFERENCIA=:PAR_REFERENCIA');
       Sql.Add(',PAR_BENEFICIARIO=:PAR_BENEFICIARIO');
       Sql.Add(',PAR_RANDOMICO=:PAR_RANDOMICO');
       Sql.Add(',PAR_FORMAPAG=:PAR_FORMAPAG');
       Sql.Add(',PAR_BANCO=:PAR_BANCO');
       Sql.Add(',PAR_AGENCIA=:PAR_AGENCIA');
       Sql.Add(',PAR_CONTA=:PAR_CONTA');
       Sql.Add(',PAR_NCHEQUE=:PAR_NCHEQUE');
       Sql.Add(',PAR_CPFCNPJ=:PAR_CPFCNPJ');
       Sql.Add(',PAR_EMISSOR=:PAR_EMISSOR');
       Sql.Add('where PAR_CODIGO =:PAR_CODIGO');
       ParamByName('PAR_CODIGO').AsInteger:=PAR_CODIGO;
       ParamByName('PAR_CLIENTE').AsString:=PAR_CLIENTE;
       ParamByName('PAR_CODIGO_CLIENTE').AsInteger:=PAR_CODIGO_CLIENTE;
       ParamByName('PAR_NUMEROFATURA').AsInteger:=PAR_NUMEROFATURA;
       ParamByName('PAR_CODIGOVENDA').AsInteger:=PAR_CODIGOVENDA;
       ParamByName('PAR_NUMEROVENDA').AsInteger:=PAR_NUMEROVENDA;
       ParamByName('PAR_TIPOVENDA').AsString:=PAR_TIPOVENDA;
       ParamByName('PAR_VALORVENDA').AsFloat:=PAR_VALORVENDA;
       ParamByName('PAR_VALORPARCELA').AsFloat:=PAR_VALORPARCELA;
       ParamByName('PAR_DATA').AsDate:=PAR_DATA;
       ParamByName('PAR_DATAVENCIMENTO').AsDate:=PAR_DATAVENCIMENTO;
       ParamByName('PAR_NUMEROPARCELA').AsString:=PAR_NUMEROPARCELA;
       ParamByName('PAR_REFERENCIA').AsString:=PAR_REFERENCIA;
       ParamByName('PAR_BENEFICIARIO').AsString:=PAR_BENEFICIARIO;
       ParamByName('PAR_RANDOMICO').AsString:=PAR_RANDOMICO;
       ParamByName('PAR_FORMAPAG').AsString:=PAR_FORMAPAG;
       ParamByName('PAR_BANCO').AsString:=PAR_BANCO;
       ParamByName('PAR_AGENCIA').AsString:=PAR_AGENCIA;
       ParamByName('PAR_CONTA').AsString:=PAR_CONTA;
       ParamByName('PAR_NCHEQUE').AsInteger:=PAR_NCHEQUE;
       ParamByName('PAR_CPFCNPJ').AsString:=PAR_CPFCNPJ;
       ParamByName('PAR_EMISSOR').AsString:=PAR_EMISSOR;
       ExecSQL;

     end;
   finally
     FreeandNil(q1);
   end;
end;

end.
