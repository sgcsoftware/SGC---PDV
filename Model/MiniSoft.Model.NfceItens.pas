unit MiniSoft.Model.NfceItens;

interface
uses  Firedac.Comp.Client, Winapi.Windows, Winapi.WinInet, vcl.dialogs, Vcl.Forms,
  Conexao, System.SysUtils, uDWConstsData, uRESTDWPoolerDB;
   type
   TNfceItensModel = class
     private
    FNFC_ICMS_PREDBC: Integer;
    FNFC_COFINS_VCOFINS: Double;
    FNFC_ICMS_MODBCST: Integer;
    FNFC_PROD_CEAN: String;
    FNFC_ICMS_CST: String;
    FNFC__IMCS_ORIG: Integer;
    FNFC_IPI_VBC: Double;
    FNFC_ICMS_VBCST: Double;
    FNFC_ICMS_PICMS: Integer;
    FNFC_PROD_CPROD: Integer;
    FNFC_ICMS_VICMS: Double;
    FNFC_PROD_CEST: String;
    FNFC_PROD_QCOM: Double;
    FNFC_ICMS_MODBC: Integer;
    FNFC_CODIGO_NFCE: Integer;
    FNFC_PROD_VUNCOM: Double;
    FNFC_BENEFICIARIO: String;
    FNFC_PIS_CST: Integer;
    FNFC_IPI_CENQ: String;
    FNFC_COFINS_CST: Integer;
    FNFC_PROD_UCOM: String;
    FNFC_PROD_CFOP: String;
    FNFC_ICMS_VBC: Integer;
    FNFC_PROD_NCM: String;
    FNFC_IPI_PIPI: Double;
    FNFC_PROD_XPROD: String;
    FNFC_RANDOMICO: String;
    FNFC_IPI_VIPI: Double;
    FNFC_PROD_VOUTRO: Double;
    FNFC_CODIGO: Integer;
    FNFC_ICMS_VIMSST: Double;
    FNFC_IPI_CST: Integer;
    FNFC_PROD_VUNTRIB: Double;
    FNFC_PROD_UTRIB: String;
    FNFC_PIS_VBC: Double;
    FNFC_PROD_VPROD: Double;
    FNFC_COFINS_VBC: Double;
    FNFC_ICMS_PICMSST: Double;
    FNFC_PIS_PPIS: Double;
    FNFC_PROD_CSOSN: String;
    FNFC_COFINS_PCOFINS: Double;
    FNFC_PIS_VPIS: Double;
    FNFC_PROD_CEANTRIB: String;
    FNFC_CUSTOPRODUTO: Double;
    FNFC_ORD: String;
    FNFC_RANDOMICOPRODUTO: String;
    procedure SetNFC__IMCS_ORIG(const Value: Integer);
    procedure SetNFC_BENEFICIARIO(const Value: String);
    procedure SetNFC_CODIGO(const Value: Integer);
    procedure SetNFC_CODIGO_NFCE(const Value: Integer);
    procedure SetNFC_COFINS_CST(const Value: Integer);
    procedure SetNFC_COFINS_PCOFINS(const Value: Double);
    procedure SetNFC_COFINS_VBC(const Value: Double);
    procedure SetNFC_COFINS_VCOFINS(const Value: Double);
    procedure SetNFC_ICMS_CST(const Value: String);
    procedure SetNFC_ICMS_MODBC(const Value: Integer);
    procedure SetNFC_ICMS_MODBCST(const Value: Integer);
    procedure SetNFC_ICMS_PICMS(const Value: Integer);
    procedure SetNFC_ICMS_PICMSST(const Value: Double);
    procedure SetNFC_ICMS_PREDBC(const Value: Integer);
    procedure SetNFC_ICMS_VBC(const Value: Integer);
    procedure SetNFC_ICMS_VBCST(const Value: Double);
    procedure SetNFC_ICMS_VICMS(const Value: Double);
    procedure SetNFC_ICMS_VIMSST(const Value: Double);
    procedure SetNFC_IPI_CENQ(const Value: String);
    procedure SetNFC_IPI_CST(const Value: Integer);
    procedure SetNFC_IPI_PIPI(const Value: Double);
    procedure SetNFC_IPI_VBC(const Value: Double);
    procedure SetNFC_IPI_VIPI(const Value: Double);
    procedure SetNFC_PIS_CST(const Value: Integer);
    procedure SetNFC_PIS_PPIS(const Value: Double);
    procedure SetNFC_PIS_VBC(const Value: Double);
    procedure SetNFC_PIS_VPIS(const Value: Double);
    procedure SetNFC_PROD_CEAN(const Value: String);
    procedure SetNFC_PROD_CEANTRIB(const Value: String);
    procedure SetNFC_PROD_CEST(const Value: String);
    procedure SetNFC_PROD_CFOP(const Value: String);
    procedure SetNFC_PROD_CPROD(const Value: Integer);
    procedure SetNFC_PROD_CSOSN(const Value: String);
    procedure SetNFC_PROD_NCM(const Value: String);
    procedure SetNFC_PROD_QCOM(const Value: Double);
    procedure SetNFC_PROD_UCOM(const Value: String);
    procedure SetNFC_PROD_UTRIB(const Value: String);
    procedure SetNFC_PROD_VOUTRO(const Value: Double);
    procedure SetNFC_PROD_VPROD(const Value: Double);
    procedure SetNFC_PROD_VUNCOM(const Value: Double);
    procedure SetNFC_PROD_VUNTRIB(const Value: Double);
    procedure SetNFC_PROD_XPROD(const Value: String);
    procedure SetNFC_RANDOMICO(const Value: String);
    procedure SetNFC_CUSTOPRODUTO(const Value: Double);
    procedure SetNFC_ORD(const Value: String);
    procedure SetNFC_RANDOMICOPRODUTO(const Value: String);
     public
          property NFC_CODIGO          : Integer read FNFC_CODIGO write SetNFC_CODIGO;
     property NFC_PROD_CPROD      : Integer read FNFC_PROD_CPROD write SetNFC_PROD_CPROD;
     property NFC_PROD_CEAN       : String read FNFC_PROD_CEAN write SetNFC_PROD_CEAN;
     property NFC_PROD_XPROD      : String read FNFC_PROD_XPROD write SetNFC_PROD_XPROD;
     property NFC_PROD_NCM        : String read FNFC_PROD_NCM write SetNFC_PROD_NCM;
     property NFC_PROD_CEST       : String read FNFC_PROD_CEST write SetNFC_PROD_CEST;
     property NFC_PROD_CFOP       : String read FNFC_PROD_CFOP write SetNFC_PROD_CFOP;
     property NFC_PROD_UCOM       : String read FNFC_PROD_UCOM write SetNFC_PROD_UCOM;
     property NFC_PROD_QCOM       : Double read FNFC_PROD_QCOM write SetNFC_PROD_QCOM;
     property NFC_PROD_VUNCOM     : Double read FNFC_PROD_VUNCOM write SetNFC_PROD_VUNCOM;
     property NFC_PROD_VPROD      : Double read FNFC_PROD_VPROD write SetNFC_PROD_VPROD;
     property NFC_PROD_CEANTRIB   : String read FNFC_PROD_CEANTRIB write SetNFC_PROD_CEANTRIB;
     property NFC_PROD_UTRIB      : String read FNFC_PROD_UTRIB write SetNFC_PROD_UTRIB;
     property NFC_PROD_VUNTRIB    : Double read FNFC_PROD_VUNTRIB write SetNFC_PROD_VUNTRIB;
     property NFC_PROD_VOUTRO     : Double read FNFC_PROD_VOUTRO write SetNFC_PROD_VOUTRO;
     property NFC__IMCS_ORIG      : Integer read FNFC__IMCS_ORIG write SetNFC__IMCS_ORIG;
     property NFC_ICMS_MODBC      : Integer read FNFC_ICMS_MODBC write SetNFC_ICMS_MODBC;
     property NFC_ICMS_CST        : String read FNFC_ICMS_CST write SetNFC_ICMS_CST;
     property NFC_ICMS_PREDBC     : Integer read FNFC_ICMS_PREDBC write SetNFC_ICMS_PREDBC;
     property NFC_ICMS_VBC        : Integer read FNFC_ICMS_VBC write SetNFC_ICMS_VBC;
     property NFC_ICMS_PICMS      : Integer read FNFC_ICMS_PICMS write SetNFC_ICMS_PICMS;
     property NFC_ICMS_VICMS      : Double read FNFC_ICMS_VICMS write SetNFC_ICMS_VICMS;
     property NFC_ICMS_MODBCST    : Integer read FNFC_ICMS_MODBCST write SetNFC_ICMS_MODBCST;
     property NFC_ICMS_VBCST      : Double read FNFC_ICMS_VBCST write SetNFC_ICMS_VBCST;
     property NFC_ICMS_PICMSST    : Double read FNFC_ICMS_PICMSST write SetNFC_ICMS_PICMSST;
     property NFC_ICMS_VIMSST     : Double read FNFC_ICMS_VIMSST write SetNFC_ICMS_VIMSST;
     property NFC_IPI_CENQ        : String read FNFC_IPI_CENQ write SetNFC_IPI_CENQ;
     property NFC_IPI_CST         : Integer read FNFC_IPI_CST write SetNFC_IPI_CST;
     property NFC_IPI_VBC         : Double read FNFC_IPI_VBC write SetNFC_IPI_VBC;
     property NFC_IPI_PIPI        : Double read FNFC_IPI_PIPI write SetNFC_IPI_PIPI;
     property NFC_IPI_VIPI        : Double read FNFC_IPI_VIPI write SetNFC_IPI_VIPI;
     property NFC_PIS_CST         : Integer read FNFC_PIS_CST write SetNFC_PIS_CST;
     property NFC_PIS_VBC         : Double read FNFC_PIS_VBC write SetNFC_PIS_VBC;
     property NFC_PIS_PPIS        : Double read FNFC_PIS_PPIS write SetNFC_PIS_PPIS;
     property NFC_PIS_VPIS        : Double read FNFC_PIS_VPIS write SetNFC_PIS_VPIS;
     property NFC_COFINS_CST      : Integer read FNFC_COFINS_CST write SetNFC_COFINS_CST;
     property NFC_COFINS_VBC      : Double read FNFC_COFINS_VBC write SetNFC_COFINS_VBC;
     property NFC_COFINS_PCOFINS  : Double read FNFC_COFINS_PCOFINS write SetNFC_COFINS_PCOFINS;
     property NFC_COFINS_VCOFINS  : Double read FNFC_COFINS_VCOFINS write SetNFC_COFINS_VCOFINS;
     property NFC_BENEFICIARIO    : String read FNFC_BENEFICIARIO write SetNFC_BENEFICIARIO;
     property NFC_CODIGO_NFCE     : Integer read FNFC_CODIGO_NFCE write SetNFC_CODIGO_NFCE;
     property NFC_RANDOMICO       : String read FNFC_RANDOMICO write SetNFC_RANDOMICO;
     property NFC_PROD_CSOSN      : String read FNFC_PROD_CSOSN write SetNFC_PROD_CSOSN;
     property NFC_CUSTOPRODUTO : Double read FNFC_CUSTOPRODUTO write SetNFC_CUSTOPRODUTO;
     property NFC_ORD : String read FNFC_ORD write SetNFC_ORD;
     property NFC_RANDOMICOPRODUTO : String read FNFC_RANDOMICOPRODUTO write SetNFC_RANDOMICOPRODUTO;
     constructor create;
     destructor destroy; override;
     procedure Insert(ObjNfceItens : TNfceItensModel);
     procedure Update(ObjNfceItens : TNfceItensModel);
     procedure Delete(ObjNfceItens : TNfceItensModel; Codigo : Integer);
     procedure Read  (ObjNfceItens : TNfceItensModel ; Codigo : Integer);
   end;
implementation

{ TNfceItensModel }

constructor TNfceItensModel.create;
begin

end;

procedure TNfceItensModel.Delete(ObjNfceItens : TNfceItensModel; Codigo : Integer);
var
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1 do
    begin
      close;
      sql.Add('delete from TB_NFCEITENS where nfc_codigo=:nfc_codigo');
      ParamByName('nfc_codigo').AsInteger := Codigo;
      ExecSQL;
    end;
  finally
    FreeandNil(q1);
  end;
end;

destructor TNfceItensModel.destroy;
begin

  inherited;
end;

procedure TNfceItensModel.Insert(ObjNfceItens: TNfceItensModel);
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
     sql.Text := 'insert into TB_NFCEITENS'
          +'(NFC_CODIGO'
     +',NFC_PROD_CPROD'
     +',NFC_PROD_CEAN'
     +',NFC_PROD_XPROD'
     +',NFC_PROD_NCM'
     +',NFC_PROD_CEST'
     +',NFC_PROD_CFOP'
     +',NFC_PROD_UCOM'
     +',NFC_PROD_QCOM'
     +',NFC_PROD_VUNCOM'
     +',NFC_PROD_VPROD'
     +',NFC_PROD_CEANTRIB'
     +',NFC_PROD_UTRIB'
     +',NFC_PROD_VUNTRIB'
     +',NFC_PROD_VOUTRO'
     +',NFC__IMCS_ORIG'
     +',NFC_ICMS_MODBC'
     +',NFC_ICMS_CST'
     +',NFC_ICMS_PREDBC'
     +',NFC_ICMS_VBC'
     +',NFC_ICMS_PICMS'
     +',NFC_ICMS_VICMS'
     +',NFC_ICMS_MODBCST'
     +',NFC_ICMS_VBCST'
     +',NFC_ICMS_PICMSST'
     +',NFC_ICMS_VIMSST'
     +',NFC_IPI_CENQ'
     +',NFC_IPI_CST'
     +',NFC_IPI_VBC'
     +',NFC_IPI_PIPI'
     +',NFC_IPI_VIPI'
     +',NFC_PIS_CST'
     +',NFC_PIS_VBC'
     +',NFC_PIS_PPIS'
     +',NFC_PIS_VPIS'
     +',NFC_COFINS_CST'
     +',NFC_COFINS_VBC'
     +',NFC_COFINS_PCOFINS'
     +',NFC_COFINS_VCOFINS'
     +',NFC_BENEFICIARIO'
     +',NFC_CODIGO_NFCE'
     +',NFC_RANDOMICO'
     +',NFC_PROD_CSOSN'
     +',NFC_CUSTOPRODUTO'
     +',NFC_ORD'
     +',NFC_RANDOMICOPRODUTO)'
     +'values(:NFC_CODIGO'
     +',:NFC_PROD_CPROD'
     +',:NFC_PROD_CEAN'
     +',:NFC_PROD_XPROD'
     +',:NFC_PROD_NCM'
     +',:NFC_PROD_CEST'
     +',:NFC_PROD_CFOP'
     +',:NFC_PROD_UCOM'
     +',:NFC_PROD_QCOM'
     +',:NFC_PROD_VUNCOM'
     +',:NFC_PROD_VPROD'
     +',:NFC_PROD_CEANTRIB'
     +',:NFC_PROD_UTRIB'
     +',:NFC_PROD_VUNTRIB'
     +',:NFC_PROD_VOUTRO'
     +',:NFC__IMCS_ORIG'
     +',:NFC_ICMS_MODBC'
     +',:NFC_ICMS_CST'
     +',:NFC_ICMS_PREDBC'
     +',:NFC_ICMS_VBC'
     +',:NFC_ICMS_PICMS'
     +',:NFC_ICMS_VICMS'
     +',:NFC_ICMS_MODBCST'
     +',:NFC_ICMS_VBCST'
     +',:NFC_ICMS_PICMSST'
     +',:NFC_ICMS_VIMSST'
     +',:NFC_IPI_CENQ'
     +',:NFC_IPI_CST'
     +',:NFC_IPI_VBC'
     +',:NFC_IPI_PIPI'
     +',:NFC_IPI_VIPI'
     +',:NFC_PIS_CST'
     +',:NFC_PIS_VBC'
     +',:NFC_PIS_PPIS'
     +',:NFC_PIS_VPIS'
     +',:NFC_COFINS_CST'
     +',:NFC_COFINS_VBC'
     +',:NFC_COFINS_PCOFINS'
     +',:NFC_COFINS_VCOFINS'
     +',:NFC_BENEFICIARIO'
     +',:NFC_CODIGO_NFCE'
     +',:NFC_RANDOMICO'
     +',:NFC_PROD_CSOSN'
     +',:NFC_CUSTOPRODUTO'
     +',:NFC_ORD'
     +',:NFC_RANDOMICOPRODUTO)';
     ParamByName('NFC_CODIGO').AsInteger:=NFC_CODIGO;
     ParamByName('NFC_PROD_CPROD').AsInteger:=NFC_PROD_CPROD;
     ParamByName('NFC_PROD_CEAN').AsString:=NFC_PROD_CEAN;
     ParamByName('NFC_PROD_XPROD').AsString:=NFC_PROD_XPROD;
     ParamByName('NFC_PROD_NCM').AsString:=NFC_PROD_NCM;
     ParamByName('NFC_PROD_CEST').AsString:=NFC_PROD_CEST;
     ParamByName('NFC_PROD_CFOP').AsString:=NFC_PROD_CFOP;
     ParamByName('NFC_PROD_UCOM').AsString:=NFC_PROD_UCOM;
     ParamByName('NFC_PROD_QCOM').AsFloat:=NFC_PROD_QCOM;
     ParamByName('NFC_PROD_VUNCOM').AsFloat:=NFC_PROD_VUNCOM;
     ParamByName('NFC_PROD_VPROD').AsFloat:=NFC_PROD_VPROD;
     ParamByName('NFC_PROD_CEANTRIB').AsString:=NFC_PROD_CEANTRIB;
     ParamByName('NFC_PROD_UTRIB').AsString:=NFC_PROD_UTRIB;
     ParamByName('NFC_PROD_VUNTRIB').AsFloat:=NFC_PROD_VUNTRIB;
     ParamByName('NFC_PROD_VOUTRO').AsFloat:=NFC_PROD_VOUTRO;
     ParamByName('NFC__IMCS_ORIG').AsFloat:=NFC__IMCS_ORIG;
     ParamByName('NFC_ICMS_MODBC').AsFloat:=NFC_ICMS_MODBC;
     ParamByName('NFC_ICMS_CST').AsString:=NFC_ICMS_CST;
     ParamByName('NFC_ICMS_PREDBC').AsInteger:=NFC_ICMS_PREDBC;
     ParamByName('NFC_ICMS_VBC').AsFloat:=NFC_ICMS_VBC;
     ParamByName('NFC_ICMS_PICMS').AsFloat:=NFC_ICMS_PICMS;
     ParamByName('NFC_ICMS_VICMS').AsFloat:=NFC_ICMS_VICMS;
     ParamByName('NFC_ICMS_MODBCST').AsInteger:=NFC_ICMS_MODBCST;
     ParamByName('NFC_ICMS_VBCST').AsFloat:=NFC_ICMS_VBCST;
     ParamByName('NFC_ICMS_PICMSST').AsFloat:=NFC_ICMS_PICMSST;
     ParamByName('NFC_ICMS_VIMSST').AsFloat:=NFC_ICMS_VIMSST;
     ParamByName('NFC_IPI_CENQ').AsString:=NFC_IPI_CENQ;
     ParamByName('NFC_IPI_CST').AsFloat:=NFC_IPI_CST;
     ParamByName('NFC_IPI_VBC').AsFloat:=NFC_IPI_VBC;
     ParamByName('NFC_IPI_PIPI').AsFloat:=NFC_IPI_PIPI;
     ParamByName('NFC_IPI_VIPI').AsFloat:=NFC_IPI_VIPI;
     ParamByName('NFC_PIS_CST').AsInteger:=NFC_PIS_CST;
     ParamByName('NFC_PIS_VBC').AsFloat:=NFC_PIS_VBC;
     ParamByName('NFC_PIS_PPIS').AsFloat:=NFC_PIS_PPIS;
     ParamByName('NFC_PIS_VPIS').AsFloat:=NFC_PIS_VPIS;
     ParamByName('NFC_COFINS_CST').AsFloat:=NFC_COFINS_CST;
     ParamByName('NFC_COFINS_VBC').AsFloat:=NFC_COFINS_VBC;
     ParamByName('NFC_COFINS_PCOFINS').AsFloat:=NFC_COFINS_PCOFINS;
     ParamByName('NFC_COFINS_VCOFINS').AsFloat:=NFC_COFINS_VCOFINS;
     ParamByName('NFC_BENEFICIARIO').AsString:=NFC_BENEFICIARIO;
     ParamByName('NFC_CODIGO_NFCE').Asinteger:=NFC_CODIGO_NFCE;
     ParamByName('NFC_RANDOMICO').AsString:=NFC_RANDOMICO;
     ParamByName('NFC_PROD_CSOSN').AsString:=NFC_PROD_CSOSN;
     ParamByName('NFC_CUSTOPRODUTO').AsFloat:=NFC_CUSTOPRODUTO;
     ParamByName('NFC_ORD').AsString:=NFC_ORD;
     ParamByName('NFC_RANDOMICOPRODUTO').AsString:=NFC_RANDOMICOPRODUTO;
     try
       ExecSQL;

     finally

     end;
   end;
  finally
    FreeandNil(q1);
  end;
end;

procedure TNfceItensModel.Read(ObjNfceItens: TNfceItensModel; Codigo: Integer);
var
q1 : TFdquery;
begin
  q1 := TFdquery.Create(nil);

  try

  finally
    FreeandNil(q1);
  end;
end;

procedure TNfceItensModel.SetNFC_BENEFICIARIO(const Value: String);
begin
  FNFC_BENEFICIARIO := Value;
end;

procedure TNfceItensModel.SetNFC_CODIGO(const Value: Integer);
begin
  FNFC_CODIGO := Value;
end;

procedure TNfceItensModel.SetNFC_CODIGO_NFCE(const Value: Integer);
begin
  FNFC_CODIGO_NFCE := Value;
end;

procedure TNfceItensModel.SetNFC_COFINS_CST(const Value: Integer);
begin
  FNFC_COFINS_CST := Value;
end;

procedure TNfceItensModel.SetNFC_COFINS_PCOFINS(const Value: Double);
begin
  FNFC_COFINS_PCOFINS := Value;
end;

procedure TNfceItensModel.SetNFC_COFINS_VBC(const Value: Double);
begin
  FNFC_COFINS_VBC := Value;
end;

procedure TNfceItensModel.SetNFC_COFINS_VCOFINS(const Value: Double);
begin
  FNFC_COFINS_VCOFINS := Value;
end;

procedure TNfceItensModel.SetNFC_CUSTOPRODUTO(const Value: Double);
begin
  FNFC_CUSTOPRODUTO := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_CST(const Value: String);
begin
  FNFC_ICMS_CST := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_MODBC(const Value: Integer);
begin
  FNFC_ICMS_MODBC := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_MODBCST(const Value: Integer);
begin
  FNFC_ICMS_MODBCST := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_PICMS(const Value: Integer);
begin
  FNFC_ICMS_PICMS := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_PICMSST(const Value: Double);
begin
  FNFC_ICMS_PICMSST := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_PREDBC(const Value: Integer);
begin
  FNFC_ICMS_PREDBC := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_VBC(const Value: Integer);
begin
  FNFC_ICMS_VBC := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_VBCST(const Value: Double);
begin
  FNFC_ICMS_VBCST := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_VICMS(const Value: Double);
begin
  FNFC_ICMS_VICMS := Value;
end;

procedure TNfceItensModel.SetNFC_ICMS_VIMSST(const Value: Double);
begin
  FNFC_ICMS_VIMSST := Value;
end;

procedure TNfceItensModel.SetNFC_IPI_CENQ(const Value: String);
begin
  FNFC_IPI_CENQ := Value;
end;

procedure TNfceItensModel.SetNFC_IPI_CST(const Value: Integer);
begin
  FNFC_IPI_CST := Value;
end;

procedure TNfceItensModel.SetNFC_IPI_PIPI(const Value: Double);
begin
  FNFC_IPI_PIPI := Value;
end;

procedure TNfceItensModel.SetNFC_IPI_VBC(const Value: Double);
begin
  FNFC_IPI_VBC := Value;
end;

procedure TNfceItensModel.SetNFC_IPI_VIPI(const Value: Double);
begin
  FNFC_IPI_VIPI := Value;
end;

procedure TNfceItensModel.SetNFC_ORD(const Value: String);
begin
  FNFC_ORD := Value;
end;

procedure TNfceItensModel.SetNFC_PIS_CST(const Value: Integer);
begin
  FNFC_PIS_CST := Value;
end;

procedure TNfceItensModel.SetNFC_PIS_PPIS(const Value: Double);
begin
  FNFC_PIS_PPIS := Value;
end;

procedure TNfceItensModel.SetNFC_PIS_VBC(const Value: Double);
begin
  FNFC_PIS_VBC := Value;
end;

procedure TNfceItensModel.SetNFC_PIS_VPIS(const Value: Double);
begin
  FNFC_PIS_VPIS := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_CEAN(const Value: String);
begin
  FNFC_PROD_CEAN := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_CEANTRIB(const Value: String);
begin
  FNFC_PROD_CEANTRIB := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_CEST(const Value: String);
begin
  FNFC_PROD_CEST := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_CFOP(const Value: String);
begin
  FNFC_PROD_CFOP := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_CPROD(const Value: Integer);
begin
  FNFC_PROD_CPROD := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_CSOSN(const Value: String);
begin
  FNFC_PROD_CSOSN := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_NCM(const Value: String);
begin
  FNFC_PROD_NCM := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_QCOM(const Value: Double);
begin
  FNFC_PROD_QCOM := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_UCOM(const Value: String);
begin
  FNFC_PROD_UCOM := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_UTRIB(const Value: String);
begin
  FNFC_PROD_UTRIB := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_VOUTRO(const Value: Double);
begin
  FNFC_PROD_VOUTRO := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_VPROD(const Value: Double);
begin
  FNFC_PROD_VPROD := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_VUNCOM(const Value: Double);
begin
  FNFC_PROD_VUNCOM := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_VUNTRIB(const Value: Double);
begin
  FNFC_PROD_VUNTRIB := Value;
end;

procedure TNfceItensModel.SetNFC_PROD_XPROD(const Value: String);
begin
  FNFC_PROD_XPROD := Value;
end;

procedure TNfceItensModel.SetNFC_RANDOMICO(const Value: String);
begin
  FNFC_RANDOMICO := Value;
end;

procedure TNfceItensModel.SetNFC_RANDOMICOPRODUTO(const Value: String);
begin
  FNFC_RANDOMICOPRODUTO := Value;
end;

procedure TNfceItensModel.SetNFC__IMCS_ORIG(const Value: Integer);
begin
  FNFC__IMCS_ORIG := Value;
end;

procedure TNfceItensModel.Update(ObjNfceItens: TNfceItensModel);
var
q1 : TFdquery;
begin
  q1 := TFdquery.Create(nil);
  //q1.Connection := dm.Con;
  try

  finally
    FreeandNil(q1);
  end;
end;

end.
