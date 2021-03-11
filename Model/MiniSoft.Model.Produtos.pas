unit MiniSoft.Model.Produtos;

interface
  uses  IniFiles, ACBrUtil, pcnConversao, System.SysUtils, pcnConversaoNFe,
   ACBrDFeSSL, blcksock, Firedac.Comp.Client, Winapi.Windows, Winapi.WinInet, vcl.dialogs, Vcl.Forms,
   Conexao, MiniSoft.Controller.HistoricoDeProduto,
  MiniSoft.Model.HistoricoDeProduto, uDWConstsData, uRESTDWPoolerDB;
   type
   TProdutoModel = class
       private
    FPRO_PROMOCAOSABADO: String;
    FPRO_PROMOCAOQUINTA: String;
    FPRO_PRMOCAOPROGRAMADA: String;
    FPRO_MARCA: String;
    FPRO_LUCROREAL: Double;
    FPRO_PORCENTAGEMLUCRO: Double;
    FPRO_REFERENCIA: String;
    FPRO_PROMOCAOFIXA: String;
    FPRO_PRODUTONFE: String;
    FPRO_CST: String;
    FPRO_CODIGOAPLICACAOPRODUTO: String;
    FPRO_DATACAD: TDate;
    FPRO_PROMOCAOSEGUNDA: String;
    FPRO_PRECOPROMOCAO: Double;
    FPRO_ULTIMACOMPRA: TDate;
    FPRO_GRUPO: String;
    FPRO_CSOSN: String;
    FPRO_CUSTO: Double;
    FPRO_PROMOCAODOMINGO: String;
    FPRO_OBSERVACAO: String;
    FPRO_PESO: Double;
    FPRO_BENEFICIARIO: String;
    FPRO_CSTPISCOFINS: String;
    FPRO_DATAFIMPROMOCAO: TDate;
    FPRO_ANP: String;
    FPRO_CUSTOMEDIO: Double;
    FPRO_DATAINICIOPROMOCAO: TDate;
    FPRO_PORCENTAGEMPIS: Double;
    FPRO_PROMOCAOTERCA: String;
    FPRO_PORCENTAGEMPROMOCAO: Double;
    FPRO_PORCENTAGEMCOFINS: Double;
    FPRO_QUANTIDADEREAL: Double;
    FPRO_DESCRICAO: String;
    FPRO_UUID: String;
    FPRO_CEST: String;
    FPRO_CODIGO: Integer;
    FPRO_PRECOVENDA: Double;
    FPRO_FATOR: Double;
    FPRO_USASERIAL: String;
    FPRO_TMONOFASICA: String;
    FPRO_DESCRICAOANP: String;
    FPRO_CFOP: String;
    FPRO_NCM: String;
    FPRO_LOCALIZACAO: String;
    FPRO_PROMOCAOSEXTA: String;
    FPRO_APLICACAOPRODUTO: String;
    FPRO_COMISSAO: Double;
    FPRO_CUSTOREAL: Double;
    FPRO_USALOTE: String;
    FPRO_PROMOCAOQUARTA: String;
    FPRO_ALIQUOTA: Double;
    FPRO_CODIGOBARRA: String;
    FPRO_LINHA: String;
    FPRO_ULTIMAVENDA: TDate;
    FPRO_UNIDADE: String;
    FPRO_QUANTIDADE: Double;
    FPRO_CODIGO_GRUPO: integer;
    FPRO_UNIDADEPORCAIXA: Double;
    FPRO_PRECOCAIXA: Double;
    FPRO_DESCRICAO2: String;
    FPRO_CODIGOBARRA2: String;
    FPRO_UNIDADE2: String;
    FPRO_IMAGEMPROD: String;
    FPRO_PROMOCAOPROGRAMADA: String;
    FPRO_NOME_PROD_NOTA: String;
    FPRO_FORNECEDOR: String;
    FPRO_COMISSAO_CREDITO: Double;
    FPRO_COMISSAO_DINHEIRO: Double;
    FPRO_COMISSAO_BOLETO: Double;
    FPRO_COMISSOAO_CHEQUE: Double;
    FPRO_COMISSAO_CREDIARIO: Double;
    FPRO_COMISSAO_DEBITO: Double;
    FCodigoDaCaixa: String;
    FTemPromocao: string;
    FDia: Tdate;
    procedure SetPRO_ALIQUOTA(const Value: Double);
    procedure SetPRO_ANP(const Value: String);
    procedure SetPRO_APLICACAOPRODUTO(const Value: String);
    procedure SetPRO_BENEFICIARIO(const Value: String);
    procedure SetPRO_CEST(const Value: String);
    procedure SetPRO_CFOP(const Value: String);
    procedure SetPRO_CODIGO(const Value: Integer);
    procedure SetPRO_CODIGOAPLICACAOPRODUTO(const Value: String);
    procedure SetPRO_CODIGOBARRA(const Value: String);
    procedure SetPRO_COMISSAO(const Value: Double);
    procedure SetPRO_CSOSN(const Value: String);
    procedure SetPRO_CST(const Value: String);
    procedure SetPRO_CSTPISCOFINS(const Value: String);
    procedure SetPRO_CUSTO(const Value: Double);
    procedure SetPRO_CUSTOMEDIO(const Value: Double);
    procedure SetPRO_CUSTOREAL(const Value: Double);
    procedure SetPRO_DATACAD(const Value: TDate);
    procedure SetPRO_DATAFIMPROMOCAO(const Value: TDate);
    procedure SetPRO_DATAINICIOPROMOCAO(const Value: TDate);
    procedure SetPRO_DESCRICAO(const Value: String);
    procedure SetPRO_DESCRICAOANP(const Value: String);
    procedure SetPRO_FATOR(const Value: Double);
    procedure SetPRO_GRUPO(const Value: String);
    procedure SetPRO_LINHA(const Value: String);
    procedure SetPRO_LOCALIZACAO(const Value: String);
    procedure SetPRO_LUCROREAL(const Value: Double);
    procedure SetPRO_MARCA(const Value: String);
    procedure SetPRO_NCM(const Value: String);
    procedure SetPRO_OBSERVACAO(const Value: String);
    procedure SetPRO_PESO(const Value: Double);
    procedure SetPRO_PORCENTAGEMCOFINS(const Value: Double);
    procedure SetPRO_PORCENTAGEMLUCRO(const Value: Double);
    procedure SetPRO_PORCENTAGEMPIS(const Value: Double);
    procedure SetPRO_PORCENTAGEMPROMOCAO(const Value: Double);
    procedure SetPRO_PRECOPROMOCAO(const Value: Double);
    procedure SetPRO_PRECOVENDA(const Value: Double);
    procedure SetPRO_PRMOCAOPROGRAMADA(const Value: String);
    procedure SetPRO_PRODUTONFE(const Value: String);
    procedure SetPRO_PROMOCAODOMINGO(const Value: String);
    procedure SetPRO_PROMOCAOFIXA(const Value: String);
    procedure SetPRO_PROMOCAOQUARTA(const Value: String);
    procedure SetPRO_PROMOCAOQUINTA(const Value: String);
    procedure SetPRO_PROMOCAOSABADO(const Value: String);
    procedure SetPRO_PROMOCAOSEGUNDA(const Value: String);
    procedure SetPRO_PROMOCAOSEXTA(const Value: String);
    procedure SetPRO_PROMOCAOTERCA(const Value: String);
    procedure SetPRO_QUANTIDADE(const Value: Double);
    procedure SetPRO_QUANTIDADEREAL(const Value: Double);
    procedure SetPRO_REFERENCIA(const Value: String);
    procedure SetPRO_TMONOFASICA(const Value: String);
    procedure SetPRO_ULTIMACOMPRA(const Value: TDate);
    procedure SetPRO_ULTIMAVENDA(const Value: TDate);
    procedure SetPRO_UNIDADE(const Value: String);
    procedure SetPRO_USALOTE(const Value: String);
    procedure SetPRO_USASERIAL(const Value: String);
    procedure SetPRO_UUID(const Value: String);
    procedure SetPRO_CODIGO_GRUPO(const Value: integer);
    procedure SetPRO_CODIGOBARRA2(const Value: String);
    procedure SetPRO_DESCRICAO2(const Value: String);
    procedure SetPRO_PRECOCAIXA(const Value: Double);
    procedure SetPRO_UNIDADE2(const Value: String);
    procedure SetPRO_UNIDADEPORCAIXA(const Value: Double);
    procedure SetPRO_IMAGEMPROD(const Value: String);
    procedure SetPRO_PROMOCAOPROGRAMADA(const Value: String);
    procedure SetPRO_FORNECEDOR(const Value: String);
    procedure SetPRO_NOME_PROD_NOTA(const Value: String);
    procedure SetPRO_COMISSAO_BOLETO(const Value: Double);
    procedure SetPRO_COMISSAO_CREDIARIO(const Value: Double);
    procedure SetPRO_COMISSAO_CREDITO(const Value: Double);
    procedure SetPRO_COMISSAO_DEBITO(const Value: Double);
    procedure SetPRO_COMISSAO_DINHEIRO(const Value: Double);
    procedure SetPRO_COMISSOAO_CHEQUE(const Value: Double);
    procedure SetCodigoDaCaixa(const Value: String);
    procedure SetDia(const Value: Tdate);
    procedure SetTemPromocao(const Value: string);
       public
           property PRO_CODIGO                  : Integer read FPRO_CODIGO write SetPRO_CODIGO;
           property PRO_DATACAD                : TDate read FPRO_DATACAD write SetPRO_DATACAD;
           property PRO_REFERENCIA             : String read FPRO_REFERENCIA write SetPRO_REFERENCIA;
           property PRO_CODIGOBARRA            : String read FPRO_CODIGOBARRA write SetPRO_CODIGOBARRA;
           property PRO_DESCRICAO              : String read FPRO_DESCRICAO write SetPRO_DESCRICAO;
           property PRO_GRUPO                  : String read FPRO_GRUPO write SetPRO_GRUPO;
           property PRO_UNIDADE                : String read FPRO_UNIDADE write SetPRO_UNIDADE;
           property PRO_FATOR                   : Double read FPRO_FATOR write SetPRO_FATOR;
           property PRO_QUANTIDADE              : Double read FPRO_QUANTIDADE write SetPRO_QUANTIDADE;
           property PRO_CUSTO                   : Double read FPRO_CUSTO write SetPRO_CUSTO;
           property PRO_CUSTOMEDIO              : Double read FPRO_CUSTOMEDIO write SetPRO_CUSTOMEDIO;
           property PRO_PORCENTAGEMLUCRO        : Double read FPRO_PORCENTAGEMLUCRO write SetPRO_PORCENTAGEMLUCRO;
           property PRO_PRECOVENDA              : Double read FPRO_PRECOVENDA write SetPRO_PRECOVENDA;
           property PRO_LOCALIZACAO            : String read FPRO_LOCALIZACAO write SetPRO_LOCALIZACAO;
           property PRO_PESO                    : Double read FPRO_PESO write SetPRO_PESO;
           property PRO_ULTIMACOMPRA            : TDate read FPRO_ULTIMACOMPRA write SetPRO_ULTIMACOMPRA;
           property PRO_ULTIMAVENDA             : TDate read FPRO_ULTIMAVENDA write SetPRO_ULTIMAVENDA;
           property PRO_MARCA                  : String read FPRO_MARCA write SetPRO_MARCA;
           property PRO_LINHA                   : String read FPRO_LINHA write SetPRO_LINHA;
           property PRO_COMISSAO                : Double read FPRO_COMISSAO write SetPRO_COMISSAO;
           property PRO_QUANTIDADEREAL          : Double read FPRO_QUANTIDADEREAL write SetPRO_QUANTIDADEREAL;
           property PRO_CUSTOREAL               : Double read FPRO_CUSTOREAL write SetPRO_CUSTOREAL;
           property PRO_LUCROREAL               : Double read FPRO_LUCROREAL write SetPRO_LUCROREAL;
           property PRO_OBSERVACAO              : String read FPRO_OBSERVACAO write SetPRO_OBSERVACAO;
           property PRO_CODIGOAPLICACAOPRODUTO : String read FPRO_CODIGOAPLICACAOPRODUTO write SetPRO_CODIGOAPLICACAOPRODUTO;
           property PRO_APLICACAOPRODUTO       : String read FPRO_APLICACAOPRODUTO write SetPRO_APLICACAOPRODUTO;
           property PRO_CSOSN                  : String read FPRO_CSOSN write SetPRO_CSOSN;
           property PRO_CST                    : String read FPRO_CST write SetPRO_CST;
           property PRO_CFOP                   : String read FPRO_CFOP write SetPRO_CFOP;
           property PRO_NCM                    : String read FPRO_NCM write SetPRO_NCM;
           property PRO_CEST                   : String read FPRO_CEST write SetPRO_CEST;
           property PRO_ALIQUOTA                : Double read FPRO_ALIQUOTA write SetPRO_ALIQUOTA;
           property PRO_ANP                    : String read FPRO_ANP write SetPRO_ANP;
           property PRO_DESCRICAOANP           : String read FPRO_DESCRICAOANP write SetPRO_DESCRICAOANP;
           property PRO_CSTPISCOFINS           : String read FPRO_CSTPISCOFINS write SetPRO_CSTPISCOFINS;
           property PRO_PORCENTAGEMPIS          : Double read FPRO_PORCENTAGEMPIS write SetPRO_PORCENTAGEMPIS;
           property PRO_PORCENTAGEMCOFINS       : Double read FPRO_PORCENTAGEMCOFINS write SetPRO_PORCENTAGEMCOFINS;
           property PRO_PRODUTONFE             : String read FPRO_PRODUTONFE write SetPRO_PRODUTONFE;
           property PRO_PORCENTAGEMPROMOCAO     : Double read FPRO_PORCENTAGEMPROMOCAO write SetPRO_PORCENTAGEMPROMOCAO;
           property PRO_PRECOPROMOCAO           : Double read FPRO_PRECOPROMOCAO write SetPRO_PRECOPROMOCAO;
           property PRO_PRMOCAOPROGRAMADA      : String read FPRO_PRMOCAOPROGRAMADA write SetPRO_PRMOCAOPROGRAMADA;
           property PRO_DATAINICIOPROMOCAO      : TDate read FPRO_DATAINICIOPROMOCAO write SetPRO_DATAINICIOPROMOCAO;
           property PRO_DATAFIMPROMOCAO         : TDate read FPRO_DATAFIMPROMOCAO write SetPRO_DATAFIMPROMOCAO;
           property PRO_PROMOCAOFIXA           : String read FPRO_PROMOCAOFIXA write SetPRO_PROMOCAOFIXA;
           property PRO_PROMOCAOSEGUNDA        : String read FPRO_PROMOCAOSEGUNDA write SetPRO_PROMOCAOSEGUNDA;
           property PRO_PROMOCAOTERCA          : String read FPRO_PROMOCAOTERCA write SetPRO_PROMOCAOTERCA;
           property PRO_PROMOCAOQUARTA         : String read FPRO_PROMOCAOQUARTA write SetPRO_PROMOCAOQUARTA;
           property PRO_PROMOCAOQUINTA         : String read FPRO_PROMOCAOQUINTA write SetPRO_PROMOCAOQUINTA;
           property PRO_PROMOCAOSEXTA          : String read FPRO_PROMOCAOSEXTA write SetPRO_PROMOCAOSEXTA;
           property PRO_PROMOCAOSABADO         : String read FPRO_PROMOCAOSABADO write SetPRO_PROMOCAOSABADO;
           property PRO_PROMOCAODOMINGO        : String read FPRO_PROMOCAODOMINGO write SetPRO_PROMOCAODOMINGO;
           property PRO_BENEFICIARIO           : String read FPRO_BENEFICIARIO write SetPRO_BENEFICIARIO;
           property PRO_UUID                   : String read FPRO_UUID write SetPRO_UUID;
           property PRO_TMONOFASICA            : String read FPRO_TMONOFASICA write SetPRO_TMONOFASICA;
           property PRO_USALOTE                : String read FPRO_USALOTE write SetPRO_USALOTE;
           property PRO_USASERIAL              : String read FPRO_USASERIAL write SetPRO_USASERIAL;
           property PRO_CODIGO_GRUPO : integer read FPRO_CODIGO_GRUPO write SetPRO_CODIGO_GRUPO;
           property PRO_CODIGOBARRA2 : String read FPRO_CODIGOBARRA2 write SetPRO_CODIGOBARRA2;
           property PRO_PRECOCAIXA : Double read FPRO_PRECOCAIXA write SetPRO_PRECOCAIXA;
           property PRO_UNIDADEPORCAIXA : Double read FPRO_UNIDADEPORCAIXA write SetPRO_UNIDADEPORCAIXA;
           property PRO_UNIDADE2 : String read FPRO_UNIDADE2 write SetPRO_UNIDADE2;
           property PRO_DESCRICAO2 : String read FPRO_DESCRICAO2 write SetPRO_DESCRICAO2;
           property PRO_IMAGEMPROD : String read FPRO_IMAGEMPROD write SetPRO_IMAGEMPROD;
           property PRO_PROMOCAOPROGRAMADA : String read FPRO_PROMOCAOPROGRAMADA write SetPRO_PROMOCAOPROGRAMADA;
           property PRO_FORNECEDOR : String read FPRO_FORNECEDOR write SetPRO_FORNECEDOR;
           property PRO_NOME_PROD_NOTA : String read FPRO_NOME_PROD_NOTA write SetPRO_NOME_PROD_NOTA;
           property PRO_COMISSAO_DINHEIRO : Double read FPRO_COMISSAO_DINHEIRO write SetPRO_COMISSAO_DINHEIRO;
           property PRO_COMISSAO_CREDIARIO : Double read FPRO_COMISSAO_CREDIARIO write SetPRO_COMISSAO_CREDIARIO;
           property PRO_COMISSAO_DEBITO : Double read FPRO_COMISSAO_DEBITO write SetPRO_COMISSAO_DEBITO;
           property PRO_COMISSAO_CREDITO : Double read FPRO_COMISSAO_CREDITO write SetPRO_COMISSAO_CREDITO;
           property PRO_COMISSOAO_CHEQUE : Double read FPRO_COMISSOAO_CHEQUE write SetPRO_COMISSOAO_CHEQUE;
           property PRO_COMISSAO_BOLETO : Double read FPRO_COMISSAO_BOLETO write SetPRO_COMISSAO_BOLETO;
           property CodigoDaCaixa : String read FCodigoDaCaixa write SetCodigoDaCaixa;
           property Dia : Tdate read FDia write SetDia;
           property TemPromocao : string read FTemPromocao write SetTemPromocao;
       procedure Insert(ObjProduto : TProdutoModel);
       procedure Update(ObjProduto : TProdutoModel);
       procedure Delete(ObjProduto : TProdutoModel);
       procedure Read  (ObjProduto: TProdutoModel; Codigo: String; qtd : double; codVenda : integer; tipo, randomicoProduto, sub, codsub : String);
       procedure ReadConsult(ObjProduto: TProdutoModel; Codigo: String);
       procedure VoltaHistorico(codProduto, codVenda: Integer; qtd: double);
       function PromocaoFixa(NDia: Integer): Boolean;
       constructor create;
       destructor destroy; override;
   end;
implementation
    uses MiniSoft.View.Principal;
{ TProdutoModel }

constructor TProdutoModel.create;
begin

end;

procedure TProdutoModel.Delete(ObjProduto: TProdutoModel);
VAR
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;
  try
    with q1, ObjProduto do
    begin
       Close;
       sql.add('DELETE FROM TB_PRODUTOS WHERE PRO_CODIGO = :PRO_CODIGO');
       parambyname('PRO_CODIGO').AsInteger := PRO_CODIGO;
       ExecSQL;
    end;
  finally
    FreeandNil(q1)
  end;

end;

destructor TProdutoModel.destroy;
begin

  inherited;
end;

procedure TProdutoModel.Insert(ObjProduto: TProdutoModel);
VAR
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1, ObjProduto do
    begin
       Close;
       Sql.Text := 'INSERT INTO TB_PRODUTOS'
       +'(PRO_CODIGO'
       +',PRO_DATACAD'
       +',PRO_REFERENCIA'
       +',PRO_CODIGOBARRA'
       +',PRO_DESCRICAO'
       +',PRO_GRUPO'
       +',PRO_UNIDADE'
       +',PRO_FATOR'
       +',PRO_QUANTIDADE'
       +',PRO_CUSTO'
       +',PRO_CUSTOMEDIO'
       +',PRO_PORCENTAGEMLUCRO'
       +',PRO_PRECOVENDA'
       +',PRO_LOCALIZACAO'
       +',PRO_PESO'
       +',PRO_ULTIMACOMPRA'
      // +',PRO_ULTIMAVENDA'
       +',PRO_MARCA'
       +',PRO_LINHA'
       +',PRO_COMISSAO'
       +',PRO_QUANTIDADEREAL'
       +',PRO_CUSTOREAL'
       +',PRO_LUCROREAL'
       +',PRO_OBSERVACAO'
       +',PRO_CODIGOAPLICACAOPRODUTO'
       +',PRO_APLICACAOPRODUTO'
       +',PRO_CSOSN'
       +',PRO_CST'
       +',PRO_CFOP'
       +',PRO_NCM'
       +',PRO_CEST'
       +',PRO_ALIQUOTA'
       +',PRO_ANP'
       +',PRO_DESCRICAOANP'
       +',PRO_CSTPISCOFINS'
       +',PRO_PORCENTAGEMPIS'
       +',PRO_PORCENTAGEMCOFINS'
       +',PRO_PRODUTONFE'
       +',PRO_PORCENTAGEMPROMOCAO'
       +',PRO_PRECOPROMOCAO'
       +',PRO_PRMOCAOPROGRAMADA'
       +',PRO_DATAINICIOPROMOCAO'
       +',PRO_DATAFIMPROMOCAO'
       +',PRO_PROMOCAOFIXA'
       +',PRO_PROMOCAOSEGUNDA'
       +',PRO_PROMOCAOTERCA'
       +',PRO_PROMOCAOQUARTA'
       +',PRO_PROMOCAOQUINTA'
       +',PRO_PROMOCAOSEXTA'
       +',PRO_PROMOCAOSABADO'
       +',PRO_PROMOCAODOMINGO'
       +',PRO_BENEFICIARIO'
       +',PRO_UUID'
       +',PRO_TMONOFASICA'
       +',PRO_USALOTE'
       +',PRO_USASERIAL'
       +',PRO_CODIGO_GRUPO'
       +',PRO_CODIGOBARRA2'
       +',PRO_PRECOCAIXA'
       +',PRO_UNIDADEPORCAIXA'
       +',PRO_UNIDADE2'
       +',PRO_DESCRICAO2'
       +',PRO_IMAGEMPROD'
       +',PRO_PROMOCAOPROGRAMADA'
       +',PRO_FORNECEDOR'
       +',PRO_NOME_PROD_NOTA'
       +',PRO_COMISSAO_DINHEIRO'
       +',PRO_COMISSAO_CREDIARIO'
       +',PRO_COMISSAO_DEBITO'
       +',PRO_COMISSAO_CREDITO'
       +',PRO_COMISSOAO_CHEQUE'
       +',PRO_COMISSAO_BOLETO)'
              +'VALUES(:PRO_CODIGO'
              +',:PRO_DATACAD'
              +',:PRO_REFERENCIA'
              +',:PRO_CODIGOBARRA'
              +',:PRO_DESCRICAO'
              +',:PRO_GRUPO'
              +',:PRO_UNIDADE'
              +',:PRO_FATOR'
              +',:PRO_QUANTIDADE'
              +',:PRO_CUSTO'
              +',:PRO_CUSTOMEDIO'
              +',:PRO_PORCENTAGEMLUCRO'
              +',:PRO_PRECOVENDA'
              +',:PRO_LOCALIZACAO'
              +',:PRO_PESO'
              +',:PRO_ULTIMACOMPRA'
             // +',:PRO_ULTIMAVENDA'
              +',:PRO_MARCA'
              +',:PRO_LINHA'
              +',:PRO_COMISSAO'
              +',:PRO_QUANTIDADEREAL'
              +',:PRO_CUSTOREAL'
              +',:PRO_LUCROREAL'
              +',:PRO_OBSERVACAO'
              +',:PRO_CODIGOAPLICACAOPRODUTO'
              +',:PRO_APLICACAOPRODUTO'
              +',:PRO_CSOSN'
              +',:PRO_CST'
              +',:PRO_CFOP'
              +',:PRO_NCM'
              +',:PRO_CEST'
              +',:PRO_ALIQUOTA'
              +',:PRO_ANP'
              +',:PRO_DESCRICAOANP'
              +',:PRO_CSTPISCOFINS'
              +',:PRO_PORCENTAGEMPIS'
              +',:PRO_PORCENTAGEMCOFINS'
              +',:PRO_PRODUTONFE'
              +',:PRO_PORCENTAGEMPROMOCAO'
              +',:PRO_PRECOPROMOCAO'
              +',:PRO_PRMOCAOPROGRAMADA'
              +',:PRO_DATAINICIOPROMOCAO'
              +',:PRO_DATAFIMPROMOCAO'
              +',:PRO_PROMOCAOFIXA'
              +',:PRO_PROMOCAOSEGUNDA'
              +',:PRO_PROMOCAOTERCA'
              +',:PRO_PROMOCAOQUARTA'
              +',:PRO_PROMOCAOQUINTA'
              +',:PRO_PROMOCAOSEXTA'
              +',:PRO_PROMOCAOSABADO'
              +',:PRO_PROMOCAODOMINGO'
              +',:PRO_BENEFICIARIO'
              +',:PRO_UUID'
              +',:PRO_TMONOFASICA'
              +',:PRO_USALOTE'
              +',:PRO_USASERIAL'
              +',:PRO_CODIGO_GRUPO'
              +',:PRO_CODIGOBARRA2'
              +',:PRO_PRECOCAIXA'
              +',:PRO_UNIDADEPORCAIXA'
              +',:PRO_UNIDADE2'
              +',:PRO_DESCRICAO2'
              +',:PRO_IMAGEMPROD'
              +',:PRO_PROMOCAOPROGRAMADA'
              +',:PRO_FORNECEDOR'
              +',:PRO_NOME_PROD_NOTA'
              +',:PRO_COMISSAO_DINHEIRO'
              +',:PRO_COMISSAO_CREDIARIO'
              +',:PRO_COMISSAO_DEBITO'
              +',:PRO_COMISSAO_CREDITO'
              +',:PRO_COMISSOAO_CHEQUE'
              +',:PRO_COMISSAO_BOLETO)';
              ParamByname('PRO_CODIGO').AsInteger:=PRO_CODIGO;
              ParamByname('PRO_DATACAD').AsDate:=PRO_DATACAD;
              ParamByname('PRO_REFERENCIA').AsString:=PRO_REFERENCIA;
              ParamByname('PRO_CODIGOBARRA').AsString:=PRO_CODIGOBARRA;
              ParamByname('PRO_DESCRICAO').AsString:=PRO_DESCRICAO;
              ParamByname('PRO_GRUPO').AsString:=PRO_GRUPO;
              ParamByname('PRO_UNIDADE').AsString:=PRO_UNIDADE;
              ParamByname('PRO_FATOR').Asfloat:=PRO_FATOR;
              ParamByname('PRO_QUANTIDADE').Asfloat:=PRO_QUANTIDADE;
              ParamByname('PRO_CUSTO').Asfloat:=PRO_CUSTO;
              ParamByname('PRO_CUSTOMEDIO').Asfloat:=PRO_CUSTOMEDIO;
              ParamByname('PRO_PORCENTAGEMLUCRO').Asfloat:=PRO_PORCENTAGEMLUCRO;
              ParamByname('PRO_PRECOVENDA').Asfloat:=PRO_PRECOVENDA;
              ParamByname('PRO_LOCALIZACAO').AsString:=PRO_LOCALIZACAO;
              ParamByname('PRO_PESO').Asfloat:=PRO_PESO;
              ParamByname('PRO_ULTIMACOMPRA').AsDate:=PRO_ULTIMACOMPRA;
             // ParamByname('PRO_ULTIMAVENDA').AsDate:=PRO_ULTIMAVENDA;
              ParamByname('PRO_MARCA').AsString:=PRO_MARCA;
              ParamByname('PRO_LINHA').AsString:=PRO_LINHA;
              ParamByname('PRO_COMISSAO').Asfloat:=PRO_COMISSAO;
              ParamByname('PRO_QUANTIDADEREAL').Asfloat:=PRO_QUANTIDADEREAL;
              ParamByname('PRO_CUSTOREAL').Asfloat:=PRO_CUSTOREAL;
              ParamByname('PRO_LUCROREAL').Asfloat:=PRO_LUCROREAL;
              ParamByname('PRO_OBSERVACAO').AsString:=PRO_OBSERVACAO;
              ParamByname('PRO_CODIGOAPLICACAOPRODUTO').AsString:=PRO_CODIGOAPLICACAOPRODUTO;
              ParamByname('PRO_APLICACAOPRODUTO').AsString:=PRO_APLICACAOPRODUTO;
              ParamByname('PRO_CSOSN').AsString:=PRO_CSOSN;
              ParamByname('PRO_CST').AsString:=PRO_CST;
              ParamByname('PRO_CFOP').AsString:=PRO_CFOP;
              ParamByname('PRO_NCM').AsString:=PRO_NCM;
              ParamByname('PRO_CEST').AsString:=PRO_CEST;
              ParamByname('PRO_ALIQUOTA').Asfloat:=PRO_ALIQUOTA;
              ParamByname('PRO_ANP').AsString:=PRO_ANP;
              ParamByname('PRO_DESCRICAOANP').AsString:=PRO_DESCRICAOANP;
              ParamByname('PRO_CSTPISCOFINS').AsString:=PRO_CSTPISCOFINS;
              ParamByname('PRO_PORCENTAGEMPIS').Asfloat:=PRO_PORCENTAGEMPIS;
              ParamByname('PRO_PORCENTAGEMCOFINS').Asfloat:=PRO_PORCENTAGEMCOFINS;
              ParamByname('PRO_PRODUTONFE').AsString:=PRO_PRODUTONFE;
              ParamByname('PRO_PORCENTAGEMPROMOCAO').Asfloat:=PRO_PORCENTAGEMPROMOCAO;
              ParamByname('PRO_PRECOPROMOCAO').Asfloat:=PRO_PRECOPROMOCAO;
              ParamByname('PRO_PRMOCAOPROGRAMADA').AsString:=PRO_PRMOCAOPROGRAMADA;
              ParamByname('PRO_DATAINICIOPROMOCAO').asDate:=PRO_DATAINICIOPROMOCAO;
              ParamByname('PRO_DATAFIMPROMOCAO').asDate:=PRO_DATAFIMPROMOCAO;
              ParamByname('PRO_PROMOCAOFIXA').AsString:=PRO_PROMOCAOFIXA;
              ParamByname('PRO_PROMOCAOSEGUNDA').AsString:=PRO_PROMOCAOSEGUNDA;
              ParamByname('PRO_PROMOCAOTERCA').AsString:=PRO_PROMOCAOTERCA;
              ParamByname('PRO_PROMOCAOQUARTA').AsString:=PRO_PROMOCAOQUARTA;
              ParamByname('PRO_PROMOCAOQUINTA').AsString:=PRO_PROMOCAOQUINTA;
              ParamByname('PRO_PROMOCAOSEXTA').AsString:=PRO_PROMOCAOSEXTA;
              ParamByname('PRO_PROMOCAOSABADO').AsString:=PRO_PROMOCAOSABADO;
              ParamByname('PRO_PROMOCAODOMINGO').AsString:=PRO_PROMOCAODOMINGO;
              ParamByname('PRO_BENEFICIARIO').AsString:=PRO_BENEFICIARIO;
              ParamByname('PRO_UUID').AsString:=PRO_UUID;
              ParamByname('PRO_TMONOFASICA').AsString:=PRO_TMONOFASICA;
              ParamByname('PRO_USALOTE').AsString:=PRO_USALOTE;
              ParamByname('PRO_USASERIAL').AsString:=PRO_USASERIAL;
              ParamByname('pro_codigo_grupo').asinteger:=pro_codigo_grupo;
              ParamByname('PRO_CODIGOBARRA2').AsString := PRO_CODIGOBARRA2;
              ParamByname('PRO_PRECOCAIXA').Asfloat := PRO_PRECOCAIXA;
              ParamByname('PRO_UNIDADEPORCAIXA').Asfloat := PRO_UNIDADEPORCAIXA;
              ParamByname('PRO_UNIDADE2').AsString :=PRO_UNIDADE2;
              ParamByname('PRO_DESCRICAO2').AsString := PRO_DESCRICAO2;
              ParamByname('PRO_IMAGEMPROD').AsString := PRO_IMAGEMPROD;
              ParamByname('PRO_PROMOCAOPROGRAMADA').AsString := PRO_PROMOCAOPROGRAMADA;
              ParamByname('PRO_FORNECEDOR').AsString := PRO_FORNECEDOR;
              ParamByname('PRO_NOME_PROD_NOTA').AsString := PRO_NOME_PROD_NOTA;

              ParamByname('PRO_COMISSAO_DINHEIRO').AsFloat := PRO_COMISSAO_DINHEIRO;
              ParamByname('PRO_COMISSAO_CREDIARIO').AsFloat := PRO_COMISSAO_CREDIARIO;
              ParamByname('PRO_COMISSAO_DEBITO').AsFloat := PRO_COMISSAO_DEBITO;
              ParamByname('PRO_COMISSAO_CREDITO').AsFloat := PRO_COMISSAO_CREDITO;
              ParamByname('PRO_COMISSOAO_CHEQUE').AsFloat := PRO_COMISSOAO_CHEQUE;
              ParamByname('PRO_COMISSAO_BOLETO').AsFloat := PRO_COMISSAO_BOLETO;
              ExecSQL;


    end;
  finally
      FreeAndNil(q1);
  end;

end;

function TProdutoModel.PromocaoFixa(NDia: Integer): Boolean;
begin
    if (PRO_PROMOCAOSEGUNDA = 'True') and (NDia = 2) then
    result := False
  else
    if (PRO_PROMOCAOTERCA= 'True') and (NDia = 3) then
      result := False
    else
      if (PRO_PROMOCAOQUARTA = 'True') and (NDia = 4) then
        result := False
      else
        if (PRO_PROMOCAOQUINTA = 'True') and (NDia = 5) then
          result := False
        else
          if (PRO_PROMOCAOSEXTA = 'True') and (NDia = 6) then
            result := False
          else
            if (PRO_PROMOCAOSABADO = 'True') and (NDia = 7) then
              result := False
            else
              if (PRO_PROMOCAODOMINGO = 'True') and (NDia = 1) then
                result := False
              else
                result := True;
end;

procedure TProdutoModel.Read(ObjProduto: TProdutoModel; Codigo: String; qtd : double; codVenda : integer; tipo, randomicoProduto, sub, codsub : String);
VAR
estoque, estoquereal, x, y : Double;
HistM : THistoricoDeProdutoModel;
HistC : THistoricoDeProdutoController;
q1 : TFDquery;
descricao, DDia, DFinalPromocao, DInicioPromocao : string;
cod, NoDia   : integer;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;
  q1.CachedUpdates := true;
  try
    with q1, ObjProduto do
    begin

       if (Length(codigo) in [8,12,13,14] ) then
       begin
        Close;
        sql.Clear;
        sql.Add('SELECT * FROM tb_produtos WHERE PRO_CODIGOBARRA = :PRO_CODIGO');
        ParamByName('PRO_CODIGO').AsString := codigo;
        open;
        if IsEmpty then
        begin
         Close;
         sql.Clear;
         sql.Add('SELECT * FROM TB_SUBPRODUTO WHERE SUB_CODIGOBARRA = :PRO_CODIGO');
         ParamByName('PRO_CODIGO').AsString := codigo;
         open;
         if IsEmpty then
         begin
          ShowMessage('Produto não Localizado!');
          abort;
         end
         else
         begin
           CodigoDaCaixa := 's';
           qtd := qtd * FieldByName('SUB_QTDUND').AsFloat;
           descricao := q1.FieldByName('SUB_DESCRICAO').AsString;
           cod :=  q1.FieldByName('SUB_CODIGOPRODUTO').AsInteger;

           PRO_CODIGOBARRA2:=FieldByName('SUB_CODIGOBARRA').AsString;
           PRO_PRECOCAIXA:=FieldByName('SUB_PRECO').Asfloat;
           PRO_UNIDADEPORCAIXA:=FieldByName('SUB_QTDUND').Asfloat;
           PRO_UNIDADE2:=FieldByName('SUB_UND').AsString;
           PRO_DESCRICAO2:=FieldByName('SUB_DESCRICAO').AsString;

           Close;
           sql.Clear;
           sql.Add('SELECT * FROM TB_PRODUTOS WHERE pro_codigo = :PRO_CODIGO');
           ParamByName('PRO_CODIGO').AsInteger := cod;
           open;

         end;
        end
        else
        begin
          descricao := q1.FieldByName('PRO_DESCRICAO').AsString;
        end;
       end
       else
       begin
        if sub = 's' then
        begin
         Close;
         sql.Clear;
         sql.Add('SELECT * FROM TB_SUBPRODUTO WHERE SUB_CODIGO = :PRO_CODIGO');
         ParamByName('PRO_CODIGO').AsString := codsub;
         open;
         CodigoDaCaixa := 's';
         qtd := qtd * FieldByName('SUB_QTDUND').AsFloat;
         descricao := q1.FieldByName('SUB_DESCRICAO').AsString;
         cod :=  q1.FieldByName('SUB_CODIGOPRODUTO').AsInteger;

         PRO_CODIGOBARRA2:=FieldByName('SUB_CODIGOBARRA').AsString;
         PRO_PRECOCAIXA:=FieldByName('SUB_PRECO').Asfloat;
         PRO_UNIDADEPORCAIXA:=FieldByName('SUB_QTDUND').Asfloat;
         PRO_UNIDADE2:=FieldByName('SUB_UND').AsString;
         PRO_DESCRICAO2:=FieldByName('SUB_DESCRICAO').AsString;
         Close;
         sql.Clear;
         sql.Add('SELECT * FROM TB_PRODUTOS WHERE pro_codigo = :PRO_CODIGO');
         ParamByName('PRO_CODIGO').AsInteger := cod;
         open;
        end
        else
        begin
        Close;
        sql.Clear;
        sql.Add('SELECT * FROM tb_produtos WHERE PRO_CODIGO = :PRO_CODIGO');
        ParamByName('PRO_CODIGO').AsString := Copy(codigo, 1, 13);
        open;
         if IsEmpty then
         begin
          ShowMessage('Produto não Localizado!');
          abort;
         end;
        descricao := q1.FieldByName('PRO_DESCRICAO').AsString;
        end;
       end;





       if Tipo <> 'Pré-Venda' then
       begin
       if (qtd > 0) and (frmPrincipal.Global.PRI_PRODUTOS_CONF2 = 'True') then
        begin
         estoque := FieldByName('PRO_QUANTIDADE').Asfloat - qtd;
         if estoque < 0 then
         begin
         ShowMessage(pchar('Quantidade em Estoque insuficiente! '+formatfloat('###,###,0.00',FieldByName('PRO_QUANTIDADE').Asfloat)));
         abort;
         end
        end;
        end
        else
        begin
          estoque := FieldByName('PRO_QUANTIDADE').Asfloat - qtd;

        end;

       HistM := THistoricoDeProdutoModel.create;
       HistC := THistoricoDeProdutoController.create;
          try
             with HistM do
             begin
               HIS_DESCRICAO := descricao;
               HIS_DATA := now;
               HIS_FORCLI := 'Consumdiro Final';
               HIS_NUMEROFISCAL := codVenda;
               HIS_TIPODOC := 'Saida NFC-e';
               HIS_CODIGO_PRODUTO := q1.FieldByName('pro_codigo').AsInteger;
               HIS_QTD_VENDA := qtd;
               HIS_QTD_ESTOQUE := q1.FieldByName('PRO_QUANTIDADE').AsFloat - HIS_QTD_VENDA;
               HIS_CODIGO_VENDA := codVenda;
               HIS_CUSTO := q1.FieldByName('PRO_CUSTO').AsInteger * HIS_QTD_VENDA;
               HIS_VALOR := HIS_QTD_VENDA *  FieldByName('PRO_PRECOVENDA').Asfloat;
               HIS_LUCRODIN := HIS_VALOR - HIS_CUSTO;
               HIS_LUCROPOR := HIS_LUCRODIN * 100 / HIS_VALOR;
               HIS_CODIGO_GRUPO :=  q1.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
               HIS_TMONOFASICA :=  q1.FieldByName('PRO_TMONOFASICA').AsString;
               HIS_CST := q1.FieldByName('PRO_CST').AsString;
               HIS_NCM := q1.FieldByName('PRO_NCM').AsString;
               HIS_NUMEROVENDA := codVenda;
               HIS_TIPO := 'NFCe';
               HIS_RANDOMICO := randomicoProduto
             end;
             HistC.Inserir(HistM);
          finally
            FreeandNIl(HistM);
            FreeandNIl(HistC);
          end;
       if (Tipo = 'Pré-Venda') and (estoque  < 0) then
       begin
         if FieldByName('PRO_QUANTIDADEREAL').AsFloat > 0 then
         begin
           x := qtd + estoque;
           y := FieldByName('PRO_QUANTIDADEREAL').AsFloat -x;
           if y < 0 then
           begin
           edit;
           FieldByName('PRO_QUANTIDADEREAL').AsFloat := 0;
           FieldByName('PRO_QUANTIDADE').Asfloat := FieldByName('PRO_QUANTIDADE').Asfloat - qtd - y;
           post;
           end
           else
           begin
           edit;
           FieldByName('PRO_QUANTIDADEREAL').AsFloat := y;
           FieldByName('PRO_QUANTIDADE').Asfloat := FieldByName('PRO_QUANTIDADE').Asfloat - qtd - y;
           post;
           end;
         end
         else
         begin
          edit;
          FieldByName('PRO_QUANTIDADE').Asfloat := FieldByName('PRO_QUANTIDADE').Asfloat - qtd;
          post;
         end;


       end
       else
       begin
       edit;
       FieldByName('PRO_QUANTIDADE').Asfloat := FieldByName('PRO_QUANTIDADE').Asfloat - qtd;
       post;
       end;



       PRO_CODIGO := FieldByName('PRO_CODIGO').Asinteger;
       PRO_DATACAD:=FieldByName('PRO_DATACAD').AsDateTime;
       PRO_REFERENCIA:=FieldByName('PRO_REFERENCIA').AsString;
       PRO_CODIGOBARRA:=FieldByName('PRO_CODIGOBARRA').AsString;
       PRO_DESCRICAO:= descricao;
       PRO_GRUPO:=FieldByName('PRO_GRUPO').AsString;
       PRO_UNIDADE:=FieldByName('PRO_UNIDADE').AsString;
       PRO_FATOR:=FieldByName('PRO_FATOR').Asfloat;
       PRO_QUANTIDADE:=FieldByName('PRO_QUANTIDADE').Asfloat;
       PRO_CUSTO:=FieldByName('PRO_CUSTO').Asfloat;
       PRO_CUSTOMEDIO:=FieldByName('PRO_CUSTOMEDIO').Asfloat;
       PRO_PORCENTAGEMLUCRO:=FieldByName('PRO_PORCENTAGEMLUCRO').Asfloat;
       PRO_PRECOVENDA:=FieldByName('PRO_PRECOVENDA').Asfloat;
       PRO_LOCALIZACAO:=FieldByName('PRO_LOCALIZACAO').AsString;
       PRO_PESO:=FieldByName('PRO_PESO').Asfloat;
       PRO_ULTIMACOMPRA:=FieldByName('PRO_ULTIMACOMPRA').AsDateTime;
       PRO_ULTIMAVENDA:=FieldByName('PRO_ULTIMAVENDA').AsDateTime;
       PRO_MARCA:=FieldByName('PRO_MARCA').AsString;
       PRO_LINHA:=FieldByName('PRO_LINHA').AsString;
       PRO_COMISSAO:=FieldByName('PRO_COMISSAO').Asfloat;
       PRO_QUANTIDADEREAL:=FieldByName('PRO_QUANTIDADEREAL').Asfloat;
       PRO_CUSTOREAL:=FieldByName('PRO_CUSTOREAL').Asfloat;
       PRO_LUCROREAL:=FieldByName('PRO_LUCROREAL').Asfloat;
       PRO_OBSERVACAO:=FieldByName('PRO_OBSERVACAO').AsString;
       PRO_CODIGOAPLICACAOPRODUTO:=FieldByName('PRO_CODIGOAPLICACAOPRODUTO').AsString;
       PRO_APLICACAOPRODUTO:=FieldByName('PRO_APLICACAOPRODUTO').AsString;
       PRO_CSOSN:=FieldByName('PRO_CSOSN').AsString;
       PRO_CST:=FieldByName('PRO_CST').AsString;
       PRO_CFOP:=FieldByName('PRO_CFOP').AsString;
       PRO_NCM:=FieldByName('PRO_NCM').AsString;
       PRO_CEST:=FieldByName('PRO_CEST').AsString;
       PRO_ALIQUOTA:=FieldByName('PRO_ALIQUOTA').Asfloat;
       PRO_ANP:=FieldByName('PRO_ANP').AsString;
       PRO_DESCRICAOANP:=FieldByName('PRO_DESCRICAOANP').AsString;
       PRO_CSTPISCOFINS:=FieldByName('PRO_CSTPISCOFINS').AsString;
       PRO_PORCENTAGEMPIS:=FieldByName('PRO_PORCENTAGEMPIS').Asfloat;
       PRO_PORCENTAGEMCOFINS:=FieldByName('PRO_PORCENTAGEMCOFINS').Asfloat;
       PRO_PRODUTONFE:=FieldByName('PRO_PRODUTONFE').AsString;
       PRO_PORCENTAGEMPROMOCAO:=FieldByName('PRO_PORCENTAGEMPROMOCAO').Asfloat;
       PRO_PRECOPROMOCAO:=FieldByName('PRO_PRECOPROMOCAO').Asfloat;
       PRO_PRMOCAOPROGRAMADA:=FieldByName('PRO_PRMOCAOPROGRAMADA').AsString;
       PRO_DATAINICIOPROMOCAO:=FieldByName('PRO_DATAINICIOPROMOCAO').AsDateTime;
       PRO_DATAFIMPROMOCAO:=FieldByName('PRO_DATAFIMPROMOCAO').AsDateTime;
       PRO_PROMOCAOFIXA:=FieldByName('PRO_PROMOCAOFIXA').AsString;
       PRO_PROMOCAOSEGUNDA:=FieldByName('PRO_PROMOCAOSEGUNDA').AsString;
       PRO_PROMOCAOTERCA:=FieldByName('PRO_PROMOCAOTERCA').AsString;
       PRO_PROMOCAOQUARTA:=FieldByName('PRO_PROMOCAOQUARTA').AsString;
       PRO_PROMOCAOQUINTA:=FieldByName('PRO_PROMOCAOQUINTA').AsString;
       PRO_PROMOCAOSEXTA:=FieldByName('PRO_PROMOCAOSEXTA').AsString;
       PRO_PROMOCAOSABADO:=FieldByName('PRO_PROMOCAOSABADO').AsString;
       PRO_PROMOCAODOMINGO:=FieldByName('PRO_PROMOCAODOMINGO').AsString;
       PRO_BENEFICIARIO:=FieldByName('PRO_BENEFICIARIO').AsString;
       PRO_UUID:=FieldByName('PRO_UUID').AsString;
       PRO_TMONOFASICA:=FieldByName('PRO_TMONOFASICA').AsString;
       PRO_USALOTE:=FieldByName('PRO_USALOTE').AsString;
       PRO_USASERIAL:=FieldByName('PRO_USASERIAL').AsString;
       PRO_CODIGO_GRUPO :=  FieldByName('PRO_CODIGO_GRUPO').asinteger;


       PRO_IMAGEMPROD := FieldByName('PRO_IMAGEMPROD').AsString ;
       PRO_PROMOCAOPROGRAMADA := FieldByName('PRO_PROMOCAOPROGRAMADA').AsString ;
       PRO_NOME_PROD_NOTA := FieldByName('PRO_NOME_PROD_NOTA').AsString;
       PRO_FORNECEDOR := FieldByName('PRO_FORNECEDOR').AsString;

       PRO_COMISSAO_DINHEIRO := FieldByName('PRO_COMISSAO_DINHEIRO').AsFloat;
       PRO_COMISSAO_CREDIARIO := FieldByName('PRO_COMISSAO_CREDIARIO').AsFloat;
       PRO_COMISSAO_DEBITO := FieldByName('PRO_COMISSAO_DEBITO').AsFloat;
       PRO_COMISSAO_CREDITO := FieldByName('PRO_COMISSAO_CREDITO').AsFloat;
       PRO_COMISSOAO_CHEQUE := FieldByName('PRO_COMISSOAO_CHEQUE').AsFloat;
       PRO_COMISSAO_BOLETO := FieldByName('PRO_COMISSAO_BOLETO').AsFloat;

       Dia             :=  now;
       DDia := FormatDateTime('yyyymmdd', Dia);
       DFinalPromocao := FormatDateTime('yyyymmdd', PRO_DATAFIMPROMOCAO);
       DInicioPromocao := FormatDateTime('yyyymmdd', PRO_DATAINICIOPROMOCAO);
       if PRO_PROMOCAOPROGRAMADA = 'True' then
       begin
        if (DInicioPromocao <= DDia) and (DFinalPromocao >= DDia) then
       begin
         PRO_PRECOVENDA := PRO_PRECOPROMOCAO;
         TemPromocao := 's';
       end

      end;
      NoDia := DayOfWeek(now);
      if PRO_PROMOCAOFIXA = 'True' then
       begin
       if PromocaoFixa(NoDia) = False then
       begin
         PRO_PRECOVENDA := PRO_PRECOPROMOCAO;
         TemPromocao := 's';
       end;
      end;


       q1.ApplyUpdates;
       q1.CommitUpdates;
    end;

  finally

  end;

end;

procedure TProdutoModel.ReadConsult(ObjProduto: TProdutoModel; Codigo: String);
var
estoque, estoquereal, x, y : Double;
HistM : THistoricoDeProdutoModel;
HistC : THistoricoDeProdutoController;
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;


  try
    with q1, ObjProduto do
    begin
       Close;
       sql.Clear;
       sql.Add('SELECT * FROM tb_produtos WHERE PRO_CODIGO = :PRO_CODIGO');
       ParamByName('PRO_CODIGO').AsString := codigo;
       open;
       if IsEmpty then
       begin
        Close;
       sql.Clear;
       sql.Add('SELECT * FROM tb_produtos WHERE PRO_CODIGOBARRA = :PRO_CODIGO');
       ParamByName('PRO_CODIGO').AsString := codigo;
       open;
       end;
       PRO_CODIGO := FieldByName('PRO_CODIGO').Asinteger;
       PRO_DATACAD:=FieldByName('PRO_DATACAD').AsDateTime;
       PRO_REFERENCIA:=FieldByName('PRO_REFERENCIA').AsString;
       PRO_CODIGOBARRA:=FieldByName('PRO_CODIGOBARRA').AsString;
       PRO_DESCRICAO:=FieldByName('PRO_DESCRICAO').AsString;
       PRO_GRUPO:=FieldByName('PRO_GRUPO').AsString;
       PRO_UNIDADE:=FieldByName('PRO_UNIDADE').AsString;
       PRO_FATOR:=FieldByName('PRO_FATOR').Asfloat;
       PRO_QUANTIDADE:=FieldByName('PRO_QUANTIDADE').Asfloat;
       PRO_CUSTO:=FieldByName('PRO_CUSTO').Asfloat;
       PRO_CUSTOMEDIO:=FieldByName('PRO_CUSTOMEDIO').Asfloat;
       PRO_PORCENTAGEMLUCRO:=FieldByName('PRO_PORCENTAGEMLUCRO').Asfloat;
       PRO_PRECOVENDA:=FieldByName('PRO_PRECOVENDA').Asfloat;
       PRO_LOCALIZACAO:=FieldByName('PRO_LOCALIZACAO').AsString;
       PRO_PESO:=FieldByName('PRO_PESO').Asfloat;
       PRO_ULTIMACOMPRA:=FieldByName('PRO_ULTIMACOMPRA').AsDateTime;
       PRO_ULTIMAVENDA:=FieldByName('PRO_ULTIMAVENDA').AsDateTime;
       PRO_MARCA:=FieldByName('PRO_MARCA').AsString;
       PRO_LINHA:=FieldByName('PRO_LINHA').AsString;
       PRO_COMISSAO:=FieldByName('PRO_COMISSAO').Asfloat;
       PRO_QUANTIDADEREAL:=FieldByName('PRO_QUANTIDADEREAL').Asfloat;
       PRO_CUSTOREAL:=FieldByName('PRO_CUSTOREAL').Asfloat;
       PRO_LUCROREAL:=FieldByName('PRO_LUCROREAL').Asfloat;
       PRO_OBSERVACAO:=FieldByName('PRO_OBSERVACAO').AsString;
       PRO_CODIGOAPLICACAOPRODUTO:=FieldByName('PRO_CODIGOAPLICACAOPRODUTO').AsString;
       PRO_APLICACAOPRODUTO:=FieldByName('PRO_APLICACAOPRODUTO').AsString;
       PRO_CSOSN:=FieldByName('PRO_CSOSN').AsString;
       PRO_CST:=FieldByName('PRO_CST').AsString;
       PRO_CFOP:=FieldByName('PRO_CFOP').AsString;
       PRO_NCM:=FieldByName('PRO_NCM').AsString;
       PRO_CEST:=FieldByName('PRO_CEST').AsString;
       PRO_ALIQUOTA:=FieldByName('PRO_ALIQUOTA').Asfloat;
       PRO_ANP:=FieldByName('PRO_ANP').AsString;
       PRO_DESCRICAOANP:=FieldByName('PRO_DESCRICAOANP').AsString;
       PRO_CSTPISCOFINS:=FieldByName('PRO_CSTPISCOFINS').AsString;
       PRO_PORCENTAGEMPIS:=FieldByName('PRO_PORCENTAGEMPIS').Asfloat;
       PRO_PORCENTAGEMCOFINS:=FieldByName('PRO_PORCENTAGEMCOFINS').Asfloat;
       PRO_PRODUTONFE:=FieldByName('PRO_PRODUTONFE').AsString;
       PRO_PORCENTAGEMPROMOCAO:=FieldByName('PRO_PORCENTAGEMPROMOCAO').Asfloat;
       PRO_PRECOPROMOCAO:=FieldByName('PRO_PRECOPROMOCAO').Asfloat;
       PRO_PRMOCAOPROGRAMADA:=FieldByName('PRO_PRMOCAOPROGRAMADA').AsString;
       PRO_DATAINICIOPROMOCAO:=FieldByName('PRO_DATAINICIOPROMOCAO').AsDateTime;
       PRO_DATAFIMPROMOCAO:=FieldByName('PRO_DATAFIMPROMOCAO').AsDateTime;
       PRO_PROMOCAOFIXA:=FieldByName('PRO_PROMOCAOFIXA').AsString;
       PRO_PROMOCAOSEGUNDA:=FieldByName('PRO_PROMOCAOSEGUNDA').AsString;
       PRO_PROMOCAOTERCA:=FieldByName('PRO_PROMOCAOTERCA').AsString;
       PRO_PROMOCAOQUARTA:=FieldByName('PRO_PROMOCAOQUARTA').AsString;
       PRO_PROMOCAOQUINTA:=FieldByName('PRO_PROMOCAOQUINTA').AsString;
       PRO_PROMOCAOSEXTA:=FieldByName('PRO_PROMOCAOSEXTA').AsString;
       PRO_PROMOCAOSABADO:=FieldByName('PRO_PROMOCAOSABADO').AsString;
       PRO_PROMOCAODOMINGO:=FieldByName('PRO_PROMOCAODOMINGO').AsString;
       PRO_BENEFICIARIO:=FieldByName('PRO_BENEFICIARIO').AsString;
       PRO_UUID:=FieldByName('PRO_UUID').AsString;
       PRO_TMONOFASICA:=FieldByName('PRO_TMONOFASICA').AsString;
       PRO_USALOTE:=FieldByName('PRO_USALOTE').AsString;
       PRO_USASERIAL:=FieldByName('PRO_USASERIAL').AsString;
       PRO_CODIGO_GRUPO :=  FieldByName('PRO_CODIGO_GRUPO').asinteger;

       PRO_CODIGOBARRA2:=FieldByName('PRO_CODIGOBARRA2').AsString;
       PRO_PRECOCAIXA:=FieldByName('PRO_PRECOCAIXA').Asfloat;
       PRO_UNIDADEPORCAIXA:=FieldByName('PRO_UNIDADEPORCAIXA').Asfloat;
       PRO_UNIDADE2:=FieldByName('PRO_UNIDADE2').AsString;
       PRO_DESCRICAO2:=FieldByName('PRO_DESCRICAO2').AsString;
       PRO_IMAGEMPROD := FieldByName('PRO_IMAGEMPROD').AsString ;
       PRO_PROMOCAOPROGRAMADA := FieldByName('PRO_PROMOCAOPROGRAMADA').AsString ;
       PRO_NOME_PROD_NOTA := FieldByName('PRO_NOME_PROD_NOTA').AsString;
       PRO_FORNECEDOR := FieldByName('PRO_FORNECEDOR').AsString;

       PRO_COMISSAO_DINHEIRO := FieldByName('PRO_COMISSAO_DINHEIRO').AsFloat;
       PRO_COMISSAO_CREDIARIO := FieldByName('PRO_COMISSAO_CREDIARIO').AsFloat;
       PRO_COMISSAO_DEBITO := FieldByName('PRO_COMISSAO_DEBITO').AsFloat;
       PRO_COMISSAO_CREDITO := FieldByName('PRO_COMISSAO_CREDITO').AsFloat;
       PRO_COMISSOAO_CHEQUE := FieldByName('PRO_COMISSOAO_CHEQUE').AsFloat;
       PRO_COMISSAO_BOLETO := FieldByName('PRO_COMISSAO_BOLETO').AsFloat;
    end;
  finally
    FreeandNil(q1);
  end;

end;

procedure TProdutoModel.SetCodigoDaCaixa(const Value: String);
begin
  FCodigoDaCaixa := Value;
end;

procedure TProdutoModel.SetDia(const Value: Tdate);
begin
  FDia := Value;
end;

procedure TProdutoModel.SetPRO_ALIQUOTA(const Value: Double);
begin
  FPRO_ALIQUOTA := Value;
end;

procedure TProdutoModel.SetPRO_ANP(const Value: String);
begin
  FPRO_ANP := Value;
end;

procedure TProdutoModel.SetPRO_APLICACAOPRODUTO(const Value: String);
begin
  FPRO_APLICACAOPRODUTO := Value;
end;

procedure TProdutoModel.SetPRO_BENEFICIARIO(const Value: String);
begin
  FPRO_BENEFICIARIO := Value;
end;

procedure TProdutoModel.SetPRO_CEST(const Value: String);
begin
  FPRO_CEST := Value;
end;

procedure TProdutoModel.SetPRO_CFOP(const Value: String);
begin
  FPRO_CFOP := Value;
end;

procedure TProdutoModel.SetPRO_CODIGO(const Value: Integer);
begin
  FPRO_CODIGO := Value;
end;

procedure TProdutoModel.SetPRO_CODIGOAPLICACAOPRODUTO(const Value: String);
begin
  FPRO_CODIGOAPLICACAOPRODUTO := Value;
end;

procedure TProdutoModel.SetPRO_CODIGOBARRA(const Value: String);
begin
  FPRO_CODIGOBARRA := Value;
end;

procedure TProdutoModel.SetPRO_CODIGOBARRA2(const Value: String);
begin
  FPRO_CODIGOBARRA2 := Value;
end;

procedure TProdutoModel.SetPRO_CODIGO_GRUPO(const Value: integer);
begin
  FPRO_CODIGO_GRUPO := Value;
end;

procedure TProdutoModel.SetPRO_COMISSAO(const Value: Double);
begin
  FPRO_COMISSAO := Value;
end;

procedure TProdutoModel.SetPRO_COMISSAO_BOLETO(const Value: Double);
begin
  FPRO_COMISSAO_BOLETO := Value;
end;

procedure TProdutoModel.SetPRO_COMISSAO_CREDIARIO(const Value: Double);
begin
  FPRO_COMISSAO_CREDIARIO := Value;
end;

procedure TProdutoModel.SetPRO_COMISSAO_CREDITO(const Value: Double);
begin
  FPRO_COMISSAO_CREDITO := Value;
end;

procedure TProdutoModel.SetPRO_COMISSAO_DEBITO(const Value: Double);
begin
  FPRO_COMISSAO_DEBITO := Value;
end;

procedure TProdutoModel.SetPRO_COMISSAO_DINHEIRO(const Value: Double);
begin
  FPRO_COMISSAO_DINHEIRO := Value;
end;

procedure TProdutoModel.SetPRO_COMISSOAO_CHEQUE(const Value: Double);
begin
  FPRO_COMISSOAO_CHEQUE := Value;
end;

procedure TProdutoModel.SetPRO_CSOSN(const Value: String);
begin
  FPRO_CSOSN := Value;
end;

procedure TProdutoModel.SetPRO_CST(const Value: String);
begin
  FPRO_CST := Value;
end;

procedure TProdutoModel.SetPRO_CSTPISCOFINS(const Value: String);
begin
  FPRO_CSTPISCOFINS := Value;
end;

procedure TProdutoModel.SetPRO_CUSTO(const Value: Double);
begin
  FPRO_CUSTO := Value;
end;

procedure TProdutoModel.SetPRO_CUSTOMEDIO(const Value: Double);
begin
  FPRO_CUSTOMEDIO := Value;
end;

procedure TProdutoModel.SetPRO_CUSTOREAL(const Value: Double);
begin
  FPRO_CUSTOREAL := Value;
end;

procedure TProdutoModel.SetPRO_DATACAD(const Value: TDate);
begin
  FPRO_DATACAD := Value;
end;

procedure TProdutoModel.SetPRO_DATAFIMPROMOCAO(const Value: TDate);
begin
  FPRO_DATAFIMPROMOCAO := Value;
end;

procedure TProdutoModel.SetPRO_DATAINICIOPROMOCAO(const Value: TDate);
begin
  FPRO_DATAINICIOPROMOCAO := Value;
end;

procedure TProdutoModel.SetPRO_DESCRICAO(const Value: String);
begin
  FPRO_DESCRICAO := Value;
end;

procedure TProdutoModel.SetPRO_DESCRICAO2(const Value: String);
begin
  FPRO_DESCRICAO2 := Value;
end;

procedure TProdutoModel.SetPRO_DESCRICAOANP(const Value: String);
begin
  FPRO_DESCRICAOANP := Value;
end;

procedure TProdutoModel.SetPRO_FATOR(const Value: Double);
begin
  FPRO_FATOR := Value;
end;

procedure TProdutoModel.SetPRO_FORNECEDOR(const Value: String);
begin
  FPRO_FORNECEDOR := Value;
end;

procedure TProdutoModel.SetPRO_GRUPO(const Value: String);
begin
  FPRO_GRUPO := Value;
end;

procedure TProdutoModel.SetPRO_IMAGEMPROD(const Value: String);
begin
  FPRO_IMAGEMPROD := Value;
end;

procedure TProdutoModel.SetPRO_LINHA(const Value: String);
begin
  FPRO_LINHA := Value;
end;

procedure TProdutoModel.SetPRO_LOCALIZACAO(const Value: String);
begin
  FPRO_LOCALIZACAO := Value;
end;

procedure TProdutoModel.SetPRO_LUCROREAL(const Value: Double);
begin
  FPRO_LUCROREAL := Value;
end;

procedure TProdutoModel.SetPRO_MARCA(const Value: String);
begin
  FPRO_MARCA := Value;
end;

procedure TProdutoModel.SetPRO_NCM(const Value: String);
begin
  FPRO_NCM := Value;
end;

procedure TProdutoModel.SetPRO_NOME_PROD_NOTA(const Value: String);
begin
  FPRO_NOME_PROD_NOTA := Value;
end;

procedure TProdutoModel.SetPRO_OBSERVACAO(const Value: String);
begin
  FPRO_OBSERVACAO := Value;
end;

procedure TProdutoModel.SetPRO_PESO(const Value: Double);
begin
  FPRO_PESO := Value;
end;

procedure TProdutoModel.SetPRO_PORCENTAGEMCOFINS(const Value: Double);
begin
  FPRO_PORCENTAGEMCOFINS := Value;
end;

procedure TProdutoModel.SetPRO_PORCENTAGEMLUCRO(const Value: Double);
begin
  FPRO_PORCENTAGEMLUCRO := Value;
end;

procedure TProdutoModel.SetPRO_PORCENTAGEMPIS(const Value: Double);
begin
  FPRO_PORCENTAGEMPIS := Value;
end;

procedure TProdutoModel.SetPRO_PORCENTAGEMPROMOCAO(const Value: Double);
begin
  FPRO_PORCENTAGEMPROMOCAO := Value;
end;

procedure TProdutoModel.SetPRO_PRECOCAIXA(const Value: Double);
begin
  FPRO_PRECOCAIXA := Value;
end;

procedure TProdutoModel.SetPRO_PRECOPROMOCAO(const Value: Double);
begin
  FPRO_PRECOPROMOCAO := Value;
end;

procedure TProdutoModel.SetPRO_PRECOVENDA(const Value: Double);
begin
  FPRO_PRECOVENDA := Value;
end;

procedure TProdutoModel.SetPRO_PRMOCAOPROGRAMADA(const Value: String);
begin
  FPRO_PRMOCAOPROGRAMADA := Value;
end;

procedure TProdutoModel.SetPRO_PRODUTONFE(const Value: String);
begin
  FPRO_PRODUTONFE := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAODOMINGO(const Value: String);
begin
  FPRO_PROMOCAODOMINGO := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAOFIXA(const Value: String);
begin
  FPRO_PROMOCAOFIXA := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAOPROGRAMADA(const Value: String);
begin
  FPRO_PROMOCAOPROGRAMADA := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAOQUARTA(const Value: String);
begin
  FPRO_PROMOCAOQUARTA := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAOQUINTA(const Value: String);
begin
  FPRO_PROMOCAOQUINTA := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAOSABADO(const Value: String);
begin
  FPRO_PROMOCAOSABADO := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAOSEGUNDA(const Value: String);
begin
  FPRO_PROMOCAOSEGUNDA := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAOSEXTA(const Value: String);
begin
  FPRO_PROMOCAOSEXTA := Value;
end;

procedure TProdutoModel.SetPRO_PROMOCAOTERCA(const Value: String);
begin
  FPRO_PROMOCAOTERCA := Value;
end;

procedure TProdutoModel.SetPRO_QUANTIDADE(const Value: Double);
begin
  FPRO_QUANTIDADE := Value;
end;

procedure TProdutoModel.SetPRO_QUANTIDADEREAL(const Value: Double);
begin
  FPRO_QUANTIDADEREAL := Value;
end;

procedure TProdutoModel.SetPRO_REFERENCIA(const Value: String);
begin
  FPRO_REFERENCIA := Value;
end;

procedure TProdutoModel.SetPRO_TMONOFASICA(const Value: String);
begin
  FPRO_TMONOFASICA := Value;
end;

procedure TProdutoModel.SetPRO_ULTIMACOMPRA(const Value: TDate);
begin
  FPRO_ULTIMACOMPRA := Value;
end;

procedure TProdutoModel.SetPRO_ULTIMAVENDA(const Value: TDate);
begin
  FPRO_ULTIMAVENDA := Value;
end;

procedure TProdutoModel.SetPRO_UNIDADE(const Value: String);
begin
  FPRO_UNIDADE := Value;
end;

procedure TProdutoModel.SetPRO_UNIDADE2(const Value: String);
begin
  FPRO_UNIDADE2 := Value;
end;

procedure TProdutoModel.SetPRO_UNIDADEPORCAIXA(const Value: Double);
begin
  FPRO_UNIDADEPORCAIXA := Value;
end;

procedure TProdutoModel.SetPRO_USALOTE(const Value: String);
begin
  FPRO_USALOTE := Value;
end;

procedure TProdutoModel.SetPRO_USASERIAL(const Value: String);
begin
  FPRO_USASERIAL := Value;
end;

procedure TProdutoModel.SetPRO_UUID(const Value: String);
begin
  FPRO_UUID := Value;
end;

procedure TProdutoModel.SetTemPromocao(const Value: string);
begin
  FTemPromocao := Value;
end;

procedure TProdutoModel.Update(ObjProduto: TProdutoModel);
VAR
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1, ObjProduto do
    begin
       Close;
       Sql.add('UPDATE TB_PRODUTOS SET');
       Sql.Add('PRO_CODIGO=:PRO_CODIGO');
       Sql.Add(',PRO_DATACAD=:PRO_DATACAD');
       Sql.Add(',PRO_REFERENCIA=:PRO_REFERENCIA');
       Sql.Add(',PRO_CODIGOBARRA=:PRO_CODIGOBARRA');
       Sql.Add(',PRO_DESCRICAO=:PRO_DESCRICAO');
       Sql.Add(',PRO_GRUPO=:PRO_GRUPO');
       Sql.Add(',PRO_UNIDADE=:PRO_UNIDADE');
       Sql.Add(',PRO_FATOR=:PRO_FATOR');
       Sql.Add(',PRO_QUANTIDADE=:PRO_QUANTIDADE');
       Sql.Add(',PRO_CUSTO=:PRO_CUSTO');
       Sql.Add(',PRO_CUSTOMEDIO=:PRO_CUSTOMEDIO');
       Sql.Add(',PRO_PORCENTAGEMLUCRO=:PRO_PORCENTAGEMLUCRO');
       Sql.Add(',PRO_PRECOVENDA=:PRO_PRECOVENDA');
       Sql.Add(',PRO_LOCALIZACAO=:PRO_LOCALIZACAO');
       Sql.Add(',PRO_PESO=:PRO_PESO');
       Sql.Add(',PRO_ULTIMACOMPRA=:PRO_ULTIMACOMPRA');
       Sql.Add(',PRO_ULTIMAVENDA=:PRO_ULTIMAVENDA');
       Sql.Add(',PRO_MARCA=:PRO_MARCA');
       Sql.Add(',PRO_LINHA=:PRO_LINHA');
       Sql.Add(',PRO_COMISSAO=:PRO_COMISSAO');
       Sql.Add(',PRO_QUANTIDADEREAL=:PRO_QUANTIDADEREAL');
       Sql.Add(',PRO_CUSTOREAL=:PRO_CUSTOREAL');
       Sql.Add(',PRO_LUCROREAL=:PRO_LUCROREAL');
       Sql.Add(',PRO_OBSERVACAO=:PRO_OBSERVACAO');
       Sql.Add(',PRO_CODIGOAPLICACAOPRODUTO=:PRO_CODIGOAPLICACAOPRODUTO');
       Sql.Add(',PRO_APLICACAOPRODUTO=:PRO_APLICACAOPRODUTO');
       Sql.Add(',PRO_CSOSN=:PRO_CSOSN');
       Sql.Add(',PRO_CST=:PRO_CST');
       Sql.Add(',PRO_CFOP=:PRO_CFOP');
       Sql.Add(',PRO_NCM=:PRO_NCM');
       Sql.Add(',PRO_CEST=:PRO_CEST');
       Sql.Add(',PRO_ALIQUOTA=:PRO_ALIQUOTA');
       Sql.Add(',PRO_ANP=:PRO_ANP');
       Sql.Add(',PRO_DESCRICAOANP=:PRO_DESCRICAOANP');
       Sql.Add(',PRO_CSTPISCOFINS=:PRO_CSTPISCOFINS');
       Sql.Add(',PRO_PORCENTAGEMPIS=:PRO_PORCENTAGEMPIS');
       Sql.Add(',PRO_PORCENTAGEMCOFINS=:PRO_PORCENTAGEMCOFINS');
       Sql.Add(',PRO_PRODUTONFE=:PRO_PRODUTONFE');
       Sql.Add(',PRO_PORCENTAGEMPROMOCAO=:PRO_PORCENTAGEMPROMOCAO');
       Sql.Add(',PRO_PRECOPROMOCAO=:PRO_PRECOPROMOCAO');
       Sql.Add(',PRO_PRMOCAOPROGRAMADA=:PRO_PRMOCAOPROGRAMADA');
       Sql.Add(',PRO_DATAINICIOPROMOCAO=:PRO_DATAINICIOPROMOCAO');
       Sql.Add(',PRO_DATAFIMPROMOCAO=:PRO_DATAFIMPROMOCAO');
       Sql.Add(',PRO_PROMOCAOFIXA=:PRO_PROMOCAOFIXA');
       Sql.Add(',PRO_PROMOCAOSEGUNDA=:PRO_PROMOCAOSEGUNDA');
       Sql.Add(',PRO_PROMOCAOTERCA=:PRO_PROMOCAOTERCA');
       Sql.Add(',PRO_PROMOCAOQUARTA=:PRO_PROMOCAOQUARTA');
       Sql.Add(',PRO_PROMOCAOQUINTA=:PRO_PROMOCAOQUINTA');
       Sql.Add(',PRO_PROMOCAOSEXTA=:PRO_PROMOCAOSEXTA');
       Sql.Add(',PRO_PROMOCAOSABADO=:PRO_PROMOCAOSABADO');
       Sql.Add(',PRO_PROMOCAODOMINGO=:PRO_PROMOCAODOMINGO');
       Sql.Add(',PRO_BENEFICIARIO=:PRO_BENEFICIARIO');
      // Sql.Add(',PRO_UUID=:PRO_UUID');
       Sql.Add(',PRO_TMONOFASICA=:PRO_TMONOFASICA');
       Sql.Add(',PRO_USALOTE=:PRO_USALOTE');
       Sql.Add(',PRO_USASERIAL=:PRO_USASERIAL');
       Sql.Add(',PRO_CODIGO_GRUPO=:PRO_CODIGO_GRUPO');
       Sql.Add(',PRO_CODIGOBARRA2=:PRO_CODIGOBARRA2');
       Sql.Add(',PRO_PRECOCAIXA=:PRO_PRECOCAIXA');
       Sql.Add(',PRO_UNIDADEPORCAIXA=:PRO_UNIDADEPORCAIXA');
       Sql.Add(',PRO_UNIDADE2=:PRO_UNIDADE2');
       Sql.Add(',PRO_DESCRICAO2=:PRO_DESCRICAO2');
       Sql.Add(',PRO_IMAGEMPROD=:PRO_IMAGEMPROD');
       Sql.Add(',PRO_PROMOCAOPROGRAMADA=:PRO_PROMOCAOPROGRAMADA');
       Sql.Add(',PRO_COMISSAO_DINHEIRO=:PRO_COMISSAO_DINHEIRO');
       Sql.Add(',PRO_COMISSAO_CREDIARIO=:PRO_COMISSAO_CREDIARIO');
       Sql.Add(',PRO_COMISSAO_DEBITO=:PRO_COMISSAO_DEBITO');
       Sql.Add(',PRO_COMISSAO_CREDITO=:PRO_COMISSAO_CREDITO');
       Sql.Add(',PRO_COMISSOAO_CHEQUE=:PRO_COMISSOAO_CHEQUE');
       Sql.Add(',PRO_COMISSAO_BOLETO=:PRO_COMISSAO_BOLETO');
       sql.add('where pro_codigo = :pro_codigo');
              ParamByname('PRO_CODIGO').AsInteger:=PRO_CODIGO;
              ParamByname('PRO_DATACAD').AsDate:=PRO_DATACAD;
              ParamByname('PRO_REFERENCIA').AsString:=PRO_REFERENCIA;
              ParamByname('PRO_CODIGOBARRA').AsString:=PRO_CODIGOBARRA;
              ParamByname('PRO_DESCRICAO').AsString:=PRO_DESCRICAO;
              ParamByname('PRO_GRUPO').AsString:=PRO_GRUPO;
              ParamByname('PRO_UNIDADE').AsString:=PRO_UNIDADE;
              ParamByname('PRO_FATOR').Asfloat:=PRO_FATOR;
              ParamByname('PRO_QUANTIDADE').Asfloat:=PRO_QUANTIDADE;
              ParamByname('PRO_CUSTO').Asfloat:=PRO_CUSTO;
              ParamByname('PRO_CUSTOMEDIO').Asfloat:=PRO_CUSTOMEDIO;
              ParamByname('PRO_PORCENTAGEMLUCRO').Asfloat:=PRO_PORCENTAGEMLUCRO;
              ParamByname('PRO_PRECOVENDA').Asfloat:=PRO_PRECOVENDA;
              ParamByname('PRO_LOCALIZACAO').AsString:=PRO_LOCALIZACAO;
              ParamByname('PRO_PESO').Asfloat:=PRO_PESO;
              ParamByname('PRO_ULTIMACOMPRA').AsDate:=PRO_ULTIMACOMPRA;
              ParamByname('PRO_ULTIMAVENDA').AsDate:=PRO_ULTIMAVENDA;
              ParamByname('PRO_MARCA').AsString:=PRO_MARCA;
              ParamByname('PRO_LINHA').AsString:=PRO_LINHA;
              ParamByname('PRO_COMISSAO').Asfloat:=PRO_COMISSAO;
              ParamByname('PRO_QUANTIDADEREAL').Asfloat:=PRO_QUANTIDADEREAL;
              ParamByname('PRO_CUSTOREAL').Asfloat:=PRO_CUSTOREAL;
              ParamByname('PRO_LUCROREAL').Asfloat:=PRO_LUCROREAL;
              ParamByname('PRO_OBSERVACAO').AsString:=PRO_OBSERVACAO;
              ParamByname('PRO_CODIGOAPLICACAOPRODUTO').AsString:=PRO_CODIGOAPLICACAOPRODUTO;
              ParamByname('PRO_APLICACAOPRODUTO').AsString:=PRO_APLICACAOPRODUTO;
              ParamByname('PRO_CSOSN').AsString:=PRO_CSOSN;
              ParamByname('PRO_CST').AsString:=PRO_CST;
              ParamByname('PRO_CFOP').AsString:=PRO_CFOP;
              ParamByname('PRO_NCM').AsString:=PRO_NCM;
              ParamByname('PRO_CEST').AsString:=PRO_CEST;
              ParamByname('PRO_ALIQUOTA').Asfloat:=PRO_ALIQUOTA;
              ParamByname('PRO_ANP').AsString:=PRO_ANP;
              ParamByname('PRO_DESCRICAOANP').AsString:=PRO_DESCRICAOANP;
              ParamByname('PRO_CSTPISCOFINS').AsString:=PRO_CSTPISCOFINS;
              ParamByname('PRO_PORCENTAGEMPIS').Asfloat:=PRO_PORCENTAGEMPIS;
              ParamByname('PRO_PORCENTAGEMCOFINS').Asfloat:=PRO_PORCENTAGEMCOFINS;
              ParamByname('PRO_PRODUTONFE').AsString:=PRO_PRODUTONFE;
              ParamByname('PRO_PORCENTAGEMPROMOCAO').Asfloat:=PRO_PORCENTAGEMPROMOCAO;
              ParamByname('PRO_PRECOPROMOCAO').Asfloat:=PRO_PRECOPROMOCAO;
              ParamByname('PRO_PRMOCAOPROGRAMADA').AsString:=PRO_PRMOCAOPROGRAMADA;
              ParamByname('PRO_DATAINICIOPROMOCAO').asDate:=PRO_DATAINICIOPROMOCAO;
              ParamByname('PRO_DATAFIMPROMOCAO').asDate:=PRO_DATAFIMPROMOCAO;
              ParamByname('PRO_PROMOCAOFIXA').AsString:=PRO_PROMOCAOFIXA;
              ParamByname('PRO_PROMOCAOSEGUNDA').AsString:=PRO_PROMOCAOSEGUNDA;
              ParamByname('PRO_PROMOCAOTERCA').AsString:=PRO_PROMOCAOTERCA;
              ParamByname('PRO_PROMOCAOQUARTA').AsString:=PRO_PROMOCAOQUARTA;
              ParamByname('PRO_PROMOCAOQUINTA').AsString:=PRO_PROMOCAOQUINTA;
              ParamByname('PRO_PROMOCAOSEXTA').AsString:=PRO_PROMOCAOSEXTA;
              ParamByname('PRO_PROMOCAOSABADO').AsString:=PRO_PROMOCAOSABADO;
              ParamByname('PRO_PROMOCAODOMINGO').AsString:=PRO_PROMOCAODOMINGO;
              ParamByname('PRO_BENEFICIARIO').AsString:=PRO_BENEFICIARIO;
            //  ParamByname('PRO_UUID').AsString:=PRO_UUID;
              ParamByname('PRO_TMONOFASICA').AsString:=PRO_TMONOFASICA;
              ParamByname('PRO_USALOTE').AsString:=PRO_USALOTE;
              ParamByname('PRO_USASERIAL').AsString:=PRO_USASERIAL;
              ParamByname('pro_codigo_grupo').asinteger:=pro_codigo_grupo;


              ParamByname('PRO_CODIGOBARRA2').AsString := PRO_CODIGOBARRA2;
              ParamByname('PRO_PRECOCAIXA').Asfloat := PRO_PRECOCAIXA;
              ParamByname('PRO_UNIDADEPORCAIXA').Asfloat := PRO_UNIDADEPORCAIXA;
              ParamByname('PRO_UNIDADE2').AsString :=PRO_UNIDADE2;
              ParamByname('PRO_DESCRICAO2').AsString := PRO_DESCRICAO2;
              ParamByname('PRO_IMAGEMPROD').AsString := PRO_IMAGEMPROD;
              ParamByname('PRO_PROMOCAOPROGRAMADA').AsString := PRO_PROMOCAOPROGRAMADA;

              ParamByname('PRO_COMISSAO_DINHEIRO').AsFloat := PRO_COMISSAO_DINHEIRO;
              ParamByname('PRO_COMISSAO_CREDIARIO').AsFloat := PRO_COMISSAO_CREDIARIO;
              ParamByname('PRO_COMISSAO_DEBITO').AsFloat := PRO_COMISSAO_DEBITO;
              ParamByname('PRO_COMISSAO_CREDITO').AsFloat := PRO_COMISSAO_CREDITO;
              ParamByname('PRO_COMISSOAO_CHEQUE').AsFloat := PRO_COMISSOAO_CHEQUE;
              ParamByname('PRO_COMISSAO_BOLETO').AsFloat := PRO_COMISSAO_BOLETO;
              ExecSQL;

    end;

  finally
    FreeandNil(q1);
  end;


end;

procedure TProdutoModel.VoltaHistorico(codProduto, codVenda: Integer; qtd: double);
var
HistM : THistoricoDeProdutoModel;
HistC : THistoricoDeProdutoController;
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;
  q1.CachedUpdates := true;
    try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Add('select * from tb_produtos where pro_codigo='+QuotedStr(inttostr(codProduto)));
        open;

        HistM := THistoricoDeProdutoModel.create;
        HistC := THistoricoDeProdutoController.create;
          try
             with HistM do
             begin
               HIS_DESCRICAO := q1.FieldByName('PRO_DESCRICAO').AsString;
               HIS_DATA := now;
               HIS_FORCLI := 'Consumdiro Final';
               HIS_NUMEROFISCAL := codVenda;
               HIS_TIPODOC := 'Exclusão NFC-e';
               HIS_CODIGO_PRODUTO := q1.FieldByName('pro_codigo').AsInteger;
               HIS_QTD_VENDA := qtd;
               HIS_QTD_ESTOQUE := q1.FieldByName('PRO_QUANTIDADE').AsFloat + HIS_QTD_VENDA;
               HIS_CODIGO_VENDA := codVenda;
               HIS_CUSTO := q1.FieldByName('PRO_CUSTO').AsInteger * HIS_QTD_VENDA;
               HIS_VALOR := HIS_QTD_VENDA *  FieldByName('PRO_PRECOVENDA').Asfloat;
               HIS_LUCRODIN := HIS_VALOR - HIS_CUSTO;
               HIS_LUCROPOR := HIS_LUCRODIN * 100 / HIS_VALOR;
               HIS_CODIGO_GRUPO :=  q1.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
               HIS_TMONOFASICA :=  q1.FieldByName('PRO_TMONOFASICA').AsString;
               HIS_CST := q1.FieldByName('PRO_CST').AsString;
               HIS_NCM := q1.FieldByName('PRO_NCM').AsString;
               HIS_NUMEROVENDA := codVenda;

             end;
             HistC.Inserir(HistM);

             edit;
             FieldByName('PRO_QUANTIDADE').Asfloat := FieldByName('PRO_QUANTIDADE').Asfloat + qtd;
             FieldByName('PRO_ULTIMAVENDA').AsDateTime := now;
             post;
             ApplyUpdates;
             CommitUpdates;
          finally
            FreeandNIl(HistM);
            FreeandNIl(HistC);
          end;
      end;
    finally
      FreeandNil(q1);
    end;
end;

end.
