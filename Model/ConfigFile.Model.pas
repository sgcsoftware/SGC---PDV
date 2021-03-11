unit ConfigFile.Model;

interface

uses
  System.IniFiles,
  System.SysUtils,

  Funcao.GenericEnum,
  ACBrTEFDClass;

type
  TConfigFile = class(TIniFile)
  const
    cCaixa     = 'CAIXA';
    cTEF       = 'TEF';
    cBanco     = 'BANCO';
    cNFCe      = 'NFC-e';
    cPreVenda  = 'prevenda';
    cSerieNFCe = 'serieNFCe';
  private
    FImpressoraCarne: string;

    function GetAguardar: string;
    function GetTentativas: string;
    function GetTimeOut: string;
    function GetIntevalo: string;

    procedure SetAguardar(const Value: string);
    procedure SetTentativas(const Value: string);
    procedure SetTimeOut(const Value: string);
    procedure SetIntevalo(const Value: string);

    function GetSitefIP: string;
    function GetSitefLoja: string;
    function GetSitefParametro: string;
    function GetSitefPortaPinPad: string;
    function GetSitefTerminal: string;
    procedure SetSitefIP(const Value: string);
    procedure SetSitefLoja(const Value: string);
    procedure SetSitefParametro(const Value: string);
    procedure SetSitefPortaPinPad(const Value: string);
    procedure SetSitefTerminal(const Value: string);

    function GetTEF: Boolean;
    procedure SetTEF(const Value: Boolean);

    function GetDBBanco: string;
    function GetDBPorta: string;
    function GetDBSenha: string;
    function GetDBServer: string;
    function GetDBUsuario: string;
    procedure SetDBBanco(const Value: string);
    procedure SetDBPorta(const Value: string);
    procedure SetDBSenha(const Value: string);
    procedure SetDBServer(const Value: string);
    procedure SetDBUsuario(const Value: string);
    function GetImpressoraPadrao: string;
    function GetModeloImpressora: string;
    procedure SetImpressoraPadrao(const Value: string);
    procedure SetModeloImpressora(const Value: string);
    function GetNFCeMapeamentoxml: string;
    procedure SetNFCeMapeamentoxml(const Value: string);
    function GetPreVendaTipo: string;
    procedure SetPreVendaTipo(const Value: string);
    function GetNFCeVisualizaCupom: Boolean;
    procedure SetNFCeVisualizaCupom(const Value: Boolean);
    function GetNFCeSerie: string;
    procedure SetNFCeSerie(const Value: string);
    function GetNFCeImpressaoCom: string;
    procedure SetNFCeImpressaoCom(const Value: string);
    function GetTEFModelo: TACBrTEFDTipo;
    procedure SetTEFModelo(const Value: TACBrTEFDTipo);
    procedure SetImpressoraCarne(const Value: string);
    function GetImpressoraCarne: string;
  public

    function DiretorioAplicacao: string;

    property DBServer: string read GetDBServer write SetDBServer;
    property DBBanco: string read GetDBBanco write SetDBBanco;
    property DBPorta: string read GetDBPorta write SetDBPorta;
    property DBUsuario: string read GetDBUsuario write SetDBUsuario;
    property DBSenha: string read GetDBSenha write SetDBSenha;

    property TimeOut : string read GetTimeOut write SetTimeOut;
    property Aguardar : string read GetAguardar write SetAguardar;
    property Tentativas : string read GetTentativas write SetTentativas;
    property Intevalo : string read GetIntevalo write SetIntevalo;

    property ImpressoraPadrao: string read GetImpressoraPadrao write SetImpressoraPadrao;
    property ModeloImpressora: string read GetModeloImpressora write SetModeloImpressora;
    property ImpressoraCarne : string read GetImpressoraCarne write SetImpressoraCarne;
    property TEF: Boolean read GetTEF write SetTEF;
    property TEFModelo: TACBrTEFDTipo read GetTEFModelo write SetTEFModelo;

    property SitefIP: string read GetSitefIP write SetSitefIP;
    property SitefTerminal: string read GetSitefTerminal write SetSitefTerminal;
    property SitefLoja: string read GetSitefLoja write SetSitefLoja;
    property SitefParametro: string read GetSitefParametro write SetSitefParametro;
    property SitefPortaPinPad: string read GetSitefPortaPinPad write SetSitefPortaPinPad;

    property NFCeMapeamentoxml: string read GetNFCeMapeamentoxml write SetNFCeMapeamentoxml;
    property NFCeVisualizaCupom: Boolean read GetNFCeVisualizaCupom write SetNFCeVisualizaCupom;
    property NFCeImpressaoCom: string read GetNFCeImpressaoCom write SetNFCeImpressaoCom;

    property NFCeSerie: string read GetNFCeSerie write SetNFCeSerie;

    property PreVendaTipo: string read GetPreVendaTipo write SetPreVendaTipo;
  end;

var
  ConfigIni: TConfigFile;

implementation

  { TConfigFile }

function TConfigFile.DiretorioAplicacao: string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

function TConfigFile.GetAguardar: string;
begin
   Result := Self.ReadString(cCaixa, 'aguardarNFCe', '');
end;

function TConfigFile.GetDBBanco: string;
begin
  Result := Self.ReadString(cBanco, 'database', 'sgc');
end;

function TConfigFile.GetDBPorta: string;
begin
  Result := Self.ReadString(cBanco, 'porta', '3306');
end;

function TConfigFile.GetDBSenha: string;
begin
  Result := Self.ReadString(cBanco, 'senha', '');
end;

function TConfigFile.GetDBServer: string;
begin
  Result := Self.ReadString(cBanco, 'server', '');
end;

function TConfigFile.GetDBUsuario: string;
begin
  Result := Self.ReadString(cBanco, 'user', '');
end;

function TConfigFile.GetImpressoraPadrao: string;
begin
  Result := Self.ReadString(cCaixa, 'impressoraPadrao', '');
end;

function TConfigFile.GetIntevalo: string;
begin
  Result := Self.ReadString(cCaixa, 'intervaloNFCe', '');
end;

function TConfigFile.GetImpressoraCarne: string;
begin
  Result := Self.ReadString(cCaixa, 'impressoraCarne', '');
end;

{function TConfigFile.GetImpressoraPadrao: string;
begin
  Result := Self.ReadString(cCaixa, 'impressoraPadrao', '');
end; }

function TConfigFile.GetModeloImpressora: string;
begin
  Result := Self.ReadString(cCaixa, 'ModeloImpressora', '');
end;

function TConfigFile.GetNFCeImpressaoCom: string;
begin
  Result := Self.ReadString(cNFCe, 'ImpressaoCom', 'fortes');
end;

function TConfigFile.GetNFCeMapeamentoxml: string;
begin
  Result := Self.ReadString(cNFCe, 'mapeamentoxml', '');
end;

function TConfigFile.GetNFCeSerie: string;
begin
  Result := Self.ReadString(cSerieNFCe, 'serie', '');
end;

function TConfigFile.GetNFCeVisualizaCupom: Boolean;
begin
  Result := Self.ReadBool(cNFCe, 'visualizaCupom ', true);
end;

function TConfigFile.GetPreVendaTipo: string;
begin
  Result := Self.ReadString(cPreVenda, 'tipo', '');
end;

function TConfigFile.GetSitefIP: string;
begin
  Result := Self.ReadString(cTEF, 'SitefIP', '');
end;

function TConfigFile.GetSitefLoja: string;
begin
  Result := Self.ReadString(cTEF, 'SitefLoja', '');
end;

function TConfigFile.GetSitefParametro: string;
begin
  Result := Self.ReadString(cTEF, 'SitefParametro', '');
end;

function TConfigFile.GetSitefPortaPinPad: string;
begin
  Result := Self.ReadString(cTEF, 'SitefPortaPinPad', '');
end;

function TConfigFile.GetSitefTerminal: string;
begin
  Result := Self.ReadString(cTEF, 'SitefTerminal', '');
end;

function TConfigFile.GetTEF: Boolean;
begin
  Result := Self.ReadBool(cTEF, 'TEF', false);
end;

function TConfigFile.GetTEFModelo: TACBrTEFDTipo;
var
  LModelo: TEnum<TACBrTEFDTipo>;
begin
  LModelo.StrToEnum(Self.ReadString(cTEF, 'Modelo', 'gpNenhum'), Result);
end;

function TConfigFile.GetTentativas: string;
begin
 Result := Self.ReadString(cCaixa, 'tentativasNFCe', '');
end;

function TConfigFile.GetTimeOut: string;
begin
 Result := Self.ReadString(cCaixa, 'TimeOutNFCe', '');
end;

procedure TConfigFile.SetAguardar(const Value: string);
begin
  Self.WriteString(cCaixa, 'aguardarNFCe', Value);
end;

procedure TConfigFile.SetDBBanco(const Value: string);
begin
  Self.WriteString(cBanco, 'database', Value);
end;

procedure TConfigFile.SetDBPorta(const Value: string);
begin
  Self.WriteString(cBanco, 'porta', Value);
end;

procedure TConfigFile.SetDBSenha(const Value: string);
begin
  Self.WriteString(cBanco, 'senha', Value);
end;

procedure TConfigFile.SetDBServer(const Value: string);
begin
  Self.WriteString(cBanco, 'server', Value);
end;

procedure TConfigFile.SetDBUsuario(const Value: string);
begin
  Self.WriteString(cBanco, 'user', Value);
end;

procedure TConfigFile.SetImpressoraCarne(const Value: string);
begin
  Self.WriteString(cCaixa, 'impressoraCarne', Value);
end;

procedure TConfigFile.SetImpressoraPadrao(const Value: string);
begin
  Self.WriteString(cCaixa, 'impressoraPadrao', Value);
end;

procedure TConfigFile.SetIntevalo(const Value: string);
begin
  Self.WriteString(cCaixa, 'intervaloNFCe', Value);
end;

procedure TConfigFile.SetModeloImpressora(const Value: string);
begin
  Self.WriteString(cCaixa, 'ModeloImpressora', Value);
end;

procedure TConfigFile.SetNFCeImpressaoCom(const Value: string);
begin
  Self.WriteString(cNFCe, 'ImpressaoCom', Value);
end;

procedure TConfigFile.SetNFCeMapeamentoxml(const Value: string);
begin
  Self.WriteString(cNFCe, 'mapeamentoxml', Value);
end;

procedure TConfigFile.SetNFCeSerie(const Value: string);
begin
  Self.WriteString(cSerieNFCe, 'serie', Value);
end;

procedure TConfigFile.SetNFCeVisualizaCupom(const Value: Boolean);
begin
  Self.WriteBool(cNFCe, 'visualizaCupom ', Value);
end;

procedure TConfigFile.SetPreVendaTipo(const Value: string);
begin
  Self.WriteString(cPreVenda, 'tipo', Value);
end;

procedure TConfigFile.SetSitefIP(const Value: string);
begin
  Self.WriteString(cTEF, 'SitefIP', Value);
end;

procedure TConfigFile.SetSitefLoja(const Value: string);
begin
  Self.WriteString(cTEF, 'SitefLoja', Value);
end;

procedure TConfigFile.SetSitefParametro(const Value: string);
begin
  Self.WriteString(cTEF, 'SitefParametro', Value);
end;

procedure TConfigFile.SetSitefPortaPinPad(const Value: string);
begin
  Self.WriteString(cTEF, 'SitefPortaPinPad', Value);
end;

procedure TConfigFile.SetSitefTerminal(const Value: string);
begin
  Self.WriteString(cTEF, 'SitefTerminal', Value);
end;

procedure TConfigFile.SetTEF(const Value: Boolean);
begin
  Self.WriteBool(cTEF, 'TEF', Value);
end;

procedure TConfigFile.SetTEFModelo(const Value: TACBrTEFDTipo);
var
  LModelo: TEnum<TACBrTEFDTipo>;
begin
  Self.WriteString(cTEF, 'Modelo', LModelo.EnumToStr(Value));
end;

procedure TConfigFile.SetTentativas(const Value: string);
begin
  Self.WriteString(cCaixa, 'tentativasNFCe', Value);
end;

procedure TConfigFile.SetTimeOut(const Value: string);
begin
  Self.WriteString(cCaixa, 'TimeOutNFCe', Value);
end;

initialization

ConfigIni := TConfigFile.Create(ExtractFilePath(ParamStr(0)) + 'Conf.ini');

finalization

ConfigIni.Free;

end.
