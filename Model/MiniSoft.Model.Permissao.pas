unit MiniSoft.Model.Permissao;


interface
      uses Firedac.Comp.Client, Conexao, System.SysUtils, uDWConstsData, uRESTDWPoolerDB;
     type
     TPermissaoModel = Class
       private
    FNOME_NIVEL: String;
    FNFE_IMPRIMEFILTRO: String;
    FNFE_CANCELA: String;
    FNFE_PESQUISA: String;
    FUUID: String;
    FCODIGO: Integer;
    FNFE_EMITE: String;
    FNFE_INUTILIZA: String;
    FNFE_EXPORTAFILTRO: String;
    FNFE_EDITA: String;
    FNFE_EXCLUI: String;
    FNFE_NOVA: String;
    FHABILITANFE: String;
    FPER_BENEFICIARIO: String;
    FPER_ADMINISTRADOR: String;
    FPER_HABILITACOMPRA: String;
    FPER_COMPRA_IMPRIMEFILTRO: String;
    FPER_COMPRA_EXPORTAFILTRO: String;
    FPER_COMPRA_EDITA: String;
    FPER_COMPRA_EXCLUI: String;
    FPER_COMPRA_NOVA: String;
    FCodigoUser: Integer;
    FLogin: String;
    FPER_PREVENDA_CANCELA: String;
    FPER_PREVENDA_EXPORTAFILTRO: String;
    FPER_PREVENDA_EDITA: String;
    FPER_PREVENDA_EXCLUI: String;
    FPER_PREVENDA_NOVA: String;
    FPER_PREVENDA_FATURA: String;
    FPER_PREVENDA_IMPRIMEFILTRO: String;
    FPER_HABILITAPREVENDA: String;
    FmsgUser: String;
    FPER_CONF_PERMISSOES: String;
    FPER_CONF_SENTINELA: String;
    FPER_CONF_OUTROSCADASTRO: String;
    FPER_HABILITACONFIGURACOES: String;
    FPER_CONF_EMITENTE: String;
    FPER_CONF_OUTRASLISTAGEM: String;
    FPER_CR_EXPORTAFILTRO: String;
    FPER_CR_EDITA: String;
    FPER_CR_NOVO: String;
    FPER_CR_EXCLUI: String;
    FPER_HABILITACR: String;
    FPER_CR_RECEBE: String;
    FPER_CR_IMPRIMEFILTRO: String;
    FPER_HABILITACAIXA: String;
    FPER_CAIXA_BUSCAGERAL: String;
    FPER_CAIXA_IMPRIMEFILTRO: String;
    FPER_CAIXA_EXCLUIR: String;
    FPER_CAIXA_EXPORTAFILTRO: String;
    FPER_CAIXA_EDITA: String;
    FPER_CAIXA_NOVO: String;
    FPER_CP_EXPORTAFILTRO: String;
    FPER_CP_EDITA: String;
    FPER_CP_NOVO: String;
    FPER_CP_DESFAZPAGAMENTO: String;
    FPER_CP_EXCLUI: String;
    FPER_CP_FAZPAGAMENTO: String;
    FPER_CP_IMPRIMEFILTRO: String;
    FPER_HABILITACONTASAPAGAR: String;
    procedure SetCODIGO(const Value: Integer);
    procedure SetHABILITANFE(const Value: String);
    procedure SetNFE_CANCELA(const Value: String);
    procedure SetNFE_EDITA(const Value: String);
    procedure SetNFE_EMITE(const Value: String);
    procedure SetNFE_EXCLUI(const Value: String);
    procedure SetNFE_EXPORTAFILTRO(const Value: String);
    procedure SetNFE_IMPRIMEFILTRO(const Value: String);
    procedure SetNFE_INUTILIZA(const Value: String);
    procedure SetNFE_NOVA(const Value: String);
    procedure SetNFE_PESQUISA(const Value: String);
    procedure SetNOME_NIVEL(const Value: String);
    procedure SetUUID(const Value: String);
    procedure SetPER_BENEFICIARIO(const Value: String);
    procedure SetPER_ADMINISTRADOR(const Value: String);
    procedure SetPER_COMPRA_EDITA(const Value: String);
    procedure SetPER_COMPRA_EXCLUI(const Value: String);
    procedure SetPER_COMPRA_EXPORTAFILTRO(const Value: String);
    procedure SetPER_COMPRA_IMPRIMEFILTRO(const Value: String);
    procedure SetPER_COMPRA_NOVA(const Value: String);
    procedure SetPER_HABILITACOMPRA(const Value: String);
    procedure SetCodigoUser(const Value: Integer);
    procedure SetLogin(const Value: String);
    procedure SetPER_PREVENDA_CANCELA(const Value: String);
    procedure SetPER_PREVENDA_EDITA(const Value: String);
    procedure SetPER_PREVENDA_EXCLUI(const Value: String);
    procedure SetPER_PREVENDA_EXPORTAFILTRO(const Value: String);
    procedure SetPER_PREVENDA_FATURA(const Value: String);
    procedure SetPER_PREVENDA_IMPRIMEFILTRO(const Value: String);
    procedure SetPER_PREVENDA_NOVA(const Value: String);
    procedure SetPER_HABILITAPREVENDA(const Value: String);
    procedure SetmsgUser(const Value: String);
    procedure SetPER_CONF_EMITENTE(const Value: String);
    procedure SetPER_CONF_OUTRASLISTAGEM(const Value: String);
    procedure SetPER_CONF_OUTROSCADASTRO(const Value: String);
    procedure SetPER_CONF_PERMISSOES(const Value: String);
    procedure SetPER_CONF_SENTINELA(const Value: String);
    procedure SetPER_HABILITACONFIGURACOES(const Value: String);
    procedure SetPER_CR_EDITA(const Value: String);
    procedure SetPER_CR_EXCLUI(const Value: String);
    procedure SetPER_CR_EXPORTAFILTRO(const Value: String);
    procedure SetPER_CR_IMPRIMEFILTRO(const Value: String);
    procedure SetPER_CR_NOVO(const Value: String);
    procedure SetPER_CR_RECEBE(const Value: String);
    procedure SetPER_HABILITACR(const Value: String);
    procedure SetPER_CAIXA_BUSCAGERAL(const Value: String);
    procedure SetPER_CAIXA_EDITA(const Value: String);
    procedure SetPER_CAIXA_EXCLUIR(const Value: String);
    procedure SetPER_CAIXA_EXPORTAFILTRO(const Value: String);
    procedure SetPER_CAIXA_IMPRIMEFILTRO(const Value: String);
    procedure SetPER_CAIXA_NOVO(const Value: String);
    procedure SetPER_HABILITACAIXA(const Value: String);
    procedure SetPER_CP_DESFAZPAGAMENTO(const Value: String);
    procedure SetPER_CP_EDITA(const Value: String);
    procedure SetPER_CP_EXCLUI(const Value: String);
    procedure SetPER_CP_EXPORTAFILTRO(const Value: String);
    procedure SetPER_CP_FAZPAGAMENTO(const Value: String);
    procedure SetPER_CP_IMPRIMEFILTRO(const Value: String);
    procedure SetPER_CP_NOVO(const Value: String);
    procedure SetPER_HABILITACONTASAPAGAR(const Value: String);
       public
       property CODIGO            : Integer read FCODIGO write SetCODIGO;
       property NOME_NIVEL        : String read FNOME_NIVEL write SetNOME_NIVEL;
       property UUID              : String read FUUID write SetUUID;
       property HABILITANFE       : String read FHABILITANFE write SetHABILITANFE;
       property NFE_NOVA          : String read FNFE_NOVA write SetNFE_NOVA;
       property NFE_EMITE         : String read FNFE_EMITE write SetNFE_EMITE;
       property NFE_EDITA         : String read FNFE_EDITA write SetNFE_EDITA;
       property NFE_EXCLUI        : String read FNFE_EXCLUI write SetNFE_EXCLUI;
       property NFE_CANCELA       : String read FNFE_CANCELA write SetNFE_CANCELA;
       property NFE_INUTILIZA     : String read FNFE_INUTILIZA write SetNFE_INUTILIZA;
       property NFE_EXPORTAFILTRO : String read FNFE_EXPORTAFILTRO write SetNFE_EXPORTAFILTRO;
       property NFE_IMPRIMEFILTRO : String read FNFE_IMPRIMEFILTRO write SetNFE_IMPRIMEFILTRO;
       property NFE_PESQUISA      : String read FNFE_PESQUISA write SetNFE_PESQUISA;
       property PER_BENEFICIARIO : String read FPER_BENEFICIARIO write SetPER_BENEFICIARIO;
       property PER_ADMINISTRADOR : String read FPER_ADMINISTRADOR write SetPER_ADMINISTRADOR;
       property PER_HABILITACOMPRA       : String read FPER_HABILITACOMPRA write SetPER_HABILITACOMPRA;
       property PER_COMPRA_NOVA          : String read FPER_COMPRA_NOVA write SetPER_COMPRA_NOVA;
       property PER_COMPRA_EDITA         : String read FPER_COMPRA_EDITA write SetPER_COMPRA_EDITA;
       property PER_COMPRA_EXCLUI        : String read FPER_COMPRA_EXCLUI write SetPER_COMPRA_EXCLUI;
       property PER_COMPRA_EXPORTAFILTRO : String read FPER_COMPRA_EXPORTAFILTRO write SetPER_COMPRA_EXPORTAFILTRO;
       property PER_COMPRA_IMPRIMEFILTRO : String read FPER_COMPRA_IMPRIMEFILTRO write SetPER_COMPRA_IMPRIMEFILTRO;
       property PER_PREVENDA_NOVA : String read FPER_PREVENDA_NOVA write SetPER_PREVENDA_NOVA;
       property PER_PREVENDA_EDITA : String read FPER_PREVENDA_EDITA write SetPER_PREVENDA_EDITA;
       property PER_PREVENDA_EXCLUI : String read FPER_PREVENDA_EXCLUI write SetPER_PREVENDA_EXCLUI;
       property PER_PREVENDA_CANCELA : String read FPER_PREVENDA_CANCELA write SetPER_PREVENDA_CANCELA;
       property PER_PREVENDA_FATURA : String read FPER_PREVENDA_FATURA write SetPER_PREVENDA_FATURA;
       property PER_PREVENDA_EXPORTAFILTRO : String read FPER_PREVENDA_EXPORTAFILTRO write SetPER_PREVENDA_EXPORTAFILTRO;
       property PER_PREVENDA_IMPRIMEFILTRO : String read FPER_PREVENDA_IMPRIMEFILTRO write SetPER_PREVENDA_IMPRIMEFILTRO;
       property PER_HABILITAPREVENDA : String read FPER_HABILITAPREVENDA write SetPER_HABILITAPREVENDA;
       property PER_HABILITACONFIGURACOES : String read FPER_HABILITACONFIGURACOES write SetPER_HABILITACONFIGURACOES;
       property PER_CONF_EMITENTE : String read FPER_CONF_EMITENTE write SetPER_CONF_EMITENTE;
       property PER_CONF_SENTINELA : String read FPER_CONF_SENTINELA write SetPER_CONF_SENTINELA;
       property PER_CONF_OUTROSCADASTRO : String read FPER_CONF_OUTROSCADASTRO write SetPER_CONF_OUTROSCADASTRO;
       property PER_CONF_OUTRASLISTAGEM : String read FPER_CONF_OUTRASLISTAGEM write SetPER_CONF_OUTRASLISTAGEM;
       property PER_CONF_PERMISSOES : String read FPER_CONF_PERMISSOES write SetPER_CONF_PERMISSOES;
       property PER_HABILITACR : String read FPER_HABILITACR write SetPER_HABILITACR;
       property PER_CR_NOVO : String read FPER_CR_NOVO write SetPER_CR_NOVO;
       property PER_CR_EDITA : String read FPER_CR_EDITA write SetPER_CR_EDITA;
       property PER_CR_EXCLUI : String read FPER_CR_EXCLUI write SetPER_CR_EXCLUI;
       property PER_CR_IMPRIMEFILTRO : String read FPER_CR_IMPRIMEFILTRO write SetPER_CR_IMPRIMEFILTRO;
       property PER_CR_EXPORTAFILTRO : String read FPER_CR_EXPORTAFILTRO write SetPER_CR_EXPORTAFILTRO;
       property PER_CR_RECEBE : String read FPER_CR_RECEBE write SetPER_CR_RECEBE;
       property PER_HABILITACAIXA : String read FPER_HABILITACAIXA write SetPER_HABILITACAIXA;
       property PER_CAIXA_NOVO : String read FPER_CAIXA_NOVO write SetPER_CAIXA_NOVO;
       property PER_CAIXA_EDITA : String read FPER_CAIXA_EDITA write SetPER_CAIXA_EDITA;
       property PER_CAIXA_EXCLUIR : String read FPER_CAIXA_EXCLUIR write SetPER_CAIXA_EXCLUIR;
       property PER_CAIXA_IMPRIMEFILTRO : String read FPER_CAIXA_IMPRIMEFILTRO write SetPER_CAIXA_IMPRIMEFILTRO;
       property PER_CAIXA_EXPORTAFILTRO : String read FPER_CAIXA_EXPORTAFILTRO write SetPER_CAIXA_EXPORTAFILTRO;
       property PER_CAIXA_BUSCAGERAL : String read FPER_CAIXA_BUSCAGERAL write SetPER_CAIXA_BUSCAGERAL;
       property PER_CP_NOVO : String read FPER_CP_NOVO write SetPER_CP_NOVO;
       property PER_CP_EDITA : String read FPER_CP_EDITA write SetPER_CP_EDITA;
       property PER_CP_EXCLUI : String read FPER_CP_EXCLUI write SetPER_CP_EXCLUI;
       property PER_CP_IMPRIMEFILTRO : String read FPER_CP_IMPRIMEFILTRO write SetPER_CP_IMPRIMEFILTRO;
       property PER_CP_EXPORTAFILTRO : String read FPER_CP_EXPORTAFILTRO write SetPER_CP_EXPORTAFILTRO;
       property PER_CP_FAZPAGAMENTO : String read FPER_CP_FAZPAGAMENTO write SetPER_CP_FAZPAGAMENTO;
       property PER_CP_DESFAZPAGAMENTO : String read FPER_CP_DESFAZPAGAMENTO write SetPER_CP_DESFAZPAGAMENTO;
       property PER_HABILITACONTASAPAGAR : String read FPER_HABILITACONTASAPAGAR write SetPER_HABILITACONTASAPAGAR;
       property msgUser : String read FmsgUser write SetmsgUser;
       property CodigoUser : Integer read FCodigoUser write SetCodigoUser;
       property Login : String read FLogin write SetLogin;
       procedure Insert(ObjPermissao : TPermissaoModel);
       Procedure Update(ObjPermissao : TPermissaoModel);
       procedure Delete(ObjPermissao : TPermissaoModel);
       procedure Read  (ObjPermissao : TPermissaoModel ; Codigo1 : Integer; CodigoU: Integer; loginU: String);
       constructor create;
       destructor destroy;override;
     End;
implementation

{ TPermissaoModel }

constructor TPermissaoModel.create;
begin

end;

procedure TPermissaoModel.Delete(ObjPermissao: TPermissaoModel);
begin

end;

destructor TPermissaoModel.destroy;
begin

  inherited;
end;

procedure TPermissaoModel.Insert(ObjPermissao: TPermissaoModel);
var
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
 // q1.Connection := dm.Con;
  try
     with q1 do
     begin
       close;
       sql.Text := 'insert into TB_PERMISSOES'
       +'(PER_CODIGO'
       +',PER_NOME_NIVEL'
      // +',UUID'
       +',PER_HABILITANFE'
       +',PER_NFE_NOVA'
       +',PER_NFE_EMITE'
       +',PER_NFE_EDITA'
       +',PER_NFE_EXCLUI'
       +',PER_NFE_CANCELA'
       +',PER_NFE_INUTILIZA'
       +',PER_NFE_EXPORTAFILTRO'
       +',PER_NFE_IMPRIMEFILTRO'
       +',PER_NFE_PESQUISA'
       +',PER_BENEFICIARIO'
       +',PER_ADMINISTRADOR'
       +',PER_HABILITACOMPRA'
       +',PER_COMPRA_NOVA'
       +',PER_COMPRA_EDITA'
       +',PER_COMPRA_EXCLUI'
       +',PER_COMPRA_EXPORTAFILTRO'
       +',PER_COMPRA_IMPRIMEFILTRO'
       +',PER_PREVENDA_NOVA'
       +',PER_PREVENDA_EDITA'
       +',PER_PREVENDA_EXCLUI'
       +',PER_PREVENDA_CANCELA'
       +',PER_PREVENDA_FATURA'
       +',PER_PREVENDA_EXPORTAFILTRO'
       +',PER_PREVENDA_IMPRIMEFILTRO'
       +',PER_HABILITAPREVENDA'
       +',PER_HABILITACONFIGURACOES'
       +',PER_CONF_EMITENTE'
       +',PER_CONF_SENTINELA'
       +',PER_CONF_OUTROSCADASTRO'
       +',PER_CONF_OUTRASLISTAGEM'
       +',PER_CONF_PERMISSOES'
       +',PER_HABILITACR'
       +',PER_CR_NOVO'
       +',PER_CR_EDITA'
       +',PER_CR_EXCLUI'
       +',PER_CR_IMPRIMEFILTRO'
       +',PER_CR_EXPORTAFILTRO'
       +',PER_CR_RECEBE'
       +',PER_HABILITACAIXA'
       +',PER_CAIXA_NOVO'
       +',PER_CAIXA_EDITA'
       +',PER_CAIXA_EXCLUIR'
       +',PER_CAIXA_IMPRIMEFILTRO'
       +',PER_CAIXA_EXPORTAFILTRO'
       +',PER_CAIXA_BUSCAGERAL'
       +',PER_CP_NOVO'
       +',PER_CP_EDITA'
       +',PER_CP_EXCLUI'
       +',PER_CP_IMPRIMEFILTRO'
       +',PER_CP_EXPORTAFILTRO'
       +',PER_CP_FAZPAGAMENTO'
       +',PER_CP_DESFAZPAGAMENTO'
       +',PER_HABILITACONTASAPAGAR)'
       +'values(:PER_CODIGO'
       +',:PER_NOME_NIVEL'
      // +',:PER_UUID'
       +',:PER_HABILITANFE'
       +',:PER_NFE_NOVA'
       +',:PER_NFE_EMITE'
       +',:PER_NFE_EDITA'
       +',:PER_NFE_EXCLUI'
       +',:PER_NFE_CANCELA'
       +',:PER_NFE_INUTILIZA'
       +',:PER_NFE_EXPORTAFILTRO'
       +',:PER_NFE_IMPRIMEFILTRO'
       +',:PER_NFE_PESQUISA'
       +',:PER_BENEFICIARIO'
       +',:PER_ADMINISTRADOR'
       +',:PER_HABILITACOMPRA'
       +',:PER_COMPRA_NOVA'
       +',:PER_COMPRA_EDITA'
       +',:PER_COMPRA_EXCLUI'
       +',:PER_COMPRA_EXPORTAFILTRO'
       +',:PER_COMPRA_IMPRIMEFILTRO'
       +',:PER_PREVENDA_NOVA'
       +',:PER_PREVENDA_EDITA'
       +',:PER_PREVENDA_EXCLUI'
       +',:PER_PREVENDA_CANCELA'
       +',:PER_PREVENDA_FATURA'
       +',:PER_PREVENDA_EXPORTAFILTRO'
       +',:PER_PREVENDA_IMPRIMEFILTRO'
       +',:PER_HABILITAPREVENDA'
       +',:PER_HABILITACONFIGURACOES'
       +',:PER_CONF_EMITENTE'
       +',:PER_CONF_SENTINELA'
       +',:PER_CONF_OUTROSCADASTRO'
       +',:PER_CONF_OUTRASLISTAGEM'
       +',:PER_CONF_PERMISSOES'
       +',:PER_HABILITACR'
       +',:PER_CR_NOVO'
       +',:PER_CR_EDITA'
       +',:PER_CR_EXCLUI'
       +',:PER_CR_IMPRIMEFILTRO'
       +',:PER_CR_EXPORTAFILTRO'
       +',:PER_CR_RECEBE'
       +',:PER_HABILITACAIXA'
       +',:PER_CAIXA_NOVO'
       +',:PER_CAIXA_EDITA'
       +',:PER_CAIXA_EXCLUIR'
       +',:PER_CAIXA_IMPRIMEFILTRO'
       +',:PER_CAIXA_EXPORTAFILTRO'
       +',:PER_CAIXA_BUSCAGERAL'
       +',:PER_CP_NOVO'
       +',:PER_CP_EDITA'
       +',:PER_CP_EXCLUI'
       +',:PER_CP_IMPRIMEFILTRO'
       +',:PER_CP_EXPORTAFILTRO'
       +',:PER_CP_FAZPAGAMENTO'
       +',:PER_CP_DESFAZPAGAMENTO'
       +',:PER_HABILITACONTASAPAGAR)';
       paramByName('PER_CODIGO').AsInteger:=CODIGO;
       paramByName('PER_NOME_NIVEL').AsString:=NOME_NIVEL;
      // paramByName('PER_UUID').AsString:=UUID;
       paramByName('PER_HABILITANFE').AsString:=HABILITANFE;
       paramByName('PER_NFE_NOVA').AsString:=NFE_NOVA;
       paramByName('PER_NFE_EMITE').AsString:=NFE_EMITE;
       paramByName('PER_NFE_EDITA').AsString:=NFE_EDITA;
       paramByName('PER_NFE_EXCLUI').AsString:=NFE_EXCLUI;
       paramByName('PER_NFE_CANCELA').AsString:=NFE_CANCELA;
       paramByName('PER_NFE_INUTILIZA').AsString:=NFE_INUTILIZA;
       paramByName('PER_NFE_EXPORTAFILTRO').AsString:=NFE_EXPORTAFILTRO;
       paramByName('PER_NFE_IMPRIMEFILTRO').AsString:=NFE_IMPRIMEFILTRO;
       paramByName('PER_NFE_PESQUISA').AsString:=NFE_PESQUISA;
       paramByName('PER_BENEFICIARIO').AsString:=PER_BENEFICIARIO;
       paramByName('PER_ADMINISTRADOR').AsString:=PER_ADMINISTRADOR;
       paramByName('PER_HABILITACOMPRA').AsString:=PER_HABILITACOMPRA;
       paramByName('PER_COMPRA_NOVA').AsString:=PER_COMPRA_NOVA;
       paramByName('PER_COMPRA_EDITA').AsString:=PER_COMPRA_EDITA;
       paramByName('PER_COMPRA_EXCLUI').AsString:=PER_COMPRA_EXCLUI;
       paramByName('PER_COMPRA_EXPORTAFILTRO').AsString:=PER_COMPRA_EXPORTAFILTRO;
       paramByName('PER_COMPRA_IMPRIMEFILTRO').AsString:=PER_COMPRA_IMPRIMEFILTRO;
       paramByName('PER_PREVENDA_NOVA').AsString:=PER_PREVENDA_NOVA;
       paramByName('PER_PREVENDA_EDITA').AsString:=PER_PREVENDA_EDITA;
       paramByName('PER_PREVENDA_EXCLUI').AsString:=PER_PREVENDA_EXCLUI;
       paramByName('PER_PREVENDA_CANCELA').AsString:=PER_PREVENDA_CANCELA;
       paramByName('PER_PREVENDA_FATURA').AsString:=PER_PREVENDA_FATURA;
       paramByName('PER_PREVENDA_EXPORTAFILTRO').AsString:=PER_PREVENDA_EXPORTAFILTRO;
       paramByName('PER_PREVENDA_IMPRIMEFILTRO').AsString:=PER_PREVENDA_IMPRIMEFILTRO;
       paramByName('PER_HABILITAPREVENDA').AsString:=PER_HABILITAPREVENDA;
       paramByName('PER_HABILITACONFIGURACOES').AsString:=PER_HABILITACONFIGURACOES;
       paramByName('PER_CONF_EMITENTE').AsString:=PER_CONF_EMITENTE;
       paramByName('PER_CONF_SENTINELA').AsString:=PER_CONF_SENTINELA;
       paramByName('PER_CONF_OUTROSCADASTRO').AsString:=PER_CONF_OUTROSCADASTRO;
       paramByName('PER_CONF_OUTRASLISTAGEM').AsString:=PER_CONF_OUTRASLISTAGEM;
       paramByName('PER_CONF_PERMISSOES').AsString:=PER_CONF_PERMISSOES;
       paramByName('PER_HABILITACR').AsString:=PER_HABILITACR;
       paramByName('PER_CR_NOVO').AsString:=PER_CR_NOVO;
       paramByName('PER_CR_EDITA').AsString:=PER_CR_EDITA;
       paramByName('PER_CR_EXCLUI').AsString:=PER_CR_EXCLUI;
       paramByName('PER_CR_IMPRIMEFILTRO').AsString:=PER_CR_IMPRIMEFILTRO;
       paramByName('PER_CR_EXPORTAFILTRO').AsString:=PER_CR_EXPORTAFILTRO;
       paramByName('PER_CR_RECEBE').AsString:=PER_CR_RECEBE;
       paramByName('PER_HABILITACAIXA').AsString:=PER_HABILITACAIXA;
       paramByName('PER_CAIXA_NOVO').AsString:=PER_CAIXA_NOVO;
       paramByName('PER_CAIXA_EDITA').AsString:=PER_CAIXA_EDITA;
       paramByName('PER_CAIXA_EXCLUIR').AsString:=PER_CAIXA_EXCLUIR;
       paramByName('PER_CAIXA_IMPRIMEFILTRO').AsString:=PER_CAIXA_IMPRIMEFILTRO;
       paramByName('PER_CAIXA_EXPORTAFILTRO').AsString:=PER_CAIXA_EXPORTAFILTRO;
       paramByName('PER_CAIXA_BUSCAGERAL').AsString:=PER_CAIXA_BUSCAGERAL;
       paramByName('PER_CP_NOVO').AsString:=PER_CP_NOVO;
       paramByName('PER_CP_EDITA').AsString:=PER_CP_EDITA;
       paramByName('PER_CP_EXCLUI').AsString:=PER_CP_EXCLUI;
       paramByName('PER_CP_IMPRIMEFILTRO').AsString:=PER_CP_IMPRIMEFILTRO;
       paramByName('PER_CP_EXPORTAFILTRO').AsString:=PER_CP_EXPORTAFILTRO;
       paramByName('PER_CP_FAZPAGAMENTO').AsString:=PER_CP_FAZPAGAMENTO;
       paramByName('PER_CP_DESFAZPAGAMENTO').AsString:=PER_CP_DESFAZPAGAMENTO;
       paramByName('PER_HABILITACONTASAPAGAR').AsString:=PER_HABILITACONTASAPAGAR;
       ExecSQL;
     end;
  finally
    freeandNil(q1);
  end;
end;

procedure TPermissaoModel.Read(ObjPermissao : TPermissaoModel ; Codigo1 : Integer; CodigoU: Integer; loginU: String);
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
         sql.Add('select * from TB_PERMISSOES where per_codigo=:per_codigo');
         ParamByName('per_codigo').AsInteger := Codigo1;
         open;
         CODIGO := FieldByName('PER_CODIGO').AsInteger;
         NOME_NIVEL := FieldByName('PER_NOME_NIVEL').AsString;
         UUID  := FieldByName('PER_UUID').AsString;
         HABILITANFE := FieldByName('PER_HABILITANFE').AsString;
         NFE_NOVA := FieldByName('PER_NFE_NOVA').AsString;
         NFE_EMITE:= FieldByName('PER_NFE_EMITE').AsString;
         NFE_EDITA := FieldByName('PER_NFE_EDITA').AsString;
         NFE_EXCLUI := FieldByName('PER_NFE_EXCLUI').AsString;
         NFE_CANCELA := FieldByName('PER_NFE_CANCELA').AsString;
         NFE_INUTILIZA := FieldByName('PER_NFE_INUTILIZA').AsString;
         NFE_EXPORTAFILTRO := FieldByName('PER_NFE_EXPORTAFILTRO').AsString;
         NFE_IMPRIMEFILTRO := FieldByName('PER_NFE_IMPRIMEFILTRO').AsString;
         NFE_PESQUISA  := FieldByName('PER_NFE_PESQUISA').AsString;
         PER_BENEFICIARIO  := FieldByName('PER_BENEFICIARIO').AsString;
         PER_ADMINISTRADOR  := FieldByName('PER_ADMINISTRADOR').AsString;
         PER_HABILITACOMPRA  := FieldByName('PER_HABILITACOMPRA').AsString;
         PER_COMPRA_NOVA  := FieldByName('PER_COMPRA_NOVA').AsString;
         PER_COMPRA_EDITA  := FieldByName('PER_COMPRA_EDITA').AsString;
         PER_COMPRA_EXCLUI  := FieldByName('PER_COMPRA_EXCLUI').AsString;
         PER_COMPRA_EXPORTAFILTRO  := FieldByName('PER_COMPRA_EXPORTAFILTRO').AsString;
         PER_COMPRA_IMPRIMEFILTRO  := FieldByName('PER_COMPRA_IMPRIMEFILTRO').AsString;
         PER_PREVENDA_NOVA  := FieldByName('PER_PREVENDA_NOVA').AsString;
         PER_PREVENDA_EDITA  := FieldByName('PER_PREVENDA_EDITA').AsString;
         PER_PREVENDA_EXCLUI  := FieldByName('PER_PREVENDA_EXCLUI').AsString;
         PER_PREVENDA_CANCELA  := FieldByName('PER_PREVENDA_CANCELA').AsString;
         PER_PREVENDA_FATURA  := FieldByName('PER_PREVENDA_FATURA').AsString;
         PER_PREVENDA_EXPORTAFILTRO  := FieldByName('PER_PREVENDA_EXPORTAFILTRO').AsString;
         PER_PREVENDA_IMPRIMEFILTRO  := FieldByName('PER_PREVENDA_IMPRIMEFILTRO').AsString;
         PER_HABILITAPREVENDA  := FieldByName('PER_HABILITAPREVENDA').AsString;
         PER_HABILITACONFIGURACOES  := FieldByName('PER_HABILITACONFIGURACOES').AsString;
         PER_CONF_EMITENTE  := FieldByName('PER_CONF_EMITENTE').AsString;
         PER_CONF_SENTINELA  := FieldByName('PER_CONF_SENTINELA').AsString;
         PER_CONF_OUTROSCADASTRO  := FieldByName('PER_CONF_OUTROSCADASTRO').AsString;
         PER_CONF_OUTRASLISTAGEM  := FieldByName('PER_CONF_OUTRASLISTAGEM').AsString;
         PER_CONF_PERMISSOES  := FieldByName('PER_CONF_PERMISSOES').AsString;
         PER_HABILITACR  := FieldByName('PER_HABILITACR').AsString;
         PER_CR_NOVO  := FieldByName('PER_CR_NOVO').AsString;
         PER_CR_EDITA  := FieldByName('PER_CR_EDITA').AsString;
         PER_CR_EXCLUI  := FieldByName('PER_CR_EXCLUI').AsString;
         PER_CR_IMPRIMEFILTRO  := FieldByName('PER_CR_IMPRIMEFILTRO').AsString;
         PER_CR_EXPORTAFILTRO  := FieldByName('PER_CR_EXPORTAFILTRO').AsString;
         PER_CR_RECEBE  := FieldByName('PER_CR_RECEBE').AsString;
         PER_HABILITACAIXA  := FieldByName('PER_HABILITACAIXA').AsString;
         PER_CAIXA_NOVO  := FieldByName('PER_CAIXA_NOVO').AsString;
         PER_CAIXA_EDITA  := FieldByName('PER_CAIXA_EDITA').AsString;
         PER_CAIXA_EXCLUIR  := FieldByName('PER_CAIXA_EXCLUIR').AsString;
         PER_CAIXA_IMPRIMEFILTRO  := FieldByName('PER_CAIXA_IMPRIMEFILTRO').AsString;
         PER_CAIXA_EXPORTAFILTRO  := FieldByName('PER_CAIXA_EXPORTAFILTRO').AsString;
         PER_CAIXA_BUSCAGERAL  := FieldByName('PER_CAIXA_BUSCAGERAL').AsString;
         PER_CP_NOVO  := FieldByName('PER_CP_NOVO').AsString;
         PER_CP_EDITA  := FieldByName('PER_CP_EDITA').AsString;
         PER_CP_EXCLUI  := FieldByName('PER_CP_EXCLUI').AsString;
         PER_CP_IMPRIMEFILTRO  := FieldByName('PER_CP_IMPRIMEFILTRO').AsString;
         PER_CP_EXPORTAFILTRO  := FieldByName('PER_CP_EXPORTAFILTRO').AsString;
         PER_CP_FAZPAGAMENTO  := FieldByName('PER_CP_FAZPAGAMENTO').AsString;
         PER_CP_DESFAZPAGAMENTO  := FieldByName('PER_CP_DESFAZPAGAMENTO').AsString;
         PER_HABILITACONTASAPAGAR  := FieldByName('PER_HABILITACONTASAPAGAR').AsString;
         CodigoUser := CodigoU;
         msgUser := 'Usuário sem Permissão!';
         Login := loginU
       end;
    finally
      FreeandNil(q1);
    end;
end;

procedure TPermissaoModel.SetCODIGO(const Value: Integer);
begin
  FCODIGO := Value;
end;

procedure TPermissaoModel.SetCodigoUser(const Value: Integer);
begin
  FCodigoUser := Value;
end;

procedure TPermissaoModel.SetHABILITANFE(const Value: String);
begin
  FHABILITANFE := Value;
end;

procedure TPermissaoModel.SetLogin(const Value: String);
begin
  FLogin := Value;
end;

procedure TPermissaoModel.SetmsgUser(const Value: String);
begin
  FmsgUser := Value;
end;

procedure TPermissaoModel.SetNFE_CANCELA(const Value: String);
begin
  FNFE_CANCELA := Value;
end;

procedure TPermissaoModel.SetNFE_EDITA(const Value: String);
begin
  FNFE_EDITA := Value;
end;

procedure TPermissaoModel.SetNFE_EMITE(const Value: String);
begin
  FNFE_EMITE := Value;
end;

procedure TPermissaoModel.SetNFE_EXCLUI(const Value: String);
begin
  FNFE_EXCLUI := Value;
end;

procedure TPermissaoModel.SetNFE_EXPORTAFILTRO(const Value: String);
begin
  FNFE_EXPORTAFILTRO := Value;
end;

procedure TPermissaoModel.SetNFE_IMPRIMEFILTRO(const Value: String);
begin
  FNFE_IMPRIMEFILTRO := Value;
end;

procedure TPermissaoModel.SetNFE_INUTILIZA(const Value: String);
begin
  FNFE_INUTILIZA := Value;
end;

procedure TPermissaoModel.SetNFE_NOVA(const Value: String);
begin
  FNFE_NOVA := Value;
end;

procedure TPermissaoModel.SetNFE_PESQUISA(const Value: String);
begin
  FNFE_PESQUISA := Value;
end;

procedure TPermissaoModel.SetNOME_NIVEL(const Value: String);
begin
  FNOME_NIVEL := Value;
end;

procedure TPermissaoModel.SetPER_ADMINISTRADOR(const Value: String);
begin
  FPER_ADMINISTRADOR := Value;
end;

procedure TPermissaoModel.SetPER_BENEFICIARIO(const Value: String);
begin
  FPER_BENEFICIARIO := Value;
end;

procedure TPermissaoModel.SetPER_CAIXA_BUSCAGERAL(const Value: String);
begin
  FPER_CAIXA_BUSCAGERAL := Value;
end;

procedure TPermissaoModel.SetPER_CAIXA_EDITA(const Value: String);
begin
  FPER_CAIXA_EDITA := Value;
end;

procedure TPermissaoModel.SetPER_CAIXA_EXCLUIR(const Value: String);
begin
  FPER_CAIXA_EXCLUIR := Value;
end;

procedure TPermissaoModel.SetPER_CAIXA_EXPORTAFILTRO(const Value: String);
begin
  FPER_CAIXA_EXPORTAFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_CAIXA_IMPRIMEFILTRO(const Value: String);
begin
  FPER_CAIXA_IMPRIMEFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_CAIXA_NOVO(const Value: String);
begin
  FPER_CAIXA_NOVO := Value;
end;

procedure TPermissaoModel.SetPER_COMPRA_EDITA(const Value: String);
begin
  FPER_COMPRA_EDITA := Value;
end;

procedure TPermissaoModel.SetPER_COMPRA_EXCLUI(const Value: String);
begin
  FPER_COMPRA_EXCLUI := Value;
end;

procedure TPermissaoModel.SetPER_COMPRA_EXPORTAFILTRO(const Value: String);
begin
  FPER_COMPRA_EXPORTAFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_COMPRA_IMPRIMEFILTRO(const Value: String);
begin
  FPER_COMPRA_IMPRIMEFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_COMPRA_NOVA(const Value: String);
begin
  FPER_COMPRA_NOVA := Value;
end;

procedure TPermissaoModel.SetPER_CONF_EMITENTE(const Value: String);
begin
  FPER_CONF_EMITENTE := Value;
end;

procedure TPermissaoModel.SetPER_CONF_OUTRASLISTAGEM(const Value: String);
begin
  FPER_CONF_OUTRASLISTAGEM := Value;
end;

procedure TPermissaoModel.SetPER_CONF_OUTROSCADASTRO(const Value: String);
begin
  FPER_CONF_OUTROSCADASTRO := Value;
end;

procedure TPermissaoModel.SetPER_CONF_PERMISSOES(const Value: String);
begin
  FPER_CONF_PERMISSOES := Value;
end;

procedure TPermissaoModel.SetPER_CONF_SENTINELA(const Value: String);
begin
  FPER_CONF_SENTINELA := Value;
end;

procedure TPermissaoModel.SetPER_CP_DESFAZPAGAMENTO(const Value: String);
begin
  FPER_CP_DESFAZPAGAMENTO := Value;
end;

procedure TPermissaoModel.SetPER_CP_EDITA(const Value: String);
begin
  FPER_CP_EDITA := Value;
end;

procedure TPermissaoModel.SetPER_CP_EXCLUI(const Value: String);
begin
  FPER_CP_EXCLUI := Value;
end;

procedure TPermissaoModel.SetPER_CP_EXPORTAFILTRO(const Value: String);
begin
  FPER_CP_EXPORTAFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_CP_FAZPAGAMENTO(const Value: String);
begin
  FPER_CP_FAZPAGAMENTO := Value;
end;

procedure TPermissaoModel.SetPER_CP_IMPRIMEFILTRO(const Value: String);
begin
  FPER_CP_IMPRIMEFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_CP_NOVO(const Value: String);
begin
  FPER_CP_NOVO := Value;
end;

procedure TPermissaoModel.SetPER_CR_EDITA(const Value: String);
begin
  FPER_CR_EDITA := Value;
end;

procedure TPermissaoModel.SetPER_CR_EXCLUI(const Value: String);
begin
  FPER_CR_EXCLUI := Value;
end;

procedure TPermissaoModel.SetPER_CR_EXPORTAFILTRO(const Value: String);
begin
  FPER_CR_EXPORTAFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_CR_IMPRIMEFILTRO(const Value: String);
begin
  FPER_CR_IMPRIMEFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_CR_NOVO(const Value: String);
begin
  FPER_CR_NOVO := Value;
end;

procedure TPermissaoModel.SetPER_CR_RECEBE(const Value: String);
begin
  FPER_CR_RECEBE := Value;
end;

procedure TPermissaoModel.SetPER_HABILITACAIXA(const Value: String);
begin
  FPER_HABILITACAIXA := Value;
end;

procedure TPermissaoModel.SetPER_HABILITACOMPRA(const Value: String);
begin
  FPER_HABILITACOMPRA := Value;
end;

procedure TPermissaoModel.SetPER_HABILITACONFIGURACOES(const Value: String);
begin
  FPER_HABILITACONFIGURACOES := Value;
end;

procedure TPermissaoModel.SetPER_HABILITACONTASAPAGAR(const Value: String);
begin
  FPER_HABILITACONTASAPAGAR := Value;
end;

procedure TPermissaoModel.SetPER_HABILITACR(const Value: String);
begin
  FPER_HABILITACR := Value;
end;

procedure TPermissaoModel.SetPER_HABILITAPREVENDA(const Value: String);
begin
  FPER_HABILITAPREVENDA := Value;
end;

procedure TPermissaoModel.SetPER_PREVENDA_CANCELA(const Value: String);
begin
  FPER_PREVENDA_CANCELA := Value;
end;

procedure TPermissaoModel.SetPER_PREVENDA_EDITA(const Value: String);
begin
  FPER_PREVENDA_EDITA := Value;
end;

procedure TPermissaoModel.SetPER_PREVENDA_EXCLUI(const Value: String);
begin
  FPER_PREVENDA_EXCLUI := Value;
end;

procedure TPermissaoModel.SetPER_PREVENDA_EXPORTAFILTRO(const Value: String);
begin
  FPER_PREVENDA_EXPORTAFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_PREVENDA_FATURA(const Value: String);
begin
  FPER_PREVENDA_FATURA := Value;
end;

procedure TPermissaoModel.SetPER_PREVENDA_IMPRIMEFILTRO(const Value: String);
begin
  FPER_PREVENDA_IMPRIMEFILTRO := Value;
end;

procedure TPermissaoModel.SetPER_PREVENDA_NOVA(const Value: String);
begin
  FPER_PREVENDA_NOVA := Value;
end;

procedure TPermissaoModel.SetUUID(const Value: String);
begin
  FUUID := Value;
end;

procedure TPermissaoModel.Update(ObjPermissao: TPermissaoModel);
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
        sql.Add('update TB_PERMISSOES set');
        Sql.add('PER_CODIGO=:PER_CODIGO');
        Sql.add(',PER_NOME_NIVEL=:PER_NOME_NIVEL');
       //Sql.add('PER_UUID=:PER_UUID');
        Sql.add(',PER_HABILITANFE=:PER_HABILITANFE');
        Sql.add(',PER_NFE_NOVA=:PER_NFE_NOVA');
        Sql.add(',PER_NFE_EMITE=:PER_NFE_EMITE');
        Sql.add(',PER_NFE_EDITA=:PER_NFE_EDITA');
        Sql.add(',PER_NFE_EXCLUI=:PER_NFE_EXCLUI');
        Sql.add(',PER_NFE_CANCELA=:PER_NFE_CANCELA');
        Sql.add(',PER_NFE_INUTILIZA=:PER_NFE_INUTILIZA');
        Sql.add(',PER_NFE_EXPORTAFILTRO=:PER_NFE_EXPORTAFILTRO');
        Sql.add(',PER_NFE_IMPRIMEFILTRO=:PER_NFE_IMPRIMEFILTRO');
        Sql.add(',PER_NFE_PESQUISA=:PER_NFE_PESQUISA');
        Sql.add(',PER_BENEFICIARIO=:PER_BENEFICIARIO');
        Sql.add(',PER_ADMINISTRADOR=:PER_ADMINISTRADOR');
        Sql.add(',PER_HABILITACOMPRA=:PER_HABILITACOMPRA');
        Sql.add(',PER_COMPRA_NOVA=:PER_COMPRA_NOVA');
        Sql.add(',PER_COMPRA_EDITA=:PER_COMPRA_EDITA');
        Sql.add(',PER_COMPRA_EXCLUI=:PER_COMPRA_EXCLUI');
        Sql.add(',PER_COMPRA_EXPORTAFILTRO=:PER_COMPRA_EXPORTAFILTRO');
        Sql.add(',PER_COMPRA_IMPRIMEFILTRO=:PER_COMPRA_IMPRIMEFILTRO');
        Sql.add(',PER_PREVENDA_NOVA=:PER_PREVENDA_NOVA');
        Sql.add(',PER_PREVENDA_EDITA=:PER_PREVENDA_EDITA');
        Sql.add(',PER_PREVENDA_EXCLUI=:PER_PREVENDA_EXCLUI');
        Sql.add(',PER_PREVENDA_CANCELA=:PER_PREVENDA_CANCELA');
        Sql.add(',PER_PREVENDA_FATURA=:PER_PREVENDA_FATURA');
        Sql.add(',PER_PREVENDA_EXPORTAFILTRO=:PER_PREVENDA_EXPORTAFILTRO');
        Sql.add(',PER_PREVENDA_IMPRIMEFILTRO=:PER_PREVENDA_IMPRIMEFILTRO');
        Sql.add(',PER_HABILITAPREVENDA=:PER_HABILITAPREVENDA');
        Sql.add(',PER_HABILITACONFIGURACOES=:PER_HABILITACONFIGURACOES');
        Sql.add(',PER_CONF_EMITENTE=:PER_CONF_EMITENTE');
        Sql.add(',PER_CONF_SENTINELA=:PER_CONF_SENTINELA');
        Sql.add(',PER_CONF_OUTROSCADASTRO=:PER_CONF_OUTROSCADASTRO');
        Sql.add(',PER_CONF_OUTRASLISTAGEM=:PER_CONF_OUTRASLISTAGEM');
        Sql.add(',PER_CONF_PERMISSOES=:PER_CONF_PERMISSOES');
        Sql.add(',PER_HABILITACR=:PER_HABILITACR');
        Sql.add(',PER_CR_NOVO=:PER_CR_NOVO');
        Sql.add(',PER_CR_EDITA=:PER_CR_EDITA');
        Sql.add(',PER_CR_EXCLUI=:PER_CR_EXCLUI');
        Sql.add(',PER_CR_IMPRIMEFILTRO=:PER_CR_IMPRIMEFILTRO');
        Sql.add(',PER_CR_EXPORTAFILTRO=:PER_CR_EXPORTAFILTRO');
        Sql.add(',PER_CR_RECEBE=:PER_CR_RECEBE');
        Sql.add(',PER_HABILITACAIXA=:PER_HABILITACAIXA');
        Sql.add(',PER_CAIXA_NOVO=:PER_CAIXA_NOVO');
        Sql.add(',PER_CAIXA_EDITA=:PER_CAIXA_EDITA');
        Sql.add(',PER_CAIXA_EXCLUIR=:PER_CAIXA_EXCLUIR');
        Sql.add(',PER_CAIXA_IMPRIMEFILTRO=:PER_CAIXA_IMPRIMEFILTRO');
        Sql.add(',PER_CAIXA_EXPORTAFILTRO=:PER_CAIXA_EXPORTAFILTRO');
        Sql.add(',PER_CAIXA_BUSCAGERAL=:PER_CAIXA_BUSCAGERAL');
        Sql.add(',PER_CP_NOVO=:PER_CP_NOVO');
        Sql.add(',PER_CP_EDITA=:PER_CP_EDITA');
        Sql.add(',PER_CP_EXCLUI=:PER_CP_EXCLUI');
        Sql.add(',PER_CP_IMPRIMEFILTRO=:PER_CP_IMPRIMEFILTRO');
        Sql.add(',PER_CP_EXPORTAFILTRO=:PER_CP_EXPORTAFILTRO');
        Sql.add(',PER_CP_FAZPAGAMENTO=:PER_CP_FAZPAGAMENTO');
        Sql.add(',PER_CP_DESFAZPAGAMENTO=:PER_CP_DESFAZPAGAMENTO');
        Sql.add(',PER_HABILITACONTASAPAGAR=:PER_HABILITACONTASAPAGAR');
        sql.Add('where PER_CODIGO = :PER_CODIGO');
        paramByName('PER_CODIGO').AsInteger:=CODIGO;
        paramByName('PER_NOME_NIVEL').AsString:=NOME_NIVEL;
        //paramByName('PER_UUID').AsString:=UUID;
        paramByName('PER_HABILITANFE').AsString:=HABILITANFE;
        paramByName('PER_NFE_NOVA').AsString:=NFE_NOVA;
        paramByName('PER_NFE_EMITE').AsString:=NFE_EMITE;
        paramByName('PER_NFE_EDITA').AsString:=NFE_EDITA;
        paramByName('PER_NFE_EXCLUI').AsString:=NFE_EXCLUI;
        paramByName('PER_NFE_CANCELA').AsString:=NFE_CANCELA;
        paramByName('PER_NFE_INUTILIZA').AsString:=NFE_INUTILIZA;
        paramByName('PER_NFE_EXPORTAFILTRO').AsString:=NFE_EXPORTAFILTRO;
        paramByName('PER_NFE_IMPRIMEFILTRO').AsString:=NFE_IMPRIMEFILTRO;
        paramByName('PER_NFE_PESQUISA').AsString:=NFE_PESQUISA;
        paramByName('PER_BENEFICIARIO').AsString:=PER_BENEFICIARIO;
        paramByName('PER_ADMINISTRADOR').AsString:=PER_ADMINISTRADOR;
        paramByName('PER_HABILITACOMPRA').AsString:=PER_HABILITACOMPRA;
        paramByName('PER_COMPRA_NOVA').AsString:=PER_COMPRA_NOVA;
        paramByName('PER_COMPRA_EDITA').AsString:=PER_COMPRA_EDITA;
        paramByName('PER_COMPRA_EXCLUI').AsString:=PER_COMPRA_EXCLUI;
        paramByName('PER_COMPRA_EXPORTAFILTRO').AsString:=PER_COMPRA_EXPORTAFILTRO;
        paramByName('PER_COMPRA_IMPRIMEFILTRO').AsString:=PER_COMPRA_IMPRIMEFILTRO;
        paramByName('PER_PREVENDA_NOVA').AsString:=PER_PREVENDA_NOVA;
        paramByName('PER_PREVENDA_EDITA').AsString:=PER_PREVENDA_EDITA;
        paramByName('PER_PREVENDA_EXCLUI').AsString:=PER_PREVENDA_EXCLUI;
        paramByName('PER_PREVENDA_CANCELA').AsString:=PER_PREVENDA_CANCELA;
        paramByName('PER_PREVENDA_FATURA').AsString:=PER_PREVENDA_FATURA;
        paramByName('PER_PREVENDA_EXPORTAFILTRO').AsString:=PER_PREVENDA_EXPORTAFILTRO;
        paramByName('PER_PREVENDA_IMPRIMEFILTRO').AsString:=PER_PREVENDA_IMPRIMEFILTRO;
        paramByName('PER_HABILITAPREVENDA').AsString:=PER_HABILITAPREVENDA;
        paramByName('PER_HABILITACONFIGURACOES').AsString:=PER_HABILITACONFIGURACOES;
        paramByName('PER_CONF_EMITENTE').AsString:=PER_CONF_EMITENTE;
        paramByName('PER_CONF_SENTINELA').AsString:=PER_CONF_SENTINELA;
        paramByName('PER_CONF_OUTROSCADASTRO').AsString:=PER_CONF_OUTROSCADASTRO;
        paramByName('PER_CONF_OUTRASLISTAGEM').AsString:=PER_CONF_OUTRASLISTAGEM;
        paramByName('PER_CONF_PERMISSOES').AsString:=PER_CONF_PERMISSOES;
        paramByName('PER_HABILITACR').AsString:=PER_HABILITACR;
        paramByName('PER_CR_NOVO').AsString:=PER_CR_NOVO;
        paramByName('PER_CR_EDITA').AsString:=PER_CR_EDITA;
        paramByName('PER_CR_EXCLUI').AsString:=PER_CR_EXCLUI;
        paramByName('PER_CR_IMPRIMEFILTRO').AsString:=PER_CR_IMPRIMEFILTRO;
        paramByName('PER_CR_EXPORTAFILTRO').AsString:=PER_CR_EXPORTAFILTRO;
        paramByName('PER_CR_RECEBE').AsString:=PER_CR_RECEBE;
        paramByName('PER_HABILITACAIXA').AsString:=PER_HABILITACAIXA;
        paramByName('PER_CAIXA_NOVO').AsString:=PER_CAIXA_NOVO;
        paramByName('PER_CAIXA_EDITA').AsString:=PER_CAIXA_EDITA;
        paramByName('PER_CAIXA_EXCLUIR').AsString:=PER_CAIXA_EXCLUIR;
        paramByName('PER_CAIXA_IMPRIMEFILTRO').AsString:=PER_CAIXA_IMPRIMEFILTRO;
        paramByName('PER_CAIXA_EXPORTAFILTRO').AsString:=PER_CAIXA_EXPORTAFILTRO;
        paramByName('PER_CAIXA_BUSCAGERAL').AsString:=PER_CAIXA_BUSCAGERAL;
        paramByName('PER_CP_NOVO').AsString:=PER_CP_NOVO;
        paramByName('PER_CP_EDITA').AsString:=PER_CP_EDITA;
        paramByName('PER_CP_EXCLUI').AsString:=PER_CP_EXCLUI;
        paramByName('PER_CP_IMPRIMEFILTRO').AsString:=PER_CP_IMPRIMEFILTRO;
        paramByName('PER_CP_EXPORTAFILTRO').AsString:=PER_CP_EXPORTAFILTRO;
        paramByName('PER_CP_FAZPAGAMENTO').AsString:=PER_CP_FAZPAGAMENTO;
        paramByName('PER_CP_DESFAZPAGAMENTO').AsString:=PER_CP_DESFAZPAGAMENTO;
        paramByName('PER_HABILITACONTASAPAGAR').AsString:=PER_HABILITACONTASAPAGAR;
        ExecSQL;
      end;

    finally
      FreeandnIl(q1);
    end;
end;

end.
