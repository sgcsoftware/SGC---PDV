unit MiniSoft.Model.Principal;


interface
   uses vcl.dialogs, System.SysUtils, Firedac.Comp.Client, System.Classes, System.Math,
  Conexao, IdHashMessageDigest, uDWConstsData, uRESTDWPoolerDB;
      type
      TPrincipalModel = class
        private
    FPRI_CR_JUROSPARCELAATRAZADA: String;
    FPRI_NFE_CONF20: String;
    FPRI_COMISSOA_FP_CHEQUE: Double;
    FPRI_COMISSAO_FP_CREDITO: Double;
    FPRI_NFE_CONF21: String;
    FPRI_NFE_CONF12: String;
    FPRI_NFE_CONF8: String;
    FPRI_COMISSAO_FP_DINHEIRO: Double;
    FPRI_NFE_CONF13: String;
    FPRI_NFE_CONF9: String;
    FPRI_NFE_NUMERO_S_CERTIFICADO: String;
    FPRI_PRODUTOS_CONF2: String;
    FPRI_NFE_CONF10: String;
    FPRI_ENDERECO: String;
    FPRI_CR_JUROSVENDAPRAZO_PARCELAS: Integer;
    FPRI_PRODUTOS_CONF3: String;
    FPRI_PDC_DUPLICATAS: String;
    FPRI_EMAIL_EMAIL: String;
    FPRI_NFE_CONF11: String;
    FPRI_TELEFONE: String;
    FPRI_RAZAO: String;
    FPRI_NFE_CONF16: String;
    FPRI_PRODUTOS_CONF1: String;
    FPRI_NFE_CONF17: String;
    FPRI_COMISSAO_FP_CREDIARIO: Double;
    FPRI_PRODUTOS_CONF6: String;
    FPRI_NFE_CONF14: String;
    FPRI_NFE_CONF2: String;
    FPRI_PRODUTOS_CONF7: String;
    FPRI_NFE_CONF15: String;
    FPRI_NFE_CONF3: String;
    FPRI_COMISSAO_FP_DEBITO: Double;
    FPRI_FB_CHEQUE: String;
    FPRI_CR_MULTA: Double;
    FPRI_CR_JUROSVENDAPRAZO_PORC: Double;
    FPRI_PRODUTOS_CONF4: String;
    FPRI_NFE_ULT_NFE_S2: Integer;
    FPRI_NFE_DANFE: String;
    FPRI_CNAE: String;
    FPRI_FANTASIA: String;
    FPRI_COMISSAO_GRUPO: String;
    FPRI_FB_DINHEIRO: String;
    FPRI_PRODUTOS_CONF5: String;
    FPRI_NFE_CONF1: String;
    FPRI_NFE_EMISSAO: String;
    FPRI_NFE_CONF6: String;
    FPRI_COMISSAO_PRODUTO: String;
    FPRI_PREVENDA_CONF2: String;
    FPRI_NFE_CONF7: String;
    FPRI_NFE_ULT_NFE_S1: integer;
    FPRI_PREVENDA_CONF3: String;
    FPRI_NFE_CONF4: String;
    FPRI_CODIGO_REVENDA: Integer;
    FPRI_FB_VALE_REFEICAO: String;
    FPRI_PDV_DANFE: String;
    FPRI_PDV_CODIGOCSC: String;
    FPRI_NFE_CONF5: String;
    FPRI_IM: String;
    FPRI_FB_CREDIARIO: String;
    FPRI_PDV_EMISSAO: String;
    FPRI_PREVENDA_CONF1: String;
    FPRI_UF: String;
    FPRI_COMISSAO_FP: String;
    FPRI_CLIENTE_CONF8: String;
    FPRI_UUID: String;
    FPRI_CODIGO: Integer;
    FPRI_FP_CARTAO: String;
    FPRI_PDV_IDCSC: String;
    FPRI_PREVENDA_CONF4: String;
    FPRI_EMAIL_SENHA: String;
    FPRI_RESPONSAVEL: String;
    FPRI_CR_JUROSIMPLES: String;
    FPRI_PDC_TROCA_DEVOLUCOES: String;
    FPRI_NFE_CRIPTOGRAFIA: String;
    FPRI_CEP: String;
    FPRI_CPFCNPJ: String;
    FPRI_CLIENTE_CONF2: String;
    FPRI_PDV_ULT_NFCE_S2: Integer;
    FPRI_NUMERO: String;
    FPRI_IE: String;
    FPRI_CLIENTE_CONF3: String;
    FPRI_NFE_SERVIDOR: String;
    FPRI_IBGEEMITENTE: String;
    FPRI_MUNICIPIO: String;
    FPRI_CR_JUROCOMPOSTO: String;
    FPRI_CR_JUROSVENDAPRAZO: String;
    FPRI_CLIENTE_CONF1: String;
    FPRI_PDV_ULT_NFCE_S1: Integer;
    FPRI_EMAIL_HOST: String;
    FPRI_CLIENTE_CONF6: String;
    FPRI_EMAIL_PORTA: String;
    FPRI_NFE_SENHA_CERTIFICADO: String;
    FPRI_COMISSAO_VENDEDOR: String;
    FPRI_CR_JUROSVENDAPRAZO_ATR_PORC: Double;
    FPRI_CLIENTE_CONF7: String;
    FPRI_NFE_CONF18: String;
    FPRI_CLIENTE_CONF4: String;
    FPRI_FB_VALE_ALIMENTACAO: String;
    FPRI_FP_BOLETO: String;
    FPRI_CLIENTE_CONF5: String;
    FPRI_PDV_SERVIDOR: String;
    FPRI_PRODUTOS_CONF8: String;
    FPRI_NFE_REGIME: String;
    FPRI_NFE_CONF19: String;
    FPRI_PDC_DUPLICATAS_ID: integer;
    FPRI_PDC_TROCA_DEVOLUCOES_ID: integer;
    FPRI_APAGAR: String;
    FPRI_OS: String;
    FPRI_NFE: String;
    FPRI_BANCO: String;
    FPRI_PREVENDA: String;
    FPRI_PDV: String;
    FPRI_CLIENTES: String;
    FPRI_COMPRAS: String;
    FPRI_ORCAMENTO: String;
    FPRI_RECEBER: String;
    FPRI_MDFE: String;
    FPRI_CAIXA: String;
    FPRI_CTE: String;
    FPRI_NFSE: String;
    FPRI_PRODUTOS: String;
    FPRI_BAIRRO: String;
    FPRI_PDC_VENDA_NFCE: String;
    FPRI_PDC_VENDA_NFCE_ID: Integer;
    FPRI_NFE_CONF22: String;
    FPRI_NFE_CFOPPADRAO: String;
    FPRI_PDC_VENDA_NFE: String;
    FPRI_PDC_VENDA_NFE_ID: Integer;
    FPRI_NUMERO_PREVENDA: Integer;
    FPRI_PRE_CONF8: String;
    FPRI_PRE_CONF9: String;
    FPRI_PRE_CONF2: String;
    FPRI_PRE_CONF3: String;
    FPRI_PRE_CONF1: String;
    FPRI_PRE_CONF6: String;
    FPRI_PRE_CONF7: String;
    FPRI_PRE_CONF4: String;
    FPRI_PRE_CONF5: String;
    Fpri_pre_conf10: String;
    FPRI_COMISSAO_AORECEBER: String;
    FPRI_COMISSAO_AOFATURAR: String;
    FPRI_PDC_RECEBIMENTOS: String;
    FPRI_PDC_RECEBIMENTOS_ID: Integer;
    FPRI_PDV_CONF2: String;
    FPRI_PDV_CONF3: String;
    FPRI_PDV_CONF1: String;
    FPRI_PDV_CONF4: String;
    FPRI_PDV_CONF5: String;
    FPRI_PDV_FRASE: String;
    FPRI_PDV_CONF6: String;
    FPRI_CAIXA_CONF1: string;
    FPRI_CAIXA_CONF2: string;
    FPRI_VENCIMENTO_CERTIFICADO: Tdate;
    FPRI_PDV_CONF8: string;
    FPRI_PDV_CONF7: string;
    procedure SetPRI_CEP(const Value: String);
    procedure SetPRI_CLIENTE_CONF1(const Value: String);
    procedure SetPRI_CLIENTE_CONF2(const Value: String);
    procedure SetPRI_CLIENTE_CONF3(const Value: String);
    procedure SetPRI_CLIENTE_CONF4(const Value: String);
    procedure SetPRI_CLIENTE_CONF5(const Value: String);
    procedure SetPRI_CLIENTE_CONF6(const Value: String);
    procedure SetPRI_CLIENTE_CONF7(const Value: String);
    procedure SetPRI_CLIENTE_CONF8(const Value: String);
    procedure SetPRI_CNAE(const Value: String);
    procedure SetPRI_CODIGO(const Value: Integer);
    procedure SetPRI_CODIGO_REVENDA(const Value: Integer);
    procedure SetPRI_COMISSAO_FP(const Value: String);
    procedure SetPRI_COMISSAO_FP_CREDIARIO(const Value: Double);
    procedure SetPRI_COMISSAO_FP_CREDITO(const Value: Double);
    procedure SetPRI_COMISSAO_FP_DEBITO(const Value: Double);
    procedure SetPRI_COMISSAO_FP_DINHEIRO(const Value: Double);
    procedure SetPRI_COMISSAO_GRUPO(const Value: String);
    procedure SetPRI_COMISSAO_PRODUTO(const Value: String);
    procedure SetPRI_COMISSAO_VENDEDOR(const Value: String);
    procedure SetPRI_COMISSOA_FP_CHEQUE(const Value: Double);
    procedure SetPRI_CPFCNPJ(const Value: String);
    procedure SetPRI_CR_JUROCOMPOSTO(const Value: String);
    procedure SetPRI_CR_JUROSIMPLES(const Value: String);
    procedure SetPRI_CR_JUROSPARCELAATRAZADA(const Value: String);
    procedure SetPRI_CR_JUROSVENDAPRAZO(const Value: String);
    procedure SetPRI_CR_JUROSVENDAPRAZO_ATR_PORC(const Value: Double);
    procedure SetPRI_CR_JUROSVENDAPRAZO_PARCELAS(const Value: Integer);
    procedure SetPRI_CR_JUROSVENDAPRAZO_PORC(const Value: Double);
    procedure SetPRI_CR_MULTA(const Value: Double);
    procedure SetPRI_EMAIL_EMAIL(const Value: String);
    procedure SetPRI_EMAIL_HOST(const Value: String);
    procedure SetPRI_EMAIL_PORTA(const Value: String);
    procedure SetPRI_EMAIL_SENHA(const Value: String);
    procedure SetPRI_ENDERECO(const Value: String);
    procedure SetPRI_FANTASIA(const Value: String);
    procedure SetPRI_FB_CHEQUE(const Value: String);
    procedure SetPRI_FB_CREDIARIO(const Value: String);
    procedure SetPRI_FB_DINHEIRO(const Value: String);
    procedure SetPRI_FB_VALE_ALIMENTACAO(const Value: String);
    procedure SetPRI_FB_VALE_REFEICAO(const Value: String);
    procedure SetPRI_FP_BOLETO(const Value: String);
    procedure SetPRI_FP_CARTAO(const Value: String);
    procedure SetPRI_IBGEEMITENTE(const Value: String);
    procedure SetPRI_IE(const Value: String);
    procedure SetPRI_IM(const Value: String);
    procedure SetPRI_MUNICIPIO(const Value: String);
    procedure SetPRI_NFE_CONF1(const Value: String);
    procedure SetPRI_NFE_CONF10(const Value: String);
    procedure SetPRI_NFE_CONF11(const Value: String);
    procedure SetPRI_NFE_CONF12(const Value: String);
    procedure SetPRI_NFE_CONF13(const Value: String);
    procedure SetPRI_NFE_CONF14(const Value: String);
    procedure SetPRI_NFE_CONF15(const Value: String);
    procedure SetPRI_NFE_CONF16(const Value: String);
    procedure SetPRI_NFE_CONF17(const Value: String);
    procedure SetPRI_NFE_CONF18(const Value: String);
    procedure SetPRI_NFE_CONF2(const Value: String);
    procedure SetPRI_NFE_CONF20(const Value: String);
    procedure SetPRI_NFE_CONF21(const Value: String);
    procedure SetPRI_NFE_CONF3(const Value: String);
    procedure SetPRI_NFE_CONF4(const Value: String);
    procedure SetPRI_NFE_CONF5(const Value: String);
    procedure SetPRI_NFE_CONF6(const Value: String);
    procedure SetPRI_NFE_CONF7(const Value: String);
    procedure SetPRI_NFE_CONF8(const Value: String);
    procedure SetPRI_NFE_CONF9(const Value: String);
    procedure SetPRI_NFE_CRIPTOGRAFIA(const Value: String);
    procedure SetPRI_NFE_DANFE(const Value: String);
    procedure SetPRI_NFE_EMISSAO(const Value: String);
    procedure SetPRI_NFE_NUMERO_S_CERTIFICADO(const Value: String);
    procedure SetPRI_NFE_REGIME(const Value: String);
    procedure SetPRI_NFE_SENHA_CERTIFICADO(const Value: String);
    procedure SetPRI_NFE_SERVIDOR(const Value: String);
    procedure SetPRI_NFE_ULT_NFE_S1(const Value: Integer);
    procedure SetPRI_NFE_ULT_NFE_S2(const Value: Integer);
    procedure SetPRI_NUMERO(const Value: String);
    procedure SetPRI_PDC_DUPLICATAS(const Value: String);
    procedure SetPRI_PDC_TROCA_DEVOLUCOES(const Value: String);
    procedure SetPRI_PDV_CODIGOCSC(const Value: String);
    procedure SetPRI_PDV_DANFE(const Value: String);
    procedure SetPRI_PDV_EMISSAO(const Value: String);
    procedure SetPRI_PDV_IDCSC(const Value: String);
    procedure SetPRI_PDV_SERVIDOR(const Value: String);
    procedure SetPRI_PDV_ULT_NFCE_S1(const Value: Integer);
    procedure SetPRI_PDV_ULT_NFCE_S2(const Value: Integer);
    procedure SetPRI_PREVENDA_CONF1(const Value: String);
    procedure SetPRI_PREVENDA_CONF2(const Value: String);
    procedure SetPRI_PREVENDA_CONF3(const Value: String);
    procedure SetPRI_PREVENDA_CONF4(const Value: String);
    procedure SetPRI_PRODUTOS_CONF1(const Value: String);
    procedure SetPRI_PRODUTOS_CONF2(const Value: String);
    procedure SetPRI_PRODUTOS_CONF3(const Value: String);
    procedure SetPRI_PRODUTOS_CONF4(const Value: String);
    procedure SetPRI_PRODUTOS_CONF5(const Value: String);
    procedure SetPRI_PRODUTOS_CONF6(const Value: String);
    procedure SetPRI_PRODUTOS_CONF7(const Value: String);
    procedure SetPRI_PRODUTOS_CONF8(const Value: String);
    procedure SetPRI_RAZAO(const Value: String);
    procedure SetPRI_RESPONSAVEL(const Value: String);
    procedure SetPRI_TELEFONE(const Value: String);
    procedure SetPRI_UF(const Value: String);
    procedure SetPRI_UUID(const Value: String);
    procedure SetPRI_NFE_CONF19(const Value: String);
    procedure SetPRI_PDC_DUPLICATAS_ID(const Value: integer);
    procedure SetPRI_PDC_TROCA_DEVOLUCOES_ID(const Value: integer);
    procedure SetPRI_APAGAR(const Value: String);
    procedure SetPRI_BANCO(const Value: String);
    procedure SetPRI_CAIXA(const Value: String);
    procedure SetPRI_CLIENTES(const Value: String);
    procedure SetPRI_COMPRAS(const Value: String);
    procedure SetPRI_CTE(const Value: String);
    procedure SetPRI_MDFE(const Value: String);
    procedure SetPRI_NFE(const Value: String);
    procedure SetPRI_NFSE(const Value: String);
    procedure SetPRI_ORCAMENTO(const Value: String);
    procedure SetPRI_OS(const Value: String);
    procedure SetPRI_PDV(const Value: String);
    procedure SetPRI_PREVENDA(const Value: String);
    procedure SetPRI_PRODUTOS(const Value: String);
    procedure SetPRI_RECEBER(const Value: String);
    procedure SetPRI_BAIRRO(const Value: String);
    procedure SetPRI_PDC_VENDA_NFCE(const Value: String);
    procedure SetPRI_PDC_VENDA_NFCE_ID(const Value: Integer);
    procedure SetPRI_NFE_CONF22(const Value: String);
    procedure SetPRI_NFE_CFOPPADRAO(const Value: String);
    procedure SetPRI_PDC_VENDA_NFE(const Value: String);
    procedure SetPRI_PDC_VENDA_NFE_ID(const Value: Integer);
    procedure SetPRI_NUMERO_PREVENDA(const Value: Integer);
    procedure SetPRI_PRE_CONF1(const Value: String);
    procedure SetPRI_PRE_CONF2(const Value: String);
    procedure SetPRI_PRE_CONF3(const Value: String);
    procedure SetPRI_PRE_CONF4(const Value: String);
    procedure SetPRI_PRE_CONF5(const Value: String);
    procedure SetPRI_PRE_CONF6(const Value: String);
    procedure SetPRI_PRE_CONF7(const Value: String);
    procedure SetPRI_PRE_CONF8(const Value: String);
    procedure SetPRI_PRE_CONF9(const Value: String);
    procedure Setpri_pre_conf10(const Value: String);
    procedure SetPRI_COMISSAO_AOFATURAR(const Value: String);
    procedure SetPRI_COMISSAO_AORECEBER(const Value: String);
    procedure SetPRI_PDC_RECEBIMENTOS(const Value: String);
    procedure SetPRI_PDC_RECEBIMENTOS_ID(const Value: Integer);
    procedure SetPRI_PDV_CONF1(const Value: String);
    procedure SetPRI_PDV_CONF2(const Value: String);
    procedure SetPRI_PDV_CONF3(const Value: String);
    procedure SetPRI_PDV_CONF4(const Value: String);
    procedure SetPRI_PDV_CONF5(const Value: String);
    procedure SetPRI_PDV_FRASE(const Value: String);
    procedure SetPRI_PDV_CONF6(const Value: String);
    procedure SetPRI_CAIXA_CONF1(const Value: string);
    procedure SetPRI_CAIXA_CONF2(const Value: string);
    procedure SetPRI_VENCIMENTO_CERTIFICADO(const Value: Tdate);
    procedure SetPRI_PDV_CONF7(const Value: string);
    procedure SetPRI_PDV_CONF8(const Value: string);
        public
           property PRI_CODIGO : Integer read FPRI_CODIGO write SetPRI_CODIGO;
           property PRI_CPFCNPJ: String read FPRI_CPFCNPJ write SetPRI_CPFCNPJ;
           property PRI_RAZAO : String read FPRI_RAZAO write SetPRI_RAZAO;
           property PRI_FANTASIA : String read FPRI_FANTASIA write SetPRI_FANTASIA;
           property PRI_RESPONSAVEL: String read FPRI_RESPONSAVEL write SetPRI_RESPONSAVEL;
           property PRI_IE : String read FPRI_IE write SetPRI_IE;
           property PRI_IM : String read FPRI_IM write SetPRI_IM;
           property PRI_ENDERECO : String read FPRI_ENDERECO write SetPRI_ENDERECO;
           property PRI_MUNICIPIO : String read FPRI_MUNICIPIO write SetPRI_MUNICIPIO;
           property PRI_NUMERO : String read FPRI_NUMERO write SetPRI_NUMERO;
           property PRI_CEP : String read FPRI_CEP write SetPRI_CEP;
           property PRI_TELEFONE : String read FPRI_TELEFONE write SetPRI_TELEFONE;
           property PRI_CNAE: String read FPRI_CNAE write SetPRI_CNAE;
           property PRI_UF : String read FPRI_UF write SetPRI_UF;
           property PRI_CODIGO_REVENDA : Integer read FPRI_CODIGO_REVENDA write SetPRI_CODIGO_REVENDA;
           property PRI_UUID : String read FPRI_UUID write SetPRI_UUID;
           property PRI_IBGEEMITENTE : String read FPRI_IBGEEMITENTE write SetPRI_IBGEEMITENTE;
           property PRI_NFE_NUMERO_S_CERTIFICADO : String read FPRI_NFE_NUMERO_S_CERTIFICADO write SetPRI_NFE_NUMERO_S_CERTIFICADO;
           property PRI_NFE_SENHA_CERTIFICADO : String read FPRI_NFE_SENHA_CERTIFICADO write SetPRI_NFE_SENHA_CERTIFICADO;
           property PRI_NFE_CRIPTOGRAFIA : String read FPRI_NFE_CRIPTOGRAFIA write SetPRI_NFE_CRIPTOGRAFIA;
           property PRI_NFE_SERVIDOR  : String read FPRI_NFE_SERVIDOR write SetPRI_NFE_SERVIDOR;
           property PRI_NFE_DANFE : String read FPRI_NFE_DANFE write SetPRI_NFE_DANFE;
           property PRI_NFE_EMISSAO : String read FPRI_NFE_EMISSAO write SetPRI_NFE_EMISSAO;
           property PRI_NFE_REGIME : String read FPRI_NFE_REGIME write SetPRI_NFE_REGIME;
           property PRI_NFE_ULT_NFE_S1 : Integer read FPRI_NFE_ULT_NFE_S1 write SetPRI_NFE_ULT_NFE_S1;
           property PRI_NFE_ULT_NFE_S2 : Integer read FPRI_NFE_ULT_NFE_S2 write SetPRI_NFE_ULT_NFE_S2;
           property PRI_NFE_CONF1 : String read FPRI_NFE_CONF1 write SetPRI_NFE_CONF1;
           property PRI_NFE_CONF2 : String read FPRI_NFE_CONF2 write SetPRI_NFE_CONF2;
           property PRI_NFE_CONF3 : String read FPRI_NFE_CONF3 write SetPRI_NFE_CONF3;
           property PRI_NFE_CONF4 : String read FPRI_NFE_CONF4 write SetPRI_NFE_CONF4;
           property PRI_NFE_CONF5 : String read FPRI_NFE_CONF5 write SetPRI_NFE_CONF5;
           property PRI_NFE_CONF6 : String read FPRI_NFE_CONF6 write SetPRI_NFE_CONF6;
           property PRI_NFE_CONF7 : String read FPRI_NFE_CONF7 write SetPRI_NFE_CONF7;
           property PRI_NFE_CONF8 : String read FPRI_NFE_CONF8 write SetPRI_NFE_CONF8;
           property PRI_NFE_CONF9 : String read FPRI_NFE_CONF9 write SetPRI_NFE_CONF9;
           property PRI_NFE_CONF10 : String read FPRI_NFE_CONF10 write SetPRI_NFE_CONF10;
           property PRI_NFE_CONF11 : String read FPRI_NFE_CONF11 write SetPRI_NFE_CONF11;
           property PRI_NFE_CONF12 : String read FPRI_NFE_CONF12 write SetPRI_NFE_CONF12;
           property PRI_NFE_CONF13 : String read FPRI_NFE_CONF13 write SetPRI_NFE_CONF13;
           property PRI_NFE_CONF14 : String read FPRI_NFE_CONF14 write SetPRI_NFE_CONF14;
           property PRI_NFE_CONF15 : String read FPRI_NFE_CONF15 write SetPRI_NFE_CONF15;
           property PRI_NFE_CONF16 : String read FPRI_NFE_CONF16 write SetPRI_NFE_CONF16;
           property PRI_NFE_CONF17 : String read FPRI_NFE_CONF17 write SetPRI_NFE_CONF17;
           property PRI_NFE_CONF18 : String read FPRI_NFE_CONF18 write SetPRI_NFE_CONF18;
           property PRI_NFE_CONF19 : String read FPRI_NFE_CONF19 write SetPRI_NFE_CONF19;
           property PRI_NFE_CONF20 : String read FPRI_NFE_CONF20 write SetPRI_NFE_CONF20;
           property PRI_NFE_CONF21 : String read FPRI_NFE_CONF21 write SetPRI_NFE_CONF21;
           property PRI_EMAIL_HOST : String read FPRI_EMAIL_HOST write SetPRI_EMAIL_HOST;
           property PRI_EMAIL_PORTA : String read FPRI_EMAIL_PORTA write SetPRI_EMAIL_PORTA;
           property PRI_EMAIL_EMAIL : String read FPRI_EMAIL_EMAIL write SetPRI_EMAIL_EMAIL;
           property PRI_EMAIL_SENHA : String read FPRI_EMAIL_SENHA write SetPRI_EMAIL_SENHA;
           property PRI_PDC_DUPLICATAS : String read FPRI_PDC_DUPLICATAS write SetPRI_PDC_DUPLICATAS;
           property PRI_PDC_TROCA_DEVOLUCOES       : String read FPRI_PDC_TROCA_DEVOLUCOES write SetPRI_PDC_TROCA_DEVOLUCOES;
           property PRI_PRODUTOS_CONF1 : String read FPRI_PRODUTOS_CONF1 write SetPRI_PRODUTOS_CONF1;
           property PRI_PRODUTOS_CONF2 : String read FPRI_PRODUTOS_CONF2 write SetPRI_PRODUTOS_CONF2;
           property PRI_PRODUTOS_CONF3 : String read FPRI_PRODUTOS_CONF3 write SetPRI_PRODUTOS_CONF3;
           property PRI_PRODUTOS_CONF4 : String read FPRI_PRODUTOS_CONF4 write SetPRI_PRODUTOS_CONF4;
           property PRI_PRODUTOS_CONF5 : String read FPRI_PRODUTOS_CONF5 write SetPRI_PRODUTOS_CONF5;
           property PRI_PRODUTOS_CONF6 : String read FPRI_PRODUTOS_CONF6 write SetPRI_PRODUTOS_CONF6;
           property PRI_PRODUTOS_CONF7 : String read FPRI_PRODUTOS_CONF7 write SetPRI_PRODUTOS_CONF7;
           property PRI_PRODUTOS_CONF8 : String read FPRI_PRODUTOS_CONF8 write SetPRI_PRODUTOS_CONF8;
           property PRI_PREVENDA_CONF1 : String read FPRI_PREVENDA_CONF1 write SetPRI_PREVENDA_CONF1;
           property PRI_PREVENDA_CONF2 : String read FPRI_PREVENDA_CONF2 write SetPRI_PREVENDA_CONF2;
           property PRI_PREVENDA_CONF3 : String read FPRI_PREVENDA_CONF3 write SetPRI_PREVENDA_CONF3;
           property PRI_PREVENDA_CONF4 : String read FPRI_PREVENDA_CONF4 write SetPRI_PREVENDA_CONF4;
           property PRI_PDV_IDCSC : String read FPRI_PDV_IDCSC write SetPRI_PDV_IDCSC;
           property PRI_PDV_CODIGOCSC : String read FPRI_PDV_CODIGOCSC write SetPRI_PDV_CODIGOCSC;
           property PRI_PDV_SERVIDOR  : String read FPRI_PDV_SERVIDOR write SetPRI_PDV_SERVIDOR;
           property PRI_PDV_DANFE : String read FPRI_PDV_DANFE write SetPRI_PDV_DANFE;
           property PRI_PDV_EMISSAO : String read FPRI_PDV_EMISSAO write SetPRI_PDV_EMISSAO;
           property PRI_PDV_ULT_NFCE_S1 : Integer read FPRI_PDV_ULT_NFCE_S1 write SetPRI_PDV_ULT_NFCE_S1;
           property PRI_PDV_ULT_NFCE_S2 : Integer read FPRI_PDV_ULT_NFCE_S2 write SetPRI_PDV_ULT_NFCE_S2;
           property PRI_CLIENTE_CONF1 : String read FPRI_CLIENTE_CONF1 write SetPRI_CLIENTE_CONF1;
           property PRI_CLIENTE_CONF2 : String read FPRI_CLIENTE_CONF2 write SetPRI_CLIENTE_CONF2;
           property PRI_CLIENTE_CONF3 : String read FPRI_CLIENTE_CONF3 write SetPRI_CLIENTE_CONF3;
           property PRI_CLIENTE_CONF4 : String read FPRI_CLIENTE_CONF4 write SetPRI_CLIENTE_CONF4;
           property PRI_CLIENTE_CONF5 : String read FPRI_CLIENTE_CONF5 write SetPRI_CLIENTE_CONF5;
           property PRI_CLIENTE_CONF6 : String read FPRI_CLIENTE_CONF6 write SetPRI_CLIENTE_CONF6;
           property PRI_CLIENTE_CONF7 : String read FPRI_CLIENTE_CONF7 write SetPRI_CLIENTE_CONF7;
           property PRI_CLIENTE_CONF8 : String read FPRI_CLIENTE_CONF8 write SetPRI_CLIENTE_CONF8;
           property PRI_CR_JUROSVENDAPRAZO : String read FPRI_CR_JUROSVENDAPRAZO write SetPRI_CR_JUROSVENDAPRAZO;
           property PRI_CR_JUROSPARCELAATRAZADA : String read FPRI_CR_JUROSPARCELAATRAZADA write SetPRI_CR_JUROSPARCELAATRAZADA;
           property PRI_CR_JUROSIMPLES : String read FPRI_CR_JUROSIMPLES write SetPRI_CR_JUROSIMPLES;
           property PRI_CR_JUROCOMPOSTO : String read FPRI_CR_JUROCOMPOSTO write SetPRI_CR_JUROCOMPOSTO;
           property PRI_CR_JUROSVENDAPRAZO_PARCELAS : Integer read FPRI_CR_JUROSVENDAPRAZO_PARCELAS write SetPRI_CR_JUROSVENDAPRAZO_PARCELAS;
           property PRI_CR_JUROSVENDAPRAZO_PORC : Double read FPRI_CR_JUROSVENDAPRAZO_PORC write SetPRI_CR_JUROSVENDAPRAZO_PORC;
           property PRI_CR_JUROSVENDAPRAZO_ATR_PORC : Double read FPRI_CR_JUROSVENDAPRAZO_ATR_PORC write SetPRI_CR_JUROSVENDAPRAZO_ATR_PORC;
           property PRI_CR_MULTA   : Double read FPRI_CR_MULTA write SetPRI_CR_MULTA;
           property PRI_FP_BOLETO : String read FPRI_FP_BOLETO write SetPRI_FP_BOLETO;
           property PRI_FP_CARTAO : String read FPRI_FP_CARTAO write SetPRI_FP_CARTAO;
           property PRI_FB_CHEQUE : String read FPRI_FB_CHEQUE write SetPRI_FB_CHEQUE;
           property PRI_FB_CREDIARIO : String read FPRI_FB_CREDIARIO write SetPRI_FB_CREDIARIO;
           property PRI_FB_DINHEIRO : String read FPRI_FB_DINHEIRO write SetPRI_FB_DINHEIRO;
           property PRI_FB_VALE_ALIMENTACAO : String read FPRI_FB_VALE_ALIMENTACAO write SetPRI_FB_VALE_ALIMENTACAO;
           property PRI_FB_VALE_REFEICAO : String read FPRI_FB_VALE_REFEICAO write SetPRI_FB_VALE_REFEICAO;
           property PRI_COMISSAO_PRODUTO : String read FPRI_COMISSAO_PRODUTO write SetPRI_COMISSAO_PRODUTO;
           property PRI_COMISSAO_GRUPO : String read FPRI_COMISSAO_GRUPO write SetPRI_COMISSAO_GRUPO;
           property PRI_COMISSAO_VENDEDOR    : String read FPRI_COMISSAO_VENDEDOR write SetPRI_COMISSAO_VENDEDOR;
           property PRI_COMISSAO_FP : String read FPRI_COMISSAO_FP write SetPRI_COMISSAO_FP;
           property PRI_COMISSAO_FP_DINHEIRO : Double read FPRI_COMISSAO_FP_DINHEIRO write SetPRI_COMISSAO_FP_DINHEIRO;
           property PRI_COMISSAO_FP_DEBITO : Double read FPRI_COMISSAO_FP_DEBITO write SetPRI_COMISSAO_FP_DEBITO;
           property PRI_COMISSAO_FP_CREDITO : Double read FPRI_COMISSAO_FP_CREDITO write SetPRI_COMISSAO_FP_CREDITO;
           property PRI_COMISSAO_FP_CREDIARIO : Double read FPRI_COMISSAO_FP_CREDIARIO write SetPRI_COMISSAO_FP_CREDIARIO;
           property PRI_COMISSOA_FP_CHEQUE : Double read FPRI_COMISSOA_FP_CHEQUE write SetPRI_COMISSOA_FP_CHEQUE;
           property PRI_PDC_DUPLICATAS_ID :integer read FPRI_PDC_DUPLICATAS_ID write SetPRI_PDC_DUPLICATAS_ID;
           property PRI_PDC_TROCA_DEVOLUCOES_ID :integer read FPRI_PDC_TROCA_DEVOLUCOES_ID write SetPRI_PDC_TROCA_DEVOLUCOES_ID;
           property PRI_APAGAR : String read FPRI_APAGAR write SetPRI_APAGAR;
           property PRI_BANCO : String read FPRI_BANCO write SetPRI_BANCO;
           property PRI_CLIENTES : String read FPRI_CLIENTES write SetPRI_CLIENTES;
           property PRI_PRODUTOS : String read FPRI_PRODUTOS write SetPRI_PRODUTOS;
           property PRI_CAIXA : String read FPRI_CAIXA write SetPRI_CAIXA;
           property PRI_COMPRAS : String read FPRI_COMPRAS write SetPRI_COMPRAS;
           property PRI_NFE : String read FPRI_NFE write SetPRI_NFE;
           property PRI_NFSE : String read FPRI_NFSE write SetPRI_NFSE;
           property PRI_CTE : String read FPRI_CTE write SetPRI_CTE;
           property PRI_MDFE : String read FPRI_MDFE write SetPRI_MDFE;
           property PRI_ORCAMENTO : String read FPRI_ORCAMENTO write SetPRI_ORCAMENTO;
           property PRI_OS : String read FPRI_OS write SetPRI_OS;
           property PRI_PDV : String read FPRI_PDV write SetPRI_PDV;
           property PRI_PREVENDA : String read FPRI_PREVENDA write SetPRI_PREVENDA;
           property PRI_RECEBER : String read FPRI_RECEBER write SetPRI_RECEBER;
           property PRI_BAIRRO : String read FPRI_BAIRRO write SetPRI_BAIRRO;
           property PRI_PDC_VENDA_NFCE : String read FPRI_PDC_VENDA_NFCE write SetPRI_PDC_VENDA_NFCE;
           property PRI_PDC_VENDA_NFCE_ID : Integer read FPRI_PDC_VENDA_NFCE_ID write SetPRI_PDC_VENDA_NFCE_ID;
           property PRI_NFE_CONF22 : String read FPRI_NFE_CONF22 write SetPRI_NFE_CONF22;
           property PRI_NFE_CFOPPADRAO : String read FPRI_NFE_CFOPPADRAO write SetPRI_NFE_CFOPPADRAO;
           property PRI_PDC_VENDA_NFE : String read FPRI_PDC_VENDA_NFE write SetPRI_PDC_VENDA_NFE;
           property PRI_PDC_VENDA_NFE_ID : Integer read FPRI_PDC_VENDA_NFE_ID write SetPRI_PDC_VENDA_NFE_ID;
           property PRI_NUMERO_PREVENDA : Integer read FPRI_NUMERO_PREVENDA write SetPRI_NUMERO_PREVENDA;
           property PRI_PRE_CONF1 : String read FPRI_PRE_CONF1 write SetPRI_PRE_CONF1;
           property PRI_PRE_CONF2 : String read FPRI_PRE_CONF2 write SetPRI_PRE_CONF2;
           property PRI_PRE_CONF3 : String read FPRI_PRE_CONF3 write SetPRI_PRE_CONF3;
           property PRI_PRE_CONF4 : String read FPRI_PRE_CONF4 write SetPRI_PRE_CONF4;
           property PRI_PRE_CONF5 : String read FPRI_PRE_CONF5 write SetPRI_PRE_CONF5;
           property PRI_PRE_CONF6 : String read FPRI_PRE_CONF6 write SetPRI_PRE_CONF6;
           property PRI_PRE_CONF7 : String read FPRI_PRE_CONF7 write SetPRI_PRE_CONF7;
           property PRI_PRE_CONF8 : String read FPRI_PRE_CONF8 write SetPRI_PRE_CONF8;
           property PRI_PRE_CONF9 : String read FPRI_PRE_CONF9 write SetPRI_PRE_CONF9;
           property pri_pre_conf10 : String read Fpri_pre_conf10 write Setpri_pre_conf10;
           property PRI_COMISSAO_AORECEBER : String read FPRI_COMISSAO_AORECEBER write SetPRI_COMISSAO_AORECEBER;
           property PRI_COMISSAO_AOFATURAR : String read FPRI_COMISSAO_AOFATURAR write SetPRI_COMISSAO_AOFATURAR;
           property PRI_PDC_RECEBIMENTOS : String read FPRI_PDC_RECEBIMENTOS write SetPRI_PDC_RECEBIMENTOS;
           property PRI_PDC_RECEBIMENTOS_ID : Integer read FPRI_PDC_RECEBIMENTOS_ID write SetPRI_PDC_RECEBIMENTOS_ID;
           property PRI_PDV_CONF1 : String read FPRI_PDV_CONF1 write SetPRI_PDV_CONF1;
           property PRI_PDV_CONF2 : String read FPRI_PDV_CONF2 write SetPRI_PDV_CONF2;
           property PRI_PDV_CONF3 : String read FPRI_PDV_CONF3 write SetPRI_PDV_CONF3;
           property PRI_PDV_CONF4 : String read FPRI_PDV_CONF4 write SetPRI_PDV_CONF4;
           property PRI_PDV_CONF5 : String read FPRI_PDV_CONF5 write SetPRI_PDV_CONF5;
           property PRI_PDV_FRASE : String read FPRI_PDV_FRASE write SetPRI_PDV_FRASE;
           property PRI_PDV_CONF6 : String read FPRI_PDV_CONF6 write SetPRI_PDV_CONF6;
           property PRI_CAIXA_CONF1 : string read FPRI_CAIXA_CONF1 write SetPRI_CAIXA_CONF1;
           property PRI_CAIXA_CONF2 : string read FPRI_CAIXA_CONF2 write SetPRI_CAIXA_CONF2;
           property PRI_VENCIMENTO_CERTIFICADO : Tdate read FPRI_VENCIMENTO_CERTIFICADO write SetPRI_VENCIMENTO_CERTIFICADO;
           property PRI_PDV_CONF7 : string read FPRI_PDV_CONF7 write SetPRI_PDV_CONF7;
           property PRI_PDV_CONF8 : string read FPRI_PDV_CONF8 write SetPRI_PDV_CONF8;
      procedure Insert(ObjPRINCIPAL : TPrincipalModel);
      procedure Update(ObjPRINCIPAL : TPrincipalModel);
      procedure Delete(ObjPRINCIPAL : TPrincipalModel);
      procedure Read  (ObjPRINCIPAL : TPrincipalModel ; Codigo : Integer);
        constructor create;
        destructor destroy; override;
      end;
implementation

{ TPrincipalModel }

constructor TPrincipalModel.create;
begin

end;

procedure TPrincipalModel.Delete(ObjPRINCIPAL: TPrincipalModel);
begin

end;

destructor TPrincipalModel.destroy;
begin

  inherited;
end;

procedure TPrincipalModel.Insert(ObjPRINCIPAL: TPrincipalModel);
var
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1 do
    begin
       Close;
       Sql.Text := 'INSERT INTO TB_PRINCIPAL'
       +'(PRI_CPFCNPJ'
       +',PRI_RAZAO'
       +',PRI_FANTASIA'
       +',PRI_RESPONSAVEL'
       +',PRI_IE'
       +',PRI_IM'
       +',PRI_ENDERECO'
       +',PRI_MUNICIPIO'
       +',PRI_NUMERO'
       +',PRI_CEP'
       +',PRI_TELEFONE'
       +',PRI_CNAE'
       +',PRI_UF'
       +',PRI_CODIGO_REVENDA'
       +',PRI_IBGEEMITENTE'
       +',PRI_NFE_NUMERO_S_CERTIFICADO'
       +',PRI_NFE_SENHA_CERTIFICADO'
       +',PRI_NFE_CRIPTOGRAFIA'
       +',PRI_NFE_SERVIDOR'
       +',PRI_NFE_DANFE'
       +',PRI_NFE_EMISSAO'
       +',PRI_NFE_REGIME'
       +',PRI_NFE_ULT_NFE_S1'
       +',PRI_NFE_ULT_NFE_S2'
       +',PRI_NFE_CONF1'
       +',PRI_NFE_CONF2'
       +',PRI_NFE_CONF3'
       +',PRI_NFE_CONF4'
       +',PRI_NFE_CONF5'
       +',PRI_NFE_CONF6'
       +',PRI_NFE_CONF7'
       +',PRI_NFE_CONF8'
       +',PRI_NFE_CONF9'
       +',PRI_NFE_CONF10'
       +',PRI_NFE_CONF11'
       +',PRI_NFE_CONF12'
       +',PRI_NFE_CONF13'
       +',PRI_NFE_CONF14'
       +',PRI_NFE_CONF15'
       +',PRI_NFE_CONF16'
       +',PRI_NFE_CONF17'
       +',PRI_NFE_CONF18'
       +',PRI_NFE_CONF19'
       +',PRI_NFE_CONF20'
       +',PRI_NFE_CONF21'
       +',PRI_EMAIL_HOST'
       +',PRI_EMAIL_PORTA'
       +',PRI_EMAIL_EMAIL'
       +',PRI_EMAIL_SENHA'
       +',PRI_PDC_VENDA_NFCE'
       +',PRI_PDC_VENDA_NFCE_ID'
       +',PRI_PDC_DUPLICATAS'
       +',PRI_PDC_DUPLICATAS_ID'
       +',PRI_PDC_TROCA_DEVOLUCOES'
       +',PRI_PDC_TROCA_DEVOLUCOES_ID'
       +',PRI_PRODUTOS_CONF1'
       +',PRI_PRODUTOS_CONF2'
       +',PRI_PRODUTOS_CONF3'
       +',PRI_PRODUTOS_CONF4'
       +',PRI_PRODUTOS_CONF5'
       +',PRI_PRODUTOS_CONF6'
       +',PRI_PRODUTOS_CONF7'
       +',PRI_PRODUTOS_CONF8'
       +',PRI_PREVENDA_CONF1'
       +',PRI_PREVENDA_CONF2'
       +',PRI_PREVENDA_CONF3'
       +',PRI_PREVENDA_CONF4'
       +',PRI_PDV_IDCSC'
       +',PRI_PDV_CODIGOCSC'
       +',PRI_PDV_SERVIDOR'
       +',PRI_PDV_DANFE'
       +',PRI_PDV_EMISSAO'
       +',PRI_PDV_ULT_NFCE_S1'
       +',PRI_PDV_ULT_NFCE_S2'
       +',PRI_CLIENTE_CONF1'
       +',PRI_CLIENTE_CONF2'
       +',PRI_CLIENTE_CONF3'
       +',PRI_CLIENTE_CONF4'
       +',PRI_CLIENTE_CONF5'
       +',PRI_CLIENTE_CONF6'
       +',PRI_CLIENTE_CONF7'
       +',PRI_CLIENTE_CONF8'
       +',PRI_CR_JUROSVENDAPRAZO'
       +',PRI_CR_JUROSPARCELAATRAZADA'
       +',PRI_CR_JUROSIMPLES'
       +',PRI_CR_JUROCOMPOSTO'
       +',PRI_CR_JUROSVENDAPRAZO_PARCELAS'
       +',PRI_CR_JUROSVENDAPRAZO_PORC'
       +',PRI_CR_JUROSVENDAPRAZO_ATR_PORC'
       +',PRI_CR_MULTA'
       +',PRI_FP_BOLETO'
       +',PRI_FP_CARTAO'
       +',PRI_FB_CHEQUE'
       +',PRI_FB_CREDIARIO'
       +',PRI_FB_DINHEIRO'
       +',PRI_FB_VALE_ALIMENTACAO'
       +',PRI_FB_VALE_REFEICAO'
       +',PRI_COMISSAO_PRODUTO'
       +',PRI_COMISSAO_GRUPO '
       +',PRI_COMISSAO_VENDEDOR'
       +',PRI_COMISSAO_AORECEBER'
       +',PRI_COMISSAO_AOFATURAR'
       +',PRI_COMISSAO_FP'
       +',PRI_COMISSAO_FP_DINHEIRO'
       +',PRI_COMISSAO_FP_DEBITO'
       +',PRI_COMISSAO_FP_CREDITO'
       +',PRI_COMISSAO_FP_CREDIARIO'
       +',PRI_COMISSOA_FP_CHEQUE'
       +',PRI_CLIENTES'
       +',PRI_PRODUTOS'
       +',PRI_COMPRAS'
       +',PRI_RECEBER'
       +',PRI_APAGAR'
       +',PRI_NFE'
       +',PRI_NFSE'
       +',PRI_CTE'
       +',PRI_MDFE'
       +',PRI_BANCO'
       +',PRI_CAIXA'
       +',PRI_ORCAMENTO'
       +',PRI_OS'
       +',PRI_PDV'
       +',PRI_PREVENDA'
       +',PRI_BAIRRO'
       +',PRI_NFE_CONF22'
       +',PRI_NFE_CFOPPADRAO'
       +',PRI_PDC_VENDA_NFE'
       +',PRI_PDC_VENDA_NFE_ID'
       +',PRI_PRE_CONF1'
       +',PRI_PRE_CONF2'
       +',PRI_PRE_CONF3'
       +',PRI_PRE_CONF4'
       +',PRI_PRE_CONF5'
       +',PRI_PRE_CONF6'
       +',PRI_PRE_CONF7'
       +',PRI_PRE_CONF8'
       +',PRI_PRE_CONF9'
       +',PRI_PRE_CONF10'
       +',PRI_PDC_RECEBIMENTOS'
       +',PRI_PDC_RECEBIMENTOS_ID)'
       +' VALUES (:PRI_CPFCNPJ'
       +',:PRI_RAZAO'
       +',:PRI_FANTASIA'
       +',:PRI_RESPONSAVEL'
       +',:PRI_IE'
       +',:PRI_IM'
       +',:PRI_ENDERECO'
       +',:PRI_MUNICIPIO'
       +',:PRI_NUMERO'
       +',:PRI_CEP'
       +',:PRI_TELEFONE'
       +',:PRI_CNAE'
       +',:PRI_UF'
       +',:PRI_CODIGO_REVENDA'
       +',:PRI_IBGEEMITENTE'
       +',:PRI_NFE_NUMERO_S_CERTIFICADO'
       +',:PRI_NFE_SENHA_CERTIFICADO'
       +',:PRI_NFE_CRIPTOGRAFIA'
       +',:PRI_NFE_SERVIDOR'
       +',:PRI_NFE_DANFE'
       +',:PRI_NFE_EMISSAO'
       +',:PRI_NFE_REGIME'
       +',:PRI_NFE_ULT_NFE_S1'
       +',:PRI_NFE_ULT_NFE_S2'
       +',:PRI_NFE_CONF1'
       +',:PRI_NFE_CONF2'
       +',:PRI_NFE_CONF3'
       +',:PRI_NFE_CONF4'
       +',:PRI_NFE_CONF5'
       +',:PRI_NFE_CONF6'
       +',:PRI_NFE_CONF7'
       +',:PRI_NFE_CONF8'
       +',:PRI_NFE_CONF9'
       +',:PRI_NFE_CONF10'
       +',:PRI_NFE_CONF11'
       +',:PRI_NFE_CONF12'
       +',:PRI_NFE_CONF13'
       +',:PRI_NFE_CONF14'
       +',:PRI_NFE_CONF15'
       +',:PRI_NFE_CONF16'
       +',:PRI_NFE_CONF17'
       +',:PRI_NFE_CONF18'
       +',:PRI_NFE_CONF19'
       +',:PRI_NFE_CONF20'
       +',:PRI_NFE_CONF21'
       +',:PRI_EMAIL_HOST'
       +',:PRI_EMAIL_PORTA'
       +',:PRI_EMAIL_EMAIL'
       +',:PRI_EMAIL_SENHA'
       +',:PRI_PDC_VENDA_NFCE'
       +',:PRI_PDC_VENDA_NFCE_ID'
       +',:PRI_PDC_DUPLICATAS'
       +',:PRI_PDC_DUPLICATAS_ID'
       +',:PRI_PDC_TROCA_DEVOLUCOES'
       +',:PRI_PDC_TROCA_DEVOLUCOES_ID'
       +',:PRI_PRODUTOS_CONF1'
       +',:PRI_PRODUTOS_CONF2'
       +',:PRI_PRODUTOS_CONF3'
       +',:PRI_PRODUTOS_CONF4'
       +',:PRI_PRODUTOS_CONF5'
       +',:PRI_PRODUTOS_CONF6'
       +',:PRI_PRODUTOS_CONF7'
       +',:PRI_PRODUTOS_CONF8'
       +',:PRI_PREVENDA_CONF1'
       +',:PRI_PREVENDA_CONF2'
       +',:PRI_PREVENDA_CONF3'
       +',:PRI_PREVENDA_CONF4'
       +',:PRI_PDV_IDCSC'
       +',:PRI_PDV_CODIGOCSC'
       +',:PRI_PDV_SERVIDOR'
       +',:PRI_PDV_DANFE'
       +',:PRI_PDV_EMISSAO'
       +',:PRI_PDV_ULT_NFCE_S1'
       +',:PRI_PDV_ULT_NFCE_S2'
       +',:PRI_CLIENTE_CONF1'
       +',:PRI_CLIENTE_CONF2'
       +',:PRI_CLIENTE_CONF3'
       +',:PRI_CLIENTE_CONF4'
       +',:PRI_CLIENTE_CONF5'
       +',:PRI_CLIENTE_CONF6'
       +',:PRI_CLIENTE_CONF7'
       +',:PRI_CLIENTE_CONF8'
       +',:PRI_CR_JUROSVENDAPRAZO'
       +',:PRI_CR_JUROSPARCELAATRAZADA'
       +',:PRI_CR_JUROSIMPLES'
       +',:PRI_CR_JUROCOMPOSTO'
       +',:PRI_CR_JUROSVENDAPRAZO_PARCELAS'
       +',:PRI_CR_JUROSVENDAPRAZO_PORC'
       +',:PRI_CR_JUROSVENDAPRAZO_ATR_PORC'
       +',:PRI_CR_MULTA'
       +',:PRI_FP_BOLETO'
       +',:PRI_FP_CARTAO'
       +',:PRI_FB_CHEQUE'
       +',:PRI_FB_CREDIARIO'
       +',:PRI_FB_DINHEIRO'
       +',:PRI_FB_VALE_ALIMENTACAO'
       +',:PRI_FB_VALE_REFEICAO'
       +',:PRI_COMISSAO_PRODUTO'
       +',:PRI_COMISSAO_GRUPO'
       +',:PRI_COMISSAO_VENDEDOR'
       +',:PRI_COMISSAO_AORECEBER'
       +',:PRI_COMISSAO_AOFATURAR'
       +',:PRI_COMISSAO_FP'
       +',:PRI_COMISSAO_FP_DINHEIRO'
       +',:PRI_COMISSAO_FP_DEBITO'
       +',:PRI_COMISSAO_FP_CREDITO'
       +',:PRI_COMISSAO_FP_CREDIARIO'
       +',:PRI_COMISSOA_FP_CHEQUE'
       +',:PRI_CLIENTES'
       +',:PRI_PRODUTOS'
       +',:PRI_COMPRAS'
       +',:PRI_RECEBER'
       +',:PRI_APAGAR'
       +',:PRI_NFE'
       +',:PRI_NFSE'
       +',:PRI_CTE'
       +',:PRI_MDFE'
       +',:PRI_BANCO'
       +',:PRI_CAIXA'
       +',:PRI_ORCAMENTO'
       +',:PRI_OS'
       +',:PRI_PDV'
       +',:PRI_PREVENDA'
       +',:PRI_BAIRRO'
       +',:PRI_NFE_CONF22'
       +',:PRI_NFE_CFOPPADRAO'
       +',:PRI_PDC_VENDA_NFE'
       +',:PRI_PDC_VENDA_NFE_ID'
       +',:PRI_PRE_CONF1'
       +',:PRI_PRE_CONF2'
       +',:PRI_PRE_CONF3'
       +',:PRI_PRE_CONF4'
       +',:PRI_PRE_CONF5'
       +',:PRI_PRE_CONF6'
       +',:PRI_PRE_CONF7'
       +',:PRI_PRE_CONF8'
       +',:PRI_PRE_CONF9'
       +',:PRI_PRE_CONF10'
       +',:PRI_PDC_RECEBIMENTOS'
       +',:PRI_PDC_RECEBIMENTOS_ID)';
       ParamByName('PRI_CPFCNPJ').AsString := PRI_CPFCNPJ;
       ParamByName('PRI_RAZAO').AsString :=  PRI_RAZAO;
       ParamByName('PRI_FANTASIA').AsString := PRI_FANTASIA;
       ParamByName('PRI_RESPONSAVEL').AsString := PRI_RESPONSAVEL;
       ParamByName('PRI_IE').AsString := PRI_IE ;
       ParamByName('PRI_IM').AsString := PRI_IM;
       ParamByName('PRI_ENDERECO').AsString := PRI_ENDERECO;
       ParamByName('PRI_MUNICIPIO').AsString := PRI_MUNICIPIO;
       ParamByName('PRI_NUMERO').AsString := PRI_NUMERO;
       ParamByName('PRI_CEP').AsString := PRI_CEP;
       ParamByName('PRI_TELEFONE').AsString := PRI_TELEFONE;
       ParamByName('PRI_CNAE').AsString := PRI_CNAE;
       ParamByName('PRI_UF').AsString := PRI_UF;
       ParamByName('PRI_CODIGO_REVENDA').AsInteger := PRI_CODIGO_REVENDA;
       ParamByName('PRI_IBGEEMITENTE').AsString := PRI_IBGEEMITENTE;
       ParamByName('PRI_NFE_NUMERO_S_CERTIFICADO').AsString := PRI_NFE_NUMERO_S_CERTIFICADO;
       ParamByName('PRI_NFE_SENHA_CERTIFICADO').AsString := PRI_NFE_SENHA_CERTIFICADO;
       ParamByName('PRI_NFE_CRIPTOGRAFIA').AsString := PRI_NFE_CRIPTOGRAFIA;
       ParamByName('PRI_NFE_SERVIDOR').AsString := PRI_NFE_SERVIDOR;
       ParamByName('PRI_NFE_DANFE').AsString := PRI_NFE_DANFE;
       ParamByName('PRI_NFE_EMISSAO').AsString := PRI_NFE_EMISSAO;
       ParamByName('PRI_NFE_REGIME').AsString := PRI_NFE_REGIME;
       ParamByName('PRI_NFE_ULT_NFE_S1').AsInteger := PRI_NFE_ULT_NFE_S1;
       ParamByName('PRI_NFE_ULT_NFE_S2').AsInteger := PRI_NFE_ULT_NFE_S2;
       ParamByName('PRI_NFE_CONF1').AsString := PRI_NFE_CONF1;
       ParamByName('PRI_NFE_CONF2').AsString := PRI_NFE_CONF2;
       ParamByName('PRI_NFE_CONF3').AsString := PRI_NFE_CONF3;
       ParamByName('PRI_NFE_CONF4').AsString := PRI_NFE_CONF4;
       ParamByName('PRI_NFE_CONF5').AsString := PRI_NFE_CONF5;
       ParamByName('PRI_NFE_CONF6').AsString := PRI_NFE_CONF6;
       ParamByName('PRI_NFE_CONF7').AsString := PRI_NFE_CONF7;
       ParamByName('PRI_NFE_CONF8').AsString := PRI_NFE_CONF8;
       ParamByName('PRI_NFE_CONF9').AsString := PRI_NFE_CONF9 ;
       ParamByName('PRI_NFE_CONF10').AsString := PRI_NFE_CONF10;
       ParamByName('PRI_NFE_CONF11').AsString := PRI_NFE_CONF11;
       ParamByName('PRI_NFE_CONF12').AsString := PRI_NFE_CONF12;
       ParamByName('PRI_NFE_CONF13').AsString := PRI_NFE_CONF13;
       ParamByName('PRI_NFE_CONF14').AsString := PRI_NFE_CONF14;
       ParamByName('PRI_NFE_CONF15').AsString := PRI_NFE_CONF15;
       ParamByName('PRI_NFE_CONF16').AsString := PRI_NFE_CONF16;
       ParamByName('PRI_NFE_CONF17').AsString := PRI_NFE_CONF17 ;
       ParamByName('PRI_NFE_CONF18').AsString := PRI_NFE_CONF18;
       ParamByName('PRI_NFE_CONF19').AsString := PRI_NFE_CONF19;
       ParamByName('PRI_NFE_CONF20').AsString := PRI_NFE_CONF20;
       ParamByName('PRI_NFE_CONF21').AsString := PRI_NFE_CONF21;
       ParamByName('PRI_EMAIL_HOST').AsString := PRI_NFE_CONF21;
       ParamByName('PRI_EMAIL_PORTA').AsString := PRI_EMAIL_PORTA;
       ParamByName('PRI_EMAIL_EMAIL').AsString := PRI_EMAIL_EMAIL;
       ParamByName('PRI_EMAIL_SENHA').AsString := PRI_EMAIL_SENHA;
       ParamByName('PRI_PDC_VENDA_NFCE').AsString := PRI_PDC_VENDA_NFCE;
       ParamByName('PRI_PDC_VENDA_NFCE_ID').asinteger := PRI_PDC_VENDA_NFCE_ID;
       ParamByName('PRI_PDC_DUPLICATAS').AsString := PRI_PDC_DUPLICATAS;
       ParamByName('PRI_PDC_DUPLICATAS_ID').asinteger := PRI_PDC_DUPLICATAS_ID;
       ParamByName('PRI_PDC_TROCA_DEVOLUCOES').AsString := PRI_PDC_TROCA_DEVOLUCOES;
       ParamByName('PRI_PDC_TROCA_DEVOLUCOES_ID').asinteger := PRI_PDC_TROCA_DEVOLUCOES_ID;
       ParamByName('PRI_PRODUTOS_CONF1').AsString := PRI_PRODUTOS_CONF1;
       ParamByName('PRI_PRODUTOS_CONF2').AsString := PRI_PRODUTOS_CONF2;
       ParamByName('PRI_PRODUTOS_CONF3').AsString := PRI_PRODUTOS_CONF3;
       ParamByName('PRI_PRODUTOS_CONF4').AsString := PRI_PRODUTOS_CONF4;
       ParamByName('PRI_PRODUTOS_CONF5').AsString := PRI_PRODUTOS_CONF5;
       ParamByName('PRI_PRODUTOS_CONF6').AsString := PRI_PRODUTOS_CONF6;
       ParamByName('PRI_PRODUTOS_CONF7').AsString := PRI_PRODUTOS_CONF7;
       ParamByName('PRI_PRODUTOS_CONF8').AsString := PRI_PRODUTOS_CONF8;
       ParamByName('PRI_PREVENDA_CONF1').AsString := PRI_PREVENDA_CONF1;
       ParamByName('PRI_PREVENDA_CONF2').AsString := PRI_PREVENDA_CONF2;
       ParamByName('PRI_PREVENDA_CONF3').AsString := PRI_PREVENDA_CONF3;
       ParamByName('PRI_PREVENDA_CONF4').AsString := PRI_PREVENDA_CONF4;
       ParamByName('PRI_PDV_IDCSC').AsString :=  PRI_PDV_IDCSC;
       ParamByName('PRI_PDV_CODIGOCSC').AsString :=  PRI_PDV_CODIGOCSC;
       ParamByName('PRI_PDV_SERVIDOR').AsString := PRI_PDV_SERVIDOR;
       ParamByName('PRI_PDV_DANFE').AsString := PRI_PDV_DANFE;
       ParamByName('PRI_PDV_EMISSAO').AsString := PRI_PDV_EMISSAO;
       ParamByName('PRI_PDV_ULT_NFCE_S1').AsInteger := PRI_PDV_ULT_NFCE_S1;
       ParamByName('PRI_PDV_ULT_NFCE_S2').AsInteger := PRI_PDV_ULT_NFCE_S2;
       ParamByName('PRI_CLIENTE_CONF1').AsString := PRI_CLIENTE_CONF1;
       ParamByName('PRI_CLIENTE_CONF2').AsString := PRI_CLIENTE_CONF2;
       ParamByName('PRI_CLIENTE_CONF3').AsString := PRI_CLIENTE_CONF3;
       ParamByName('PRI_CLIENTE_CONF4').AsString := PRI_CLIENTE_CONF4;
       ParamByName('PRI_CLIENTE_CONF5').AsString := PRI_CLIENTE_CONF5;
       ParamByName('PRI_CLIENTE_CONF6').AsString := PRI_CLIENTE_CONF6;
       ParamByName('PRI_CLIENTE_CONF7').AsString := PRI_CLIENTE_CONF7;
       ParamByName('PRI_CLIENTE_CONF8').AsString := PRI_CLIENTE_CONF8 ;
       ParamByName('PRI_CR_JUROSVENDAPRAZO').AsString := PRI_CR_JUROSVENDAPRAZO;
       ParamByName('PRI_CR_JUROSPARCELAATRAZADA').AsString := PRI_CR_JUROSPARCELAATRAZADA;
       ParamByName('PRI_CR_JUROSIMPLES').AsString :=PRI_CR_JUROSIMPLES ;
       ParamByName('PRI_CR_JUROCOMPOSTO').AsString := PRI_CR_JUROCOMPOSTO;
       ParamByName('PRI_CR_JUROSVENDAPRAZO_PARCELAS').AsInteger := PRI_CR_JUROSVENDAPRAZO_PARCELAS;
       ParamByName('PRI_CR_JUROSVENDAPRAZO_PORC').AsFloat := PRI_CR_JUROSVENDAPRAZO_PORC;
       ParamByName('PRI_CR_JUROSVENDAPRAZO_ATR_PORC').AsFloat :=  PRI_CR_JUROSVENDAPRAZO_ATR_PORC;
       ParamByName('PRI_CR_MULTA').AsFloat :=  PRI_CR_MULTA ;
       ParamByName('PRI_FP_BOLETO').AsString := PRI_FP_BOLETO;
       ParamByName('PRI_FP_CARTAO').AsString := PRI_FP_CARTAO;
       ParamByName('PRI_FB_CHEQUE').AsString := PRI_FB_CHEQUE ;
       ParamByName('PRI_FB_CREDIARIO').AsString := PRI_FB_CREDIARIO;
       ParamByName('PRI_FB_DINHEIRO').AsString := PRI_FB_DINHEIRO;
       ParamByName('PRI_FB_VALE_ALIMENTACAO').AsString := PRI_FB_VALE_ALIMENTACAO;
       ParamByName('PRI_FB_VALE_REFEICAO').AsString := PRI_FB_VALE_REFEICAO;
       ParamByName('PRI_COMISSAO_PRODUTO').AsString :=  PRI_COMISSAO_PRODUTO ;
       ParamByName('PRI_COMISSAO_GRUPO').AsString := PRI_COMISSAO_GRUPO;
       ParamByName('PRI_COMISSAO_VENDEDOR').AsString :=  PRI_COMISSAO_VENDEDOR;
       ParamByName('PRI_COMISSAO_AORECEBER').AsString :=  PRI_COMISSAO_AORECEBER;
       ParamByName('PRI_COMISSAO_AOFATURAR').AsString :=  PRI_COMISSAO_AOFATURAR;
       ParamByName('PRI_COMISSAO_FP').AsString := PRI_COMISSAO_FP;
       ParamByName('PRI_COMISSAO_FP_DINHEIRO').AsFloat := PRI_COMISSAO_FP_DINHEIRO;
       ParamByName('PRI_COMISSAO_FP_DEBITO').AsFloat := PRI_COMISSAO_FP_DEBITO;
       ParamByName('PRI_COMISSAO_FP_CREDITO').AsFloat := PRI_COMISSAO_FP_CREDITO;
       ParamByName('PRI_COMISSAO_FP_CREDIARIO').AsFloat := PRI_COMISSAO_FP_CREDIARIO;
       ParamByName('PRI_COMISSOA_FP_CHEQUE').AsFloat :=  PRI_COMISSOA_FP_CHEQUE;
       ParamByName('PRI_CLIENTES').AsString :=  PRI_CLIENTES;
       ParamByName('PRI_PRODUTOS').AsString :=  PRI_PRODUTOS;
       ParamByName('PRI_COMPRAS').AsString :=  PRI_COMPRAS;
       ParamByName('PRI_RECEBER').AsString :=  PRI_RECEBER;
       ParamByName('PRI_APAGAR').AsString :=  PRI_APAGAR;
       ParamByName('PRI_NFE').AsString :=  PRI_NFE;
       ParamByName('PRI_NFSE').AsString :=  PRI_NFSE;
       ParamByName('PRI_CTE').AsString :=  PRI_CTE;
       ParamByName('PRI_MDFE').AsString :=  PRI_MDFE;
       ParamByName('PRI_BANCO').AsString :=  PRI_BANCO;
       ParamByName('PRI_CAIXA').AsString :=  PRI_CAIXA;
       ParamByName('PRI_ORCAMENTO').AsString :=  PRI_ORCAMENTO;
       ParamByName('PRI_OS').AsString :=  PRI_OS;
       ParamByName('PRI_PDV').AsString :=  PRI_PDV;
       ParamByName('PRI_PREVENDA').AsString :=  PRI_PREVENDA;
       ParamByName('PRI_BAIRRO').AsString :=  PRI_BAIRRO;
       ParamByName('PRI_NFE_CONF22').AsString :=  PRI_NFE_CONF22;
       ParamByName('PRI_NFE_CFOPPADRAO').AsString :=  PRI_NFE_CFOPPADRAO;
       ParamByName('PRI_PDC_VENDA_NFE').AsString :=  PRI_PDC_VENDA_NFE;
       ParamByName('PRI_PDC_VENDA_NFE_ID').AsInteger :=  PRI_PDC_VENDA_NFE_ID;
       ParamByName('PRI_PRE_CONF1').AsString :=  PRI_PRE_CONF1;
       ParamByName('PRI_PRE_CONF2').AsString :=  PRI_PRE_CONF2;
       ParamByName('PRI_PRE_CONF3').AsString :=  PRI_PRE_CONF3;
       ParamByName('PRI_PRE_CONF4').AsString :=  PRI_PRE_CONF4;
       ParamByName('PRI_PRE_CONF5').AsString :=  PRI_PRE_CONF5;
       ParamByName('PRI_PRE_CONF6').AsString :=  PRI_PRE_CONF6;
       ParamByName('PRI_PRE_CONF7').AsString :=  PRI_PRE_CONF7;
       ParamByName('PRI_PRE_CONF8').AsString :=  PRI_PRE_CONF8;
       ParamByName('PRI_PRE_CONF9').AsString :=  PRI_PRE_CONF9;
       ParamByName('PRI_PRE_CONF10').AsString :=  PRI_PRE_CONF10;
       ParamByName('PRI_PDC_RECEBIMENTOS').AsString :=  PRI_PDC_RECEBIMENTOS;
       ParamByName('PRI_PDC_RECEBIMENTOS_ID').AsInteger :=  PRI_PDC_RECEBIMENTOS_ID;
       ParamByName('PRI_PDV_FRASE').AsString :=  PRI_PDV_FRASE;
       ExecSQL;
    end;
  finally
     FreeandNil(q1);
  end;

end;

procedure TPrincipalModel.Read(ObjPRINCIPAL: TPrincipalModel; Codigo: Integer);
begin

end;

procedure TPrincipalModel.SetPRI_APAGAR(const Value: String);
begin
  FPRI_APAGAR := Value;
end;

procedure TPrincipalModel.SetPRI_BAIRRO(const Value: String);
begin
  FPRI_BAIRRO := Value;
end;

procedure TPrincipalModel.SetPRI_BANCO(const Value: String);
begin
  FPRI_BANCO := Value;
end;

procedure TPrincipalModel.SetPRI_CAIXA(const Value: String);
begin
  FPRI_CAIXA := Value;
end;

procedure TPrincipalModel.SetPRI_CAIXA_CONF1(const Value: string);
begin
  FPRI_CAIXA_CONF1 := Value;
end;

procedure TPrincipalModel.SetPRI_CAIXA_CONF2(const Value: string);
begin
  FPRI_CAIXA_CONF2 := Value;
end;

procedure TPrincipalModel.SetPRI_CEP(const Value: String);
begin
  FPRI_CEP := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTES(const Value: String);
begin
  FPRI_CLIENTES := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTE_CONF1(const Value: String);
begin
  FPRI_CLIENTE_CONF1 := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTE_CONF2(const Value: String);
begin
  FPRI_CLIENTE_CONF2 := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTE_CONF3(const Value: String);
begin
  FPRI_CLIENTE_CONF3 := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTE_CONF4(const Value: String);
begin
  FPRI_CLIENTE_CONF4 := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTE_CONF5(const Value: String);
begin
  FPRI_CLIENTE_CONF5 := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTE_CONF6(const Value: String);
begin
  FPRI_CLIENTE_CONF6 := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTE_CONF7(const Value: String);
begin
  FPRI_CLIENTE_CONF7 := Value;
end;

procedure TPrincipalModel.SetPRI_CLIENTE_CONF8(const Value: String);
begin
  FPRI_CLIENTE_CONF8 := Value;
end;

procedure TPrincipalModel.SetPRI_CNAE(const Value: String);
begin
  FPRI_CNAE := Value;
end;

procedure TPrincipalModel.SetPRI_CODIGO(const Value: Integer);
begin
  FPRI_CODIGO := Value;
end;

procedure TPrincipalModel.SetPRI_CODIGO_REVENDA(const Value: Integer);
begin
  FPRI_CODIGO_REVENDA := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_AOFATURAR(const Value: String);
begin
  FPRI_COMISSAO_AOFATURAR := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_AORECEBER(const Value: String);
begin
  FPRI_COMISSAO_AORECEBER := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_FP(const Value: String);
begin
  FPRI_COMISSAO_FP := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_FP_CREDIARIO(const Value: Double);
begin
  FPRI_COMISSAO_FP_CREDIARIO := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_FP_CREDITO(const Value: Double);
begin
  FPRI_COMISSAO_FP_CREDITO := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_FP_DEBITO(const Value: Double);
begin
  FPRI_COMISSAO_FP_DEBITO := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_FP_DINHEIRO(const Value: Double);
begin
  FPRI_COMISSAO_FP_DINHEIRO := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_GRUPO(const Value: String);
begin
  FPRI_COMISSAO_GRUPO := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_PRODUTO(const Value: String);
begin
  FPRI_COMISSAO_PRODUTO := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSAO_VENDEDOR(const Value: String);
begin
  FPRI_COMISSAO_VENDEDOR := Value;
end;

procedure TPrincipalModel.SetPRI_COMISSOA_FP_CHEQUE(const Value: Double);
begin
  FPRI_COMISSOA_FP_CHEQUE := Value;
end;

procedure TPrincipalModel.SetPRI_COMPRAS(const Value: String);
begin
  FPRI_COMPRAS := Value;
end;

procedure TPrincipalModel.SetPRI_CPFCNPJ(const Value: String);
begin
  FPRI_CPFCNPJ := Value;
end;

procedure TPrincipalModel.SetPRI_CR_JUROCOMPOSTO(const Value: String);
begin
  FPRI_CR_JUROCOMPOSTO := Value;
end;

procedure TPrincipalModel.SetPRI_CR_JUROSIMPLES(const Value: String);
begin
  FPRI_CR_JUROSIMPLES := Value;
end;

procedure TPrincipalModel.SetPRI_CR_JUROSPARCELAATRAZADA(const Value: String);
begin
  FPRI_CR_JUROSPARCELAATRAZADA := Value;
end;

procedure TPrincipalModel.SetPRI_CR_JUROSVENDAPRAZO(const Value: String);
begin
  FPRI_CR_JUROSVENDAPRAZO := Value;
end;

procedure TPrincipalModel.SetPRI_CR_JUROSVENDAPRAZO_ATR_PORC(
  const Value: Double);
begin
  FPRI_CR_JUROSVENDAPRAZO_ATR_PORC := Value;
end;

procedure TPrincipalModel.SetPRI_CR_JUROSVENDAPRAZO_PARCELAS(
  const Value: Integer);
begin
  FPRI_CR_JUROSVENDAPRAZO_PARCELAS := Value;
end;

procedure TPrincipalModel.SetPRI_CR_JUROSVENDAPRAZO_PORC(const Value: Double);
begin
  FPRI_CR_JUROSVENDAPRAZO_PORC := Value;
end;

procedure TPrincipalModel.SetPRI_CR_MULTA(const Value: Double);
begin
  FPRI_CR_MULTA := Value;
end;

procedure TPrincipalModel.SetPRI_CTE(const Value: String);
begin
  FPRI_CTE := Value;
end;

procedure TPrincipalModel.SetPRI_EMAIL_EMAIL(const Value: String);
begin
  FPRI_EMAIL_EMAIL := Value;
end;

procedure TPrincipalModel.SetPRI_EMAIL_HOST(const Value: String);
begin
  FPRI_EMAIL_HOST := Value;
end;

procedure TPrincipalModel.SetPRI_EMAIL_PORTA(const Value: String);
begin
  FPRI_EMAIL_PORTA := Value;
end;

procedure TPrincipalModel.SetPRI_EMAIL_SENHA(const Value: String);
begin
  FPRI_EMAIL_SENHA := Value;
end;

procedure TPrincipalModel.SetPRI_ENDERECO(const Value: String);
begin
  FPRI_ENDERECO := Value;
end;

procedure TPrincipalModel.SetPRI_FANTASIA(const Value: String);
begin
  FPRI_FANTASIA := Value;
end;

procedure TPrincipalModel.SetPRI_FB_CHEQUE(const Value: String);
begin
  FPRI_FB_CHEQUE := Value;
end;

procedure TPrincipalModel.SetPRI_FB_CREDIARIO(const Value: String);
begin
  FPRI_FB_CREDIARIO := Value;
end;

procedure TPrincipalModel.SetPRI_FB_DINHEIRO(const Value: String);
begin
  FPRI_FB_DINHEIRO := Value;
end;

procedure TPrincipalModel.SetPRI_FB_VALE_ALIMENTACAO(const Value: String);
begin
  FPRI_FB_VALE_ALIMENTACAO := Value;
end;

procedure TPrincipalModel.SetPRI_FB_VALE_REFEICAO(const Value: String);
begin
  FPRI_FB_VALE_REFEICAO := Value;
end;

procedure TPrincipalModel.SetPRI_FP_BOLETO(const Value: String);
begin
  FPRI_FP_BOLETO := Value;
end;

procedure TPrincipalModel.SetPRI_FP_CARTAO(const Value: String);
begin
  FPRI_FP_CARTAO := Value;
end;

procedure TPrincipalModel.SetPRI_IBGEEMITENTE(const Value: String);
begin
  FPRI_IBGEEMITENTE := Value;
end;

procedure TPrincipalModel.SetPRI_IE(const Value: String);
begin
  FPRI_IE := Value;
end;

procedure TPrincipalModel.SetPRI_IM(const Value: String);
begin
  FPRI_IM := Value;
end;

procedure TPrincipalModel.SetPRI_MDFE(const Value: String);
begin
  FPRI_MDFE := Value;
end;

procedure TPrincipalModel.SetPRI_MUNICIPIO(const Value: String);
begin
  FPRI_MUNICIPIO := Value;
end;

procedure TPrincipalModel.SetPRI_NFE(const Value: String);
begin
  FPRI_NFE := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CFOPPADRAO(const Value: String);
begin
  FPRI_NFE_CFOPPADRAO := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF1(const Value: String);
begin
  FPRI_NFE_CONF1 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF10(const Value: String);
begin
  FPRI_NFE_CONF10 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF11(const Value: String);
begin
  FPRI_NFE_CONF11 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF12(const Value: String);
begin
  FPRI_NFE_CONF12 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF13(const Value: String);
begin
  FPRI_NFE_CONF13 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF14(const Value: String);
begin
  FPRI_NFE_CONF14 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF15(const Value: String);
begin
  FPRI_NFE_CONF15 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF16(const Value: String);
begin
  FPRI_NFE_CONF16 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF17(const Value: String);
begin
  FPRI_NFE_CONF17 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF18(const Value: String);
begin
  FPRI_NFE_CONF18 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF19(const Value: String);
begin
  FPRI_NFE_CONF19 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF2(const Value: String);
begin
  FPRI_NFE_CONF2 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF20(const Value: String);
begin
  FPRI_NFE_CONF20 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF21(const Value: String);
begin
  FPRI_NFE_CONF21 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF22(const Value: String);
begin
  FPRI_NFE_CONF22 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF3(const Value: String);
begin
  FPRI_NFE_CONF3 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF4(const Value: String);
begin
  FPRI_NFE_CONF4 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF5(const Value: String);
begin
  FPRI_NFE_CONF5 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF6(const Value: String);
begin
  FPRI_NFE_CONF6 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF7(const Value: String);
begin
  FPRI_NFE_CONF7 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF8(const Value: String);
begin
  FPRI_NFE_CONF8 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CONF9(const Value: String);
begin
  FPRI_NFE_CONF9 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_CRIPTOGRAFIA(const Value: String);
begin
  FPRI_NFE_CRIPTOGRAFIA := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_DANFE(const Value: String);
begin
  FPRI_NFE_DANFE := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_EMISSAO(const Value: String);
begin
  FPRI_NFE_EMISSAO := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_NUMERO_S_CERTIFICADO(const Value: String);
begin
  FPRI_NFE_NUMERO_S_CERTIFICADO := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_REGIME(const Value: String);
begin
  FPRI_NFE_REGIME := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_SENHA_CERTIFICADO(const Value: String);
begin
  FPRI_NFE_SENHA_CERTIFICADO := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_SERVIDOR(const Value: String);
begin
  FPRI_NFE_SERVIDOR := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_ULT_NFE_S1(const Value: Integer);
begin
  FPRI_NFE_ULT_NFE_S1 := Value;
end;

procedure TPrincipalModel.SetPRI_NFE_ULT_NFE_S2(const Value: Integer);
begin
  FPRI_NFE_ULT_NFE_S2 := Value;
end;

procedure TPrincipalModel.SetPRI_NFSE(const Value: String);
begin
  FPRI_NFSE := Value;
end;

procedure TPrincipalModel.SetPRI_NUMERO(const Value: String);
begin
  FPRI_NUMERO := Value;
end;

procedure TPrincipalModel.SetPRI_NUMERO_PREVENDA(const Value: Integer);
begin
  FPRI_NUMERO_PREVENDA := Value;
end;

procedure TPrincipalModel.SetPRI_ORCAMENTO(const Value: String);
begin
  FPRI_ORCAMENTO := Value;
end;

procedure TPrincipalModel.SetPRI_OS(const Value: String);
begin
  FPRI_OS := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_DUPLICATAS(const Value: String);
begin
  FPRI_PDC_DUPLICATAS := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_DUPLICATAS_ID(const Value: integer);
begin
  FPRI_PDC_DUPLICATAS_ID := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_RECEBIMENTOS(const Value: String);
begin
  FPRI_PDC_RECEBIMENTOS := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_RECEBIMENTOS_ID(const Value: Integer);
begin
  FPRI_PDC_RECEBIMENTOS_ID := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_TROCA_DEVOLUCOES(const Value: String);
begin
  FPRI_PDC_TROCA_DEVOLUCOES := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_TROCA_DEVOLUCOES_ID(const Value: integer);
begin
  FPRI_PDC_TROCA_DEVOLUCOES_ID := Value;
end;


procedure TPrincipalModel.SetPRI_PDC_VENDA_NFCE(const Value: String);
begin
  FPRI_PDC_VENDA_NFCE := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_VENDA_NFCE_ID(const Value: Integer);
begin
  FPRI_PDC_VENDA_NFCE_ID := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_VENDA_NFE(const Value: String);
begin
  FPRI_PDC_VENDA_NFE := Value;
end;

procedure TPrincipalModel.SetPRI_PDC_VENDA_NFE_ID(const Value: Integer);
begin
  FPRI_PDC_VENDA_NFE_ID := Value;
end;

procedure TPrincipalModel.SetPRI_PDV(const Value: String);
begin
  FPRI_PDV := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CODIGOCSC(const Value: String);
begin
  FPRI_PDV_CODIGOCSC := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CONF1(const Value: String);
begin
  FPRI_PDV_CONF1 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CONF2(const Value: String);
begin
  FPRI_PDV_CONF2 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CONF3(const Value: String);
begin
  FPRI_PDV_CONF3 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CONF4(const Value: String);
begin
  FPRI_PDV_CONF4 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CONF5(const Value: String);
begin
  FPRI_PDV_CONF5 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CONF6(const Value: String);
begin
  FPRI_PDV_CONF6 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CONF7(const Value: string);
begin
  FPRI_PDV_CONF7 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_CONF8(const Value: string);
begin
  FPRI_PDV_CONF8 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_DANFE(const Value: String);
begin
  FPRI_PDV_DANFE := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_EMISSAO(const Value: String);
begin
  FPRI_PDV_EMISSAO := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_FRASE(const Value: String);
begin
  FPRI_PDV_FRASE := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_IDCSC(const Value: String);
begin
  FPRI_PDV_IDCSC := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_SERVIDOR(const Value: String);
begin
  FPRI_PDV_SERVIDOR := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_ULT_NFCE_S1(const Value: Integer);
begin
  FPRI_PDV_ULT_NFCE_S1 := Value;
end;

procedure TPrincipalModel.SetPRI_PDV_ULT_NFCE_S2(const Value: Integer);
begin
  FPRI_PDV_ULT_NFCE_S2 := Value;
end;

procedure TPrincipalModel.SetPRI_PREVENDA(const Value: String);
begin
  FPRI_PREVENDA := Value;
end;

procedure TPrincipalModel.SetPRI_PREVENDA_CONF1(const Value: String);
begin
  FPRI_PREVENDA_CONF1 := Value;
end;

procedure TPrincipalModel.SetPRI_PREVENDA_CONF2(const Value: String);
begin
  FPRI_PREVENDA_CONF2 := Value;
end;

procedure TPrincipalModel.SetPRI_PREVENDA_CONF3(const Value: String);
begin
  FPRI_PREVENDA_CONF3 := Value;
end;

procedure TPrincipalModel.SetPRI_PREVENDA_CONF4(const Value: String);
begin
  FPRI_PREVENDA_CONF4 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF1(const Value: String);
begin
  FPRI_PRE_CONF1 := Value;
end;

procedure TPrincipalModel.Setpri_pre_conf10(const Value: String);
begin
  Fpri_pre_conf10 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF2(const Value: String);
begin
  FPRI_PRE_CONF2 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF3(const Value: String);
begin
  FPRI_PRE_CONF3 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF4(const Value: String);
begin
  FPRI_PRE_CONF4 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF5(const Value: String);
begin
  FPRI_PRE_CONF5 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF6(const Value: String);
begin
  FPRI_PRE_CONF6 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF7(const Value: String);
begin
  FPRI_PRE_CONF7 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF8(const Value: String);
begin
  FPRI_PRE_CONF8 := Value;
end;

procedure TPrincipalModel.SetPRI_PRE_CONF9(const Value: String);
begin
  FPRI_PRE_CONF9 := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS(const Value: String);
begin
  FPRI_PRODUTOS := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS_CONF1(const Value: String);
begin
  FPRI_PRODUTOS_CONF1 := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS_CONF2(const Value: String);
begin
  FPRI_PRODUTOS_CONF2 := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS_CONF3(const Value: String);
begin
  FPRI_PRODUTOS_CONF3 := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS_CONF4(const Value: String);
begin
  FPRI_PRODUTOS_CONF4 := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS_CONF5(const Value: String);
begin
  FPRI_PRODUTOS_CONF5 := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS_CONF6(const Value: String);
begin
  FPRI_PRODUTOS_CONF6 := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS_CONF7(const Value: String);
begin
  FPRI_PRODUTOS_CONF7 := Value;
end;

procedure TPrincipalModel.SetPRI_PRODUTOS_CONF8(const Value: String);
begin
  FPRI_PRODUTOS_CONF8 := Value;
end;

procedure TPrincipalModel.SetPRI_RAZAO(const Value: String);
begin
  FPRI_RAZAO := Value;
end;

procedure TPrincipalModel.SetPRI_RECEBER(const Value: String);
begin
  FPRI_RECEBER := Value;
end;

procedure TPrincipalModel.SetPRI_RESPONSAVEL(const Value: String);
begin
  FPRI_RESPONSAVEL := Value;
end;

procedure TPrincipalModel.SetPRI_TELEFONE(const Value: String);
begin
  FPRI_TELEFONE := Value;
end;

procedure TPrincipalModel.SetPRI_UF(const Value: String);
begin
  FPRI_UF := Value;
end;

procedure TPrincipalModel.SetPRI_UUID(const Value: String);
begin
  FPRI_UUID := Value;
end;

procedure TPrincipalModel.SetPRI_VENCIMENTO_CERTIFICADO(const Value: Tdate);
begin
  FPRI_VENCIMENTO_CERTIFICADO := Value;
end;

procedure TPrincipalModel.Update(ObjPRINCIPAL: TPrincipalModel);
var
q1 : TFDquery;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;

  try
    with q1 do
    begin
       Close;
       sql.Clear;
       Sql.add('UPDATE  TB_PRINCIPAL SET');
       Sql.Add('PRI_CPFCNPJ = :PRI_CPFCNPJ');
       Sql.Add(',PRI_RAZAO = :PRI_RAZAO');
       Sql.Add(',PRI_FANTASIA = :PRI_FANTASIA');
       Sql.Add(',PRI_RESPONSAVEL= :PRI_RESPONSAVEL');
       Sql.Add(',PRI_IE= :PRI_IE');
       Sql.Add(',PRI_IM= :PRI_IM');
       Sql.Add(',PRI_ENDERECO= :PRI_ENDERECO');
       Sql.Add(',PRI_MUNICIPIO= :PRI_MUNICIPIO');
       Sql.Add(',PRI_NUMERO = :PRI_NUMERO');
       Sql.Add(',PRI_CEP = :PRI_CEP');
       Sql.Add(',PRI_TELEFONE = :PRI_TELEFONE');
       Sql.Add(',PRI_CNAE = :PRI_CNAE');
       Sql.Add(',PRI_UF = :PRI_UF');
       Sql.Add(',PRI_CODIGO_REVENDA = :PRI_CODIGO_REVENDA');
       Sql.Add(',PRI_IBGEEMITENTE = :PRI_IBGEEMITENTE');
       Sql.Add(',PRI_NFE_NUMERO_S_CERTIFICADO = :PRI_NFE_NUMERO_S_CERTIFICADO');
       Sql.Add(',PRI_NFE_SENHA_CERTIFICADO = :PRI_NFE_SENHA_CERTIFICADO');
       Sql.Add(',PRI_NFE_CRIPTOGRAFIA = :PRI_NFE_CRIPTOGRAFIA');
       Sql.Add(',PRI_NFE_SERVIDOR = :PRI_NFE_SERVIDOR');
       Sql.Add(',PRI_NFE_DANFE = :PRI_NFE_DANFE');
       Sql.Add(',PRI_NFE_EMISSAO = :PRI_NFE_EMISSAO');
       Sql.Add(',PRI_NFE_REGIME = :PRI_NFE_REGIME');
       Sql.Add(',PRI_NFE_ULT_NFE_S1 = :PRI_NFE_ULT_NFE_S1');
       Sql.Add(',PRI_NFE_ULT_NFE_S2 = :PRI_NFE_ULT_NFE_S2');
       Sql.Add(',PRI_NFE_CONF1 = :PRI_NFE_CONF1');
       Sql.Add(',PRI_NFE_CONF2 = :PRI_NFE_CONF2');
       Sql.Add(',PRI_NFE_CONF3 = :PRI_NFE_CONF3');
       Sql.Add(',PRI_NFE_CONF4 = :PRI_NFE_CONF4');
       Sql.Add(',PRI_NFE_CONF5 = :PRI_NFE_CONF5');
       Sql.Add(',PRI_NFE_CONF6 = :PRI_NFE_CONF6');
       Sql.Add(',PRI_NFE_CONF7 = :PRI_NFE_CONF7');
       Sql.Add(',PRI_NFE_CONF8 = :PRI_NFE_CONF8');
       Sql.Add(',PRI_NFE_CONF9 = :PRI_NFE_CONF9');
       Sql.Add(',PRI_NFE_CONF10 = :PRI_NFE_CONF10');
       Sql.Add(',PRI_NFE_CONF11 = :PRI_NFE_CONF11');
       Sql.Add(',PRI_NFE_CONF12 = :PRI_NFE_CONF12');
       Sql.Add(',PRI_NFE_CONF13 = :PRI_NFE_CONF13');
       Sql.Add(',PRI_NFE_CONF14 = :PRI_NFE_CONF14');
       Sql.Add(',PRI_NFE_CONF15 = :PRI_NFE_CONF15');
       Sql.Add(',PRI_NFE_CONF16 = :PRI_NFE_CONF16');
       Sql.Add(',PRI_NFE_CONF17 = :PRI_NFE_CONF17');
       Sql.Add(',PRI_NFE_CONF18 = :PRI_NFE_CONF18');
       Sql.Add(',PRI_NFE_CONF19 = :PRI_NFE_CONF19');
       Sql.Add(',PRI_NFE_CONF20 = :PRI_NFE_CONF20');
       Sql.Add(',PRI_NFE_CONF21 = :PRI_NFE_CONF21');
       Sql.Add(',PRI_EMAIL_HOST = :PRI_EMAIL_HOST');
       Sql.Add(',PRI_EMAIL_PORTA = :PRI_EMAIL_PORTA');
       Sql.Add(',PRI_EMAIL_EMAIL = :PRI_EMAIL_EMAIL');
       Sql.Add(',PRI_EMAIL_SENHA = :PRI_EMAIL_SENHA');
       Sql.Add(',PRI_PDC_VENDA_NFCE = :PRI_PDC_VENDA_NFCE');
       Sql.Add(',PRI_PDC_VENDA_NFCE_ID = :PRI_PDC_VENDA_NFCE_ID');
       Sql.Add(',PRI_PDC_DUPLICATAS = :PRI_PDC_DUPLICATAS');
       Sql.Add(',PRI_PDC_DUPLICATAS_ID = :PRI_PDC_DUPLICATAS_ID');
       Sql.Add(',PRI_PDC_TROCA_DEVOLUCOES = :PRI_PDC_TROCA_DEVOLUCOES');
       Sql.Add(',PRI_PDC_TROCA_DEVOLUCOES_ID = :PRI_PDC_TROCA_DEVOLUCOES_ID');
       Sql.Add(',PRI_PRODUTOS_CONF1 = :PRI_PRODUTOS_CONF1');
       Sql.Add(',PRI_PRODUTOS_CONF2 = :PRI_PRODUTOS_CONF2');
       Sql.Add(',PRI_PRODUTOS_CONF3 = :PRI_PRODUTOS_CONF3');
       Sql.Add(',PRI_PRODUTOS_CONF4 = :PRI_PRODUTOS_CONF4');
       Sql.Add(',PRI_PRODUTOS_CONF5 = :PRI_PRODUTOS_CONF5');
       Sql.Add(',PRI_PRODUTOS_CONF6 = :PRI_PRODUTOS_CONF6');
       Sql.Add(',PRI_PRODUTOS_CONF7 = :PRI_PRODUTOS_CONF7');
       Sql.Add(',PRI_PRODUTOS_CONF8 = :PRI_PRODUTOS_CONF8');
       Sql.Add(',PRI_PREVENDA_CONF1 = :PRI_PREVENDA_CONF1');
       Sql.Add(',PRI_PREVENDA_CONF2 = :PRI_PREVENDA_CONF2');
       Sql.Add(',PRI_PREVENDA_CONF3 = :PRI_PREVENDA_CONF3');
       Sql.Add(',PRI_PREVENDA_CONF4 = :PRI_PREVENDA_CONF4');
       Sql.Add(',PRI_PDV_IDCSC = :PRI_PDV_IDCSC');
       Sql.Add(',PRI_PDV_CODIGOCSC = :PRI_PDV_CODIGOCSC');
       Sql.Add(',PRI_PDV_SERVIDOR = :PRI_PDV_SERVIDOR');
       Sql.Add(',PRI_PDV_DANFE = :PRI_PDV_DANFE');
       Sql.Add(',PRI_PDV_EMISSAO = :PRI_PDV_EMISSAO');
       Sql.Add(',PRI_PDV_ULT_NFCE_S1 = :PRI_PDV_ULT_NFCE_S1');
       Sql.Add(',PRI_PDV_ULT_NFCE_S2 = :PRI_PDV_ULT_NFCE_S2');
       Sql.Add(',PRI_CLIENTE_CONF1 = :PRI_CLIENTE_CONF1');
       Sql.Add(',PRI_CLIENTE_CONF2 = :PRI_CLIENTE_CONF2');
       Sql.Add(',PRI_CLIENTE_CONF3 = :PRI_CLIENTE_CONF3');
       Sql.Add(',PRI_CLIENTE_CONF4 = :PRI_CLIENTE_CONF4');
       Sql.Add(',PRI_CLIENTE_CONF5 = :PRI_CLIENTE_CONF5');
       Sql.Add(',PRI_CLIENTE_CONF6 = :PRI_CLIENTE_CONF6');
       Sql.Add(',PRI_CLIENTE_CONF7 = :PRI_CLIENTE_CONF7');
       Sql.Add(',PRI_CLIENTE_CONF8 = :PRI_CLIENTE_CONF8');
       Sql.Add(',PRI_CR_JUROSVENDAPRAZO = :PRI_CR_JUROSVENDAPRAZO');
       Sql.Add(',PRI_CR_JUROSPARCELAATRAZADA = :PRI_CR_JUROSPARCELAATRAZADA');
       Sql.Add(',PRI_CR_JUROSIMPLES = :PRI_CR_JUROSIMPLES');
       Sql.Add(',PRI_CR_JUROCOMPOSTO = :PRI_CR_JUROCOMPOSTO');
       Sql.Add(',PRI_CR_JUROSVENDAPRAZO_PARCELAS = :PRI_CR_JUROSVENDAPRAZO_PARCELAS');
       Sql.Add(',PRI_CR_JUROSVENDAPRAZO_PORC = :PRI_CR_JUROSVENDAPRAZO_PORC');
       Sql.Add(',PRI_CR_JUROSVENDAPRAZO_ATR_PORC = :PRI_CR_JUROSVENDAPRAZO_ATR_PORC');
       Sql.Add(',PRI_CR_MULTA = :PRI_CR_MULTA');
       Sql.Add(',PRI_FP_BOLETO = :PRI_FP_BOLETO');
       Sql.Add(',PRI_FP_CARTAO = :PRI_FP_CARTAO');
       Sql.Add(',PRI_FB_CHEQUE = :PRI_FB_CHEQUE');
       Sql.Add(',PRI_FB_CREDIARIO = :PRI_FB_CREDIARIO');
       Sql.Add(',PRI_FB_DINHEIRO = :PRI_FB_DINHEIRO');
       Sql.Add(',PRI_FB_VALE_ALIMENTACAO = :PRI_FB_VALE_ALIMENTACAO');
       Sql.Add(',PRI_FB_VALE_REFEICAO = :PRI_FB_VALE_REFEICAO');
       Sql.Add(',PRI_COMISSAO_PRODUTO = :PRI_COMISSAO_PRODUTO');
       Sql.Add(',PRI_COMISSAO_GRUPO  = :PRI_COMISSAO_GRUPO');
       Sql.Add(',PRI_COMISSAO_VENDEDOR = :PRI_COMISSAO_VENDEDOR');
       Sql.Add(',PRI_COMISSAO_AORECEBER = :PRI_COMISSAO_AORECEBER');
       Sql.Add(',PRI_COMISSAO_AOFATURAR = :PRI_COMISSAO_AOFATURAR');
       Sql.Add(',PRI_COMISSAO_FP = :PRI_COMISSAO_FP');
       Sql.Add(',PRI_COMISSAO_FP_DINHEIRO = :PRI_COMISSAO_FP_DINHEIRO');
       Sql.Add(',PRI_COMISSAO_FP_DEBITO = :PRI_COMISSAO_FP_DEBITO');
       Sql.Add(',PRI_COMISSAO_FP_CREDITO = :PRI_COMISSAO_FP_CREDITO');
       Sql.Add(',PRI_COMISSAO_FP_CREDIARIO = :PRI_COMISSAO_FP_CREDIARIO');
       Sql.Add(',PRI_COMISSOA_FP_CHEQUE = :PRI_COMISSOA_FP_CHEQUE');
       Sql.Add(',PRI_CLIENTES = :PRI_CLIENTES');
       Sql.Add(',PRI_PRODUTOS = :PRI_PRODUTOS');
       Sql.Add(',PRI_COMPRAS = :PRI_COMPRAS');
       Sql.Add(',PRI_RECEBER = :PRI_RECEBER');
       Sql.Add(',PRI_APAGAR = :PRI_APAGAR');
       Sql.Add(',PRI_NFE = :PRI_NFE');
       Sql.Add(',PRI_NFSE = :PRI_NFSE');
       Sql.Add(',PRI_CTE = :PRI_CTE');
       Sql.Add(',PRI_MDFE = :PRI_MDFE');
       Sql.Add(',PRI_BANCO = :PRI_BANCO');
       Sql.Add(',PRI_CAIXA = :PRI_CAIXA');
       Sql.Add(',PRI_ORCAMENTO = :PRI_ORCAMENTO');
       Sql.Add(',PRI_OS = :PRI_OS');
       Sql.Add(',PRI_PDV = :PRI_PDV');
       Sql.Add(',PRI_PREVENDA =:PRI_PREVENDA');
       Sql.Add(',PRI_BAIRRO =:PRI_BAIRRO');
       Sql.Add(',PRI_NFE_CONF22 =:PRI_NFE_CONF22');
       Sql.Add(',PRI_NFE_CFOPPADRAO =:PRI_NFE_CFOPPADRAO');
       Sql.Add(',PRI_PDC_VENDA_NFE =:PRI_PDC_VENDA_NFE');
       Sql.Add(',PRI_PDC_VENDA_NFE_ID =:PRI_PDC_VENDA_NFE_ID');
       Sql.Add(',PRI_PRE_CONF1 =:PRI_PRE_CONF1');
       Sql.Add(',PRI_PRE_CONF2 =:PRI_PRE_CONF2');
       Sql.Add(',PRI_PRE_CONF3 =:PRI_PRE_CONF3');
       Sql.Add(',PRI_PRE_CONF4 =:PRI_PRE_CONF4');
       Sql.Add(',PRI_PRE_CONF5 =:PRI_PRE_CONF5');
       Sql.Add(',PRI_PRE_CONF6 =:PRI_PRE_CONF6');
       Sql.Add(',PRI_PRE_CONF7 =:PRI_PRE_CONF7');
       Sql.Add(',PRI_PRE_CONF8 =:PRI_PRE_CONF8');
       Sql.Add(',PRI_PRE_CONF9 =:PRI_PRE_CONF9');
       Sql.Add(',PRI_PRE_CONF10 =:PRI_PRE_CONF10');
       Sql.Add(',PRI_PDC_RECEBIMENTOS =:PRI_PDC_RECEBIMENTOS');
       Sql.Add(',PRI_PDC_RECEBIMENTOS_ID =:PRI_PDC_RECEBIMENTOS_ID');
       Sql.Add(',PRI_PDV_FRASE =:PRI_PDV_FRASE');
       Sql.Add('where pri_codigo =:pri_codigo');
       ParamByName('PRI_CODIGO').ASINTEGER := PRI_CODIGO;
       ParamByName('PRI_CPFCNPJ').AsString := PRI_CPFCNPJ;
       ParamByName('PRI_RAZAO').AsString :=  PRI_RAZAO;
       ParamByName('PRI_FANTASIA').AsString := PRI_FANTASIA;
       ParamByName('PRI_RESPONSAVEL').AsString := PRI_RESPONSAVEL;
       ParamByName('PRI_IE').AsString := PRI_IE ;
       ParamByName('PRI_IM').AsString := PRI_IM;
       ParamByName('PRI_ENDERECO').AsString := PRI_ENDERECO;
       ParamByName('PRI_MUNICIPIO').AsString := PRI_MUNICIPIO;
       ParamByName('PRI_NUMERO').AsString := PRI_NUMERO;
       ParamByName('PRI_CEP').AsString := PRI_CEP;
       ParamByName('PRI_TELEFONE').AsString := PRI_TELEFONE;
       ParamByName('PRI_CNAE').AsString := PRI_CNAE;
       ParamByName('PRI_UF').AsString := PRI_UF;
       ParamByName('PRI_CODIGO_REVENDA').AsInteger := PRI_CODIGO_REVENDA;
       ParamByName('PRI_IBGEEMITENTE').AsString := PRI_IBGEEMITENTE;
       ParamByName('PRI_NFE_NUMERO_S_CERTIFICADO').AsString := PRI_NFE_NUMERO_S_CERTIFICADO;
       ParamByName('PRI_NFE_SENHA_CERTIFICADO').AsString := PRI_NFE_SENHA_CERTIFICADO;
       ParamByName('PRI_NFE_CRIPTOGRAFIA').AsString := PRI_NFE_CRIPTOGRAFIA;
       ParamByName('PRI_NFE_SERVIDOR').AsString := PRI_NFE_SERVIDOR;
       ParamByName('PRI_NFE_DANFE').AsString := PRI_NFE_DANFE;
       ParamByName('PRI_NFE_EMISSAO').AsString := PRI_NFE_EMISSAO;
       ParamByName('PRI_NFE_REGIME').AsString := PRI_NFE_REGIME;
       ParamByName('PRI_NFE_ULT_NFE_S1').AsInteger := PRI_NFE_ULT_NFE_S1;
       ParamByName('PRI_NFE_ULT_NFE_S2').AsInteger := PRI_NFE_ULT_NFE_S2;
       ParamByName('PRI_NFE_CONF1').AsString := PRI_NFE_CONF1;
       ParamByName('PRI_NFE_CONF2').AsString := PRI_NFE_CONF2;
       ParamByName('PRI_NFE_CONF3').AsString := PRI_NFE_CONF3;
       ParamByName('PRI_NFE_CONF4').AsString := PRI_NFE_CONF4;
       ParamByName('PRI_NFE_CONF5').AsString := PRI_NFE_CONF5;
       ParamByName('PRI_NFE_CONF6').AsString := PRI_NFE_CONF6;
       ParamByName('PRI_NFE_CONF7').AsString := PRI_NFE_CONF7;
       ParamByName('PRI_NFE_CONF8').AsString := PRI_NFE_CONF8;
       ParamByName('PRI_NFE_CONF9').AsString := PRI_NFE_CONF9 ;
       ParamByName('PRI_NFE_CONF10').AsString := PRI_NFE_CONF10;
       ParamByName('PRI_NFE_CONF11').AsString := PRI_NFE_CONF11;
       ParamByName('PRI_NFE_CONF12').AsString := PRI_NFE_CONF12;
       ParamByName('PRI_NFE_CONF13').AsString := PRI_NFE_CONF13;
       ParamByName('PRI_NFE_CONF14').AsString := PRI_NFE_CONF14;
       ParamByName('PRI_NFE_CONF15').AsString := PRI_NFE_CONF15;
       ParamByName('PRI_NFE_CONF16').AsString := PRI_NFE_CONF16;
       ParamByName('PRI_NFE_CONF17').AsString := PRI_NFE_CONF17 ;
       ParamByName('PRI_NFE_CONF18').AsString := PRI_NFE_CONF18;
       ParamByName('PRI_NFE_CONF19').AsString := PRI_NFE_CONF19;
       ParamByName('PRI_NFE_CONF20').AsString := PRI_NFE_CONF20;
       ParamByName('PRI_NFE_CONF21').AsString := PRI_NFE_CONF21;
       ParamByName('PRI_EMAIL_HOST').AsString := PRI_NFE_CONF21;
       ParamByName('PRI_EMAIL_PORTA').AsString := PRI_EMAIL_PORTA;
       ParamByName('PRI_EMAIL_EMAIL').AsString := PRI_EMAIL_EMAIL;
       ParamByName('PRI_EMAIL_SENHA').AsString := PRI_EMAIL_SENHA;
       ParamByName('PRI_PDC_VENDA_NFCE').AsString := PRI_PDC_VENDA_NFCE;
       ParamByName('PRI_PDC_VENDA_NFCE_ID').asinteger := PRI_PDC_VENDA_NFCE_ID;
       ParamByName('PRI_PDC_DUPLICATAS').AsString := PRI_PDC_DUPLICATAS;
       ParamByName('PRI_PDC_DUPLICATAS_ID').asinteger := PRI_PDC_DUPLICATAS_ID;
       ParamByName('PRI_PDC_TROCA_DEVOLUCOES').AsString := PRI_PDC_TROCA_DEVOLUCOES;
       ParamByName('PRI_PDC_TROCA_DEVOLUCOES_ID').asinteger := PRI_PDC_TROCA_DEVOLUCOES_ID;
       ParamByName('PRI_PRODUTOS_CONF1').AsString := PRI_PRODUTOS_CONF1;
       ParamByName('PRI_PRODUTOS_CONF2').AsString := PRI_PRODUTOS_CONF2;
       ParamByName('PRI_PRODUTOS_CONF3').AsString := PRI_PRODUTOS_CONF3;
       ParamByName('PRI_PRODUTOS_CONF4').AsString := PRI_PRODUTOS_CONF4;
       ParamByName('PRI_PRODUTOS_CONF5').AsString := PRI_PRODUTOS_CONF5;
       ParamByName('PRI_PRODUTOS_CONF6').AsString := PRI_PRODUTOS_CONF6;
       ParamByName('PRI_PRODUTOS_CONF7').AsString := PRI_PRODUTOS_CONF7;
       ParamByName('PRI_PRODUTOS_CONF8').AsString := PRI_PRODUTOS_CONF8;
       ParamByName('PRI_PREVENDA_CONF1').AsString := PRI_PREVENDA_CONF1;
       ParamByName('PRI_PREVENDA_CONF2').AsString := PRI_PREVENDA_CONF2;
       ParamByName('PRI_PREVENDA_CONF3').AsString := PRI_PREVENDA_CONF3;
       ParamByName('PRI_PREVENDA_CONF4').AsString := PRI_PREVENDA_CONF4;
       ParamByName('PRI_PDV_IDCSC').AsString :=  PRI_PDV_IDCSC;
       ParamByName('PRI_PDV_CODIGOCSC').AsString :=  PRI_PDV_CODIGOCSC;
       ParamByName('PRI_PDV_SERVIDOR').AsString := PRI_PDV_SERVIDOR;
       ParamByName('PRI_PDV_DANFE').AsString := PRI_PDV_DANFE;
       ParamByName('PRI_PDV_EMISSAO').AsString := PRI_PDV_EMISSAO;
       ParamByName('PRI_PDV_ULT_NFCE_S1').AsInteger := PRI_PDV_ULT_NFCE_S1;
       ParamByName('PRI_PDV_ULT_NFCE_S2').AsInteger := PRI_PDV_ULT_NFCE_S2;
       ParamByName('PRI_CLIENTE_CONF1').AsString := PRI_CLIENTE_CONF1;
       ParamByName('PRI_CLIENTE_CONF2').AsString := PRI_CLIENTE_CONF2;
       ParamByName('PRI_CLIENTE_CONF3').AsString := PRI_CLIENTE_CONF3;
       ParamByName('PRI_CLIENTE_CONF4').AsString := PRI_CLIENTE_CONF4;
       ParamByName('PRI_CLIENTE_CONF5').AsString := PRI_CLIENTE_CONF5;
       ParamByName('PRI_CLIENTE_CONF6').AsString := PRI_CLIENTE_CONF6;
       ParamByName('PRI_CLIENTE_CONF7').AsString := PRI_CLIENTE_CONF7;
       ParamByName('PRI_CLIENTE_CONF8').AsString := PRI_CLIENTE_CONF8 ;
       ParamByName('PRI_CR_JUROSVENDAPRAZO').AsString := PRI_CR_JUROSVENDAPRAZO;
       ParamByName('PRI_CR_JUROSPARCELAATRAZADA').AsString := PRI_CR_JUROSPARCELAATRAZADA;
       ParamByName('PRI_CR_JUROSIMPLES').AsString :=PRI_CR_JUROSIMPLES ;
       ParamByName('PRI_CR_JUROCOMPOSTO').AsString := PRI_CR_JUROCOMPOSTO;
       ParamByName('PRI_CR_JUROSVENDAPRAZO_PARCELAS').AsInteger := PRI_CR_JUROSVENDAPRAZO_PARCELAS;
       ParamByName('PRI_CR_JUROSVENDAPRAZO_PORC').AsFloat := PRI_CR_JUROSVENDAPRAZO_PORC;
       ParamByName('PRI_CR_JUROSVENDAPRAZO_ATR_PORC').AsFloat :=  PRI_CR_JUROSVENDAPRAZO_ATR_PORC;
       ParamByName('PRI_CR_MULTA').AsFloat :=  PRI_CR_MULTA ;
       ParamByName('PRI_FP_BOLETO').AsString := PRI_FP_BOLETO;
       ParamByName('PRI_FP_CARTAO').AsString := PRI_FP_CARTAO;
       ParamByName('PRI_FB_CHEQUE').AsString := PRI_FB_CHEQUE ;
       ParamByName('PRI_FB_CREDIARIO').AsString := PRI_FB_CREDIARIO;
       ParamByName('PRI_FB_DINHEIRO').AsString := PRI_FB_DINHEIRO;
       ParamByName('PRI_FB_VALE_ALIMENTACAO').AsString := PRI_FB_VALE_ALIMENTACAO;
       ParamByName('PRI_FB_VALE_REFEICAO').AsString := PRI_FB_VALE_REFEICAO;
       ParamByName('PRI_COMISSAO_PRODUTO').AsString :=  PRI_COMISSAO_PRODUTO ;
       ParamByName('PRI_COMISSAO_GRUPO').AsString := PRI_COMISSAO_GRUPO;
       ParamByName('PRI_COMISSAO_VENDEDOR').AsString :=  PRI_COMISSAO_VENDEDOR;
       ParamByName('PRI_COMISSAO_FP').AsString := PRI_COMISSAO_FP;
       ParamByName('PRI_COMISSAO_FP_DINHEIRO').AsFloat := PRI_COMISSAO_FP_DINHEIRO;
       ParamByName('PRI_COMISSAO_FP_DEBITO').AsFloat := PRI_COMISSAO_FP_DEBITO;
       ParamByName('PRI_COMISSAO_FP_CREDITO').AsFloat := PRI_COMISSAO_FP_CREDITO;
       ParamByName('PRI_COMISSAO_FP_CREDIARIO').AsFloat := PRI_COMISSAO_FP_CREDIARIO;
       ParamByName('PRI_COMISSOA_FP_CHEQUE').AsFloat :=  PRI_COMISSOA_FP_CHEQUE;
       ParamByName('PRI_COMISSAO_AORECEBER').AsString :=  PRI_COMISSAO_AORECEBER;
       ParamByName('PRI_COMISSAO_AOFATURAR').AsString :=  PRI_COMISSAO_AOFATURAR;
       ParamByName('PRI_CLIENTES').AsString :=  PRI_CLIENTES;
       ParamByName('PRI_PRODUTOS').AsString :=  PRI_PRODUTOS;
       ParamByName('PRI_COMPRAS').AsString :=  PRI_COMPRAS;
       ParamByName('PRI_RECEBER').AsString :=  PRI_RECEBER;
       ParamByName('PRI_APAGAR').AsString :=  PRI_APAGAR;
       ParamByName('PRI_NFE').AsString :=  PRI_NFE;
       ParamByName('PRI_NFSE').AsString :=  PRI_NFSE;
       ParamByName('PRI_CTE').AsString :=  PRI_CTE;
       ParamByName('PRI_MDFE').AsString :=  PRI_MDFE;
       ParamByName('PRI_BANCO').AsString :=  PRI_BANCO;
       ParamByName('PRI_CAIXA').AsString :=  PRI_CAIXA;
       ParamByName('PRI_ORCAMENTO').AsString :=  PRI_ORCAMENTO;
       ParamByName('PRI_OS').AsString :=  PRI_OS;
       ParamByName('PRI_PDV').AsString :=  PRI_PDV;
       ParamByName('PRI_PREVENDA').AsString :=  PRI_PREVENDA;
       ParamByName('PRI_BAIRRO').AsString :=  PRI_BAIRRO;
       ParamByName('PRI_NFE_CONF22').AsString :=  PRI_NFE_CONF22;
       ParamByName('PRI_NFE_CFOPPADRAO').AsString :=  PRI_NFE_CFOPPADRAO;
       ParamByName('PRI_PDC_VENDA_NFE').AsString :=  PRI_PDC_VENDA_NFE;
       ParamByName('PRI_PDC_VENDA_NFE_ID').AsInteger :=  PRI_PDC_VENDA_NFE_ID;

       ParamByName('PRI_PRE_CONF1').AsString :=  PRI_PRE_CONF1;
       ParamByName('PRI_PRE_CONF2').AsString :=  PRI_PRE_CONF2;
       ParamByName('PRI_PRE_CONF3').AsString :=  PRI_PRE_CONF3;
       ParamByName('PRI_PRE_CONF4').AsString :=  PRI_PRE_CONF4;
       ParamByName('PRI_PRE_CONF5').AsString :=  PRI_PRE_CONF5;
       ParamByName('PRI_PRE_CONF6').AsString :=  PRI_PRE_CONF6;
       ParamByName('PRI_PRE_CONF7').AsString :=  PRI_PRE_CONF7;
       ParamByName('PRI_PRE_CONF8').AsString :=  PRI_PRE_CONF8;
       ParamByName('PRI_PRE_CONF9').AsString :=  PRI_PRE_CONF9;
       ParamByName('PRI_PRE_CONF10').AsString :=  PRI_PRE_CONF10;

       ParamByName('PRI_PDC_RECEBIMENTOS').AsString :=  PRI_PDC_RECEBIMENTOS;
       ParamByName('PRI_PDC_RECEBIMENTOS_ID').AsInteger :=  PRI_PDC_RECEBIMENTOS_ID;
       ParamByName('PRI_PDV_FRASE').AsString :=  PRI_PDV_FRASE;
       ExecSQL;
    end;
  finally
     FreeandNil(q1);
  end;

end;

end.
