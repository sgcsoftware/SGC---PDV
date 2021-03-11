unit MiniSoft.Model.Nfce;

interface
 uses Firedac.Comp.Client, Conexao, System.SysUtils, inifiles, pcnConversaoNFe, pcnConversao,
  Vcl.Forms, ACBrDFeSSL, blcksock, Vcl.Dialogs, MiniSoft.Funcoes,
  Winapi.WinInet, Winapi.Windows, Vcl.Printers,
  MiniSoft.Model.HistoricoDeProduto, MiniSoft.Controller.HistoricoDeProduto,
  MiniSoft.Controller.MovimentacaoDeVendas, MiniSoft.Model.MovimentacaoDeVendas,
  MiniSoft.Controller.ClientesContaAPagar, MiniSoft.Model.ClientesContaAPagar,
  MiniSoft.Controller.ParcelasAReceber, MiniSoft.Model.ParcelasAReceber,
  MiniSoft.Controller.Caixa, MiniSoft.Controller.PlanoDeConta,
  MiniSoft.Model.Caixa, MiniSoft.Model.PlanoDeConta, Minisoft.Model.Comissao,
  Minisoft.Controllerl.Comissao, uDWConstsData, uRESTDWPoolerDB, ACBrDFeDANFeReport,
  ConfigFile.Model;
      type
      TNfceModel = class
        private
    FNFC_TOTAL_VOUTRO: Double;
    FNFC_PORDESCONTO: Double;
    FNFC_TOTAL_VTOTTRIB: Double;
    FNFC_TOTAL_VDESC: Double;
    FNFC_TOTAL_VFRETE: Double;
    FNFC_IDE_NATOP: String;
    FNFC_XMOTIVO: String;
    FNFC_TOTAL_VIPI: Double;
    FNFC_IDE_UF: String;
    FNFC_TOTAL_IPIDEVOL: Double;
    FNFC_TOTAL_VPROD: Double;
    FNFC_TOTAL_VFCPST: Double;
    FNFC_TOTAL_VICMSDESON: Double;
    FNFC_IDE_SERIE: Integer;
    FNFC_TOTAL_VFCPSTRET: Double;
    FNFC_IDE_ID: String;
    FNFC_TOTAL_VII: Double;
    FNFC_TOTAL_VBCST: Double;
    FNFC_IDE_NNF: Integer;
    FNFC_BENEFICIARIO: String;
    FNFC_TOTAL_VICMS: Double;
    FNFC_FORMACARTAOCREDITO: Double;
    FNFC_DEST_CNPJ: String;
    FNFC_IDE_MOD: Integer;
    FNFC_RANDOMICO: String;
    FNFC_TOTAL_TOTAL_VFCP: Double;
    FNFC_TOTAL_VNF: Double;
    FNFC_TOTAL_VBC: Double;
    FNFC_CODIGO: Integer;
    FNFC_TOTAL_VSEG: Double;
    FNFC_FORMACARTAODEBITO: Double;
    FNFC_TOTAL_VPIS: Double;
    FNFC_DEST_XNOME: String;
    FNFC_TOTAL_VST: Double;
    FNFC_FORMACHEQUE: Double;
    FNFC_TOTAL_VCONFINS: Double;
    FNFC_FORMADINHEIRO: Double;
    FNFC_IDE_DHEMI: TDate;
    FNFC_USUARIO: String;
    FNFC_VENDEDOR: String;
    FNFC_COD_USUARIO: Integer;
    FNFC_FECHADA: String;
    FNFC_TIPO: String;
    procedure SetNFC_BENEFICIARIO(const Value: String);
    procedure SetNFC_CODIGO(const Value: Integer);
    procedure SetNFC_DEST_CNPJ(const Value: String);
    procedure SetNFC_DEST_XNOME(const Value: String);
    procedure SetNFC_FORMACARTAOCREDITO(const Value: Double);
    procedure SetNFC_FORMACARTAODEBITO(const Value: Double);
    procedure SetNFC_FORMACHEQUE(const Value: Double);
    procedure SetNFC_FORMADINHEIRO(const Value: Double);
    procedure SetNFC_IDE_DHEMI(const Value: TDate);
    procedure SetNFC_IDE_ID(const Value: String);
    procedure SetNFC_IDE_MOD(const Value: Integer);
    procedure SetNFC_IDE_NATOP(const Value: String);
    procedure SetNFC_IDE_NNF(const Value: Integer);
    procedure SetNFC_IDE_SERIE(const Value: Integer);
    procedure SetNFC_IDE_UF(const Value: String);
    procedure SetNFC_PORDESCONTO(const Value: Double);
    procedure SetNFC_RANDOMICO(const Value: String);
    procedure SetNFC_TOTAL_IPIDEVOL(const Value: Double);
    procedure SetNFC_TOTAL_TOTAL_VFCP(const Value: Double);
    procedure SetNFC_TOTAL_VBC(const Value: Double);
    procedure SetNFC_TOTAL_VBCST(const Value: Double);
    procedure SetNFC_TOTAL_VCONFINS(const Value: Double);
    procedure SetNFC_TOTAL_VDESC(const Value: Double);
    procedure SetNFC_TOTAL_VFCPST(const Value: Double);
    procedure SetNFC_TOTAL_VFCPSTRET(const Value: Double);
    procedure SetNFC_TOTAL_VFRETE(const Value: Double);
    procedure SetNFC_TOTAL_VICMS(const Value: Double);
    procedure SetNFC_TOTAL_VICMSDESON(const Value: Double);
    procedure SetNFC_TOTAL_VII(const Value: Double);
    procedure SetNFC_TOTAL_VIPI(const Value: Double);
    procedure SetNFC_TOTAL_VNF(const Value: Double);
    procedure SetNFC_TOTAL_VOUTRO(const Value: Double);
    procedure SetNFC_TOTAL_VPIS(const Value: Double);
    procedure SetNFC_TOTAL_VPROD(const Value: Double);
    procedure SetNFC_TOTAL_VSEG(const Value: Double);
    procedure SetNFC_TOTAL_VST(const Value: Double);
    procedure SetNFC_TOTAL_VTOTTRIB(const Value: Double);
    procedure SetNFC_XMOTIVO(const Value: String);
    procedure SetNFC_USUARIO(const Value: String);
    procedure SetNFC_VENDEDOR(const Value: String);
    procedure SetNFC_COD_USUARIO(const Value: Integer);
    procedure SetNFC_FECHADA(const Value: String);
    procedure SetNFC_TIPO(const Value: String);
        public
               property NFC_CODIGO              : Integer read FNFC_CODIGO write SetNFC_CODIGO;
       property NFC_IDE_UF              : String read FNFC_IDE_UF write SetNFC_IDE_UF;
       property NFC_IDE_NATOP           : String read FNFC_IDE_NATOP write SetNFC_IDE_NATOP;
       property NFC_IDE_MOD             : Integer read FNFC_IDE_MOD write SetNFC_IDE_MOD;
       property NFC_IDE_SERIE           : Integer read FNFC_IDE_SERIE write SetNFC_IDE_SERIE;
       property NFC_IDE_NNF             : Integer read FNFC_IDE_NNF write SetNFC_IDE_NNF;
       property NFC_IDE_DHEMI           : TDate read FNFC_IDE_DHEMI write SetNFC_IDE_DHEMI;
       property NFC_DEST_CNPJ           : String read FNFC_DEST_CNPJ write SetNFC_DEST_CNPJ;
       property NFC_DEST_XNOME          : String read FNFC_DEST_XNOME write SetNFC_DEST_XNOME;
       property NFC_TOTAL_VBC           : Double read FNFC_TOTAL_VBC write SetNFC_TOTAL_VBC;
       property NFC_TOTAL_VICMS         : Double read FNFC_TOTAL_VICMS write SetNFC_TOTAL_VICMS;
       property NFC_TOTAL_VICMSDESON    : Double read FNFC_TOTAL_VICMSDESON write SetNFC_TOTAL_VICMSDESON;
       property NFC_TOTAL_TOTAL_VFCP    : Double read FNFC_TOTAL_TOTAL_VFCP write SetNFC_TOTAL_TOTAL_VFCP;
       property NFC_TOTAL_VBCST         : Double read FNFC_TOTAL_VBCST write SetNFC_TOTAL_VBCST;
       property NFC_TOTAL_VST           : Double read FNFC_TOTAL_VST write SetNFC_TOTAL_VST;
       property NFC_TOTAL_VFCPST        : Double read FNFC_TOTAL_VFCPST write SetNFC_TOTAL_VFCPST;
       property NFC_TOTAL_VFCPSTRET     : Double read FNFC_TOTAL_VFCPSTRET write SetNFC_TOTAL_VFCPSTRET;
       property NFC_TOTAL_VPROD         : Double read FNFC_TOTAL_VPROD write SetNFC_TOTAL_VPROD;
       property NFC_TOTAL_VFRETE        : Double read FNFC_TOTAL_VFRETE write SetNFC_TOTAL_VFRETE;
       property NFC_TOTAL_VSEG          : Double read FNFC_TOTAL_VSEG write SetNFC_TOTAL_VSEG;
       property NFC_TOTAL_VDESC         : Double read FNFC_TOTAL_VDESC write SetNFC_TOTAL_VDESC;
       property NFC_TOTAL_VII           : Double read FNFC_TOTAL_VII write SetNFC_TOTAL_VII;
       property NFC_TOTAL_VIPI          : Double read FNFC_TOTAL_VIPI write SetNFC_TOTAL_VIPI;
       property NFC_TOTAL_IPIDEVOL      : Double read FNFC_TOTAL_IPIDEVOL write SetNFC_TOTAL_IPIDEVOL;
       property NFC_TOTAL_VPIS          : Double read FNFC_TOTAL_VPIS write SetNFC_TOTAL_VPIS;
       property NFC_TOTAL_VCONFINS      : Double read FNFC_TOTAL_VCONFINS write SetNFC_TOTAL_VCONFINS;
       property NFC_TOTAL_VOUTRO        : Double read FNFC_TOTAL_VOUTRO write SetNFC_TOTAL_VOUTRO;
       property NFC_TOTAL_VNF           : Double read FNFC_TOTAL_VNF write SetNFC_TOTAL_VNF;
       property NFC_TOTAL_VTOTTRIB      : Double read FNFC_TOTAL_VTOTTRIB write SetNFC_TOTAL_VTOTTRIB;
       property NFC_BENEFICIARIO        : String read FNFC_BENEFICIARIO write SetNFC_BENEFICIARIO;
       property NFC_RANDOMICO           : String read FNFC_RANDOMICO write SetNFC_RANDOMICO;
       property NFC_FORMADINHEIRO       : Double read FNFC_FORMADINHEIRO write SetNFC_FORMADINHEIRO;
       property NFC_FORMACARTAOCREDITO  : Double read FNFC_FORMACARTAOCREDITO write SetNFC_FORMACARTAOCREDITO;
       property NFC_FORMACARTAODEBITO   : Double read FNFC_FORMACARTAODEBITO write SetNFC_FORMACARTAODEBITO;
       property NFC_FORMACHEQUE         : Double read FNFC_FORMACHEQUE write SetNFC_FORMACHEQUE;
       property NFC_IDE_ID              : String read FNFC_IDE_ID write SetNFC_IDE_ID;
       property NFC_XMOTIVO             : String read FNFC_XMOTIVO write SetNFC_XMOTIVO;
       property NFC_PORDESCONTO         : Double read FNFC_PORDESCONTO write SetNFC_PORDESCONTO;
       property NFC_VENDEDOR : String read FNFC_VENDEDOR write SetNFC_VENDEDOR;
       property NFC_USUARIO : String read FNFC_USUARIO write SetNFC_USUARIO;
       property NFC_COD_USUARIO : Integer read FNFC_COD_USUARIO write SetNFC_COD_USUARIO;
       property NFC_FECHADA : String read FNFC_FECHADA write SetNFC_FECHADA;
       property NFC_TIPO : String read FNFC_TIPO write SetNFC_TIPO;
       procedure Insert(ObjNfce : TNfceModel);
       Procedure Update(ObjNfce : TNfceModel);
       procedure Delete(ObjNfce : TNfceModel);
       procedure Read  (ObjNfce : TNfceModel ; Codigo1 : Integer; CodigoU: Integer; loginU: String);
       procedure LerConfNfce;
       procedure TestaStatus;
       function SerieNFCe (Codigo, Numero : String) : String;
       procedure VisualisaNFCe(chave : String);
       procedure VisualizaNFCe2(nNota,Codigo: String);
       procedure GerarNFCe(NumNFe, Codigo: String);
       procedure NFCeNormal;
       procedure NFCeContigencia;
       function ValidaPag(Dinheiro, Boleto, CartaoC, CartaoD, Debito, ChequeA, ChequeP, Crediario, Total : Double) : Boolean;
       function PingSefaz: boolean;
       procedure RetiraEstoque(Codigo, Cliente, CodCliente: String;
  NumeroF: Integer);
       procedure CancelaNFCe(Chave, protocolo, numero : String);
       procedure CancalNFCe2(numero : String);
       function InutilizaNFCe(Justificativa, Ano, NInicial, NFinal,
  serie, Modelo: String; CodigoNFCe : integer) : Boolean;
       procedure ConsultaStatusNFce;
       procedure MovimentacaoFinanceira(Codigo: String; Tipo, CodParcelas, Tipov : String);
       procedure VerificaClienteContaAReceber(Codigo : Integer; Nome : String);
       procedure VerificaBoletoContaAReceber(Codigo : Integer; Nome, forma : String);
       procedure GravaCrediario (Codigo, NNFE: Integer; formaPagamento,
  tipoVenda, Modelo, CodigoPrevenda: String);
       procedure GravaCartaoDebito (Codigo, NNFE, CodCliente: Integer ; valor, vlrCompra : Double; formaPagamento,tipoVenda, Modelo: String);
       procedure JogaNoCaixa(Codigo, cliente, NNF: String;
  Entrada, Saida: Double; Tipo : String);
  procedure FaturaPreVenda (Codigo: String; NumVenda : Integer; Vendedor : String);
       procedure ImprePrevenda(Codigo : Integer);
       procedure Comissao(CodVenda: Integer);
       constructor create;
       destructor destroy; override;
      end;
implementation

{ TNfceModel }

uses MiniSoft.View.Principal, MiniSoft.Model.ParcelasVendas;

procedure TNfceModel.CancalNFCe2(numero: String);
var
 idLote, CNPJ, Justificativa,  NumeroLote, caminho2, caminhoxml : string;
 StatusNota: Integer;
 DataHoraEvento: TDateTime;
 caminho : TIniFile;
 FDProd, FDMov, Comissao, HistoricoProduto, Contas_receber, FDNfce : TFDquery;
 HistM : THistoricoDeProdutoModel;
 HistC : THistoricoDeProdutoController;
begin
  FDNfce := TFDquery.Create(nil);
  FDNfce.Connection := dm.Con;
  FDNfce.CachedUpdates := true;
  try
   with FDNfce do
   begin
     close;
     sql.Clear;
     sql.Add('select * from tb_nfce where NFC_Codigo='+QuotedStr(numero));
     open;
   if FDNfce.FieldByName('NFC_XMOTIVO').AsString = 'CANCELADA' then
     begin
       ShowMessage('Não e possivel cancelar a nota, ela ja está cancelada.');
       exit;
     end;




        ShowMessage('A NFC-e Número ' + numero + ' Foi Cancelada com Sucesso');
        FDNfce.Edit;
        FDNfce.FieldByName('NFC_XMOTIVO').AsString := 'Cancelado';
        FDNfce.Post;
        FDNfce.ApplyUpdates;
        FDNfce.CommitUpdates;
        Contas_receber := TFDquery.Create(nil);
        Contas_receber.Connection := dm.Con;

        try
          with Contas_receber do
          begin
            close;
            sql.Clear;
            sql.Add('select * from TB_CONTASARECEBER where CRE_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
            sql.Add('and CRE_NUMERO_VENDA='+QuotedStr(FDNfce.FieldByName('NFC_IDE_NNF').AsString));
            sql.Add('and CRE_TIPO_VENDA ='+QuotedStr('NFCe'));
            open;
            if not IsEmpty then
            begin
              while not eof do
              begin
                Delete;

              end;
            end;
          end;
        finally
          FreeandNil(Contas_receber);
        end;

        FDMov := TFDquery.Create(nil);
        FDMov.Connection := dm.Con;
        FDMov.CachedUpdates := true;
        try
          with FDMov do
          begin
            close;
            sql.Clear;
            sql.Add('select * from TB_NFCEITENS where NFC_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
            sql.Add('and NFC_CODIGO_NFCE='+QuotedStr(FDNfce.FieldByName('nfc_codigo').AsString));
            open;
            while not eof do
            begin

              FDProd := TFDquery.Create(nil);
              FDProd.Connection := dm.Con;
              FDProd.CachedUpdates := true;
              try
                  FDProd.close;
                  FDProd.sql.Clear;
                  FDProd.sql.Add('select * from tb_produtos where pro_codigo='+QuotedStr(FDMov.FieldByName('NFC_PROD_CPROD').AsString));
                  FDProd.open;
                  HistM := THistoricoDeProdutoModel.create;
                  HistC := THistoricoDeProdutoController.create;
                try
                 with HistM do
                 begin
                 HIS_DESCRICAO := FDProd.FieldByName('PRO_DESCRICAO').AsString;
                 HIS_DATA := now;
                 HIS_FORCLI := FDNfce.FieldByName('NFC_DEST_XNOME').AsString;
                 HIS_NUMEROFISCAL := FDNfce.FieldByName('NFC_IDE_NNF').AsInteger;;
                 HIS_TIPODOC := 'Cancelamento NFC-e';
                 HIS_CODIGO_PRODUTO := FDProd.FieldByName('pro_codigo').AsInteger;
                 HIS_QTD_VENDA := FDMov.FieldByName('NFC_PROD_QCOM').AsFloat;
                 HIS_QTD_ESTOQUE := FDProd.FieldByName('PRO_QUANTIDADE').AsFloat + HIS_QTD_VENDA;
                 HIS_CODIGO_VENDA := FDMov.FieldByName('NFC_CODIGO').ASINTEGER;;
                 HIS_CUSTO := FDProd.FieldByName('PRO_CUSTO').AsInteger * FDMov.FieldByName('NFC_PROD_QCOM').AsFloat;
                 HIS_VALOR := FDMov.FieldByName('NFC_PROD_VPROD').AsFloat ;
                 HIS_LUCRODIN := HIS_VALOR - HIS_CUSTO;
                 HIS_LUCROPOR := HIS_LUCRODIN * 100 / HIS_VALOR;
                 HIS_CODIGO_GRUPO :=  FDProd.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
                 HIS_TMONOFASICA :=  FDProd.FieldByName('PRO_TMONOFASICA').AsString;
                 HIS_CST := FDProd.FieldByName('PRO_CST').AsString;
                 HIS_NCM := FDProd.FieldByName('PRO_NCM').AsString;
                 HIS_NUMEROVENDA := FDNfce.FieldByName('NFC_IDE_NNF').asInteger;

                end;
                HistC.Inserir(HistM);
               finally
                FreeandNIl(HistM);
                FreeandNIl(HistC);
               end;

                FDprod.Edit;
                FDProd.FieldByName('PRO_QUANTIDADE').AsFloat := FDProd.FieldByName('PRO_QUANTIDADE').AsFloat + FDMov.FieldByName('NFC_PROD_QCOM').AsFloat;
                FDProd.Post;
                FDProd.ApplyUpdates;
                FDProd.CommitUpdates;

              finally
                FreeandNil(FDProd);
              end;
              next;
            end;
          end;
        finally
          FreeandNil(FDMov);
        end;
        if FDNfce.FieldByName('NFC_FORMADINHEIRO').AsFloat > 0 then
        begin
        JogaNoCaixa(FDNfce.FieldByName('nfc_codigo').AsString,FDNfce.FieldByName('NFC_DEST_XNOME').AsString,inttostr(FDNfce.fieldByName('NFC_IDE_NNF').Asinteger),0,FDNfce.FieldByName('NFC_FORMADINHEIRO').AsFloat,FDNfce.FieldByName('NFC_Tipo').AsString );
        end;
      end;

  finally
   FreeandNil(FDNFCe);
  end;
end;


procedure TNfceModel.CancelaNFCe(Chave, protocolo, numero: String);
var
 idLote, CNPJ, Justificativa,  NumeroLote, caminho2, caminhoxml : string;
 StatusNota: Integer;
 DataHoraEvento: TDateTime;
 caminho : TIniFile;
 FDProd, FDMov, Comissao, HistoricoProduto, Contas_receber, FDNfce : TFDquery;
 HistM : THistoricoDeProdutoModel;
 HistC : THistoricoDeProdutoController;
begin
  FDNfce := TFDquery.Create(nil);
  FDNfce.Connection := dm.Con;
  FDNfce.CachedUpdates := true;
  try
   with FDNfce do
   begin
     close;
     sql.Clear;
     sql.Add('select * from tb_nfce where NFC_IDE_ID='+QuotedStr(Chave));
     open;
   if FDNfce.FieldByName('NFC_XMOTIVO').AsString = 'CANCELADA' then
     begin
       ShowMessage('Não e possivel cancelar a nota, ela ja está cancelada.');
       exit;
     end;
     NumeroLote := (FormatDateTime('yymmddhhmm',now));
     dm.ACBrNFe.NotasFiscais.Clear;
     caminho := TIniFile.Create(ExtractFilePath(ParamStr(0)) + '\conf.ini');
       if caminho.ReadString('NFC-e','mapeamentoxml','') = '' then
         begin
           caminho2 := GetCurrentDir + '\nfce\xml';
         end;
        if caminho.ReadString('NFC-e','mapeamentoxml','') <> '' then
         begin
           caminhoxml := caminho.ReadString('NFC-e','mapeamentoxml','');
           caminho2:= caminhoxml;
         end;
     dm.ACBrNFe.NotasFiscais.LoadFromFile(caminho2 +'\'+ Chave +'-nfe.xml', false);
     dm.ACBrNFe.EventoNFe.Evento.Clear;
     dm.ACBrNFe.EventoNFe.idLote := StrToInt(NumeroLote);

     Justificativa := 'Justificativa do Cancelamento';
     if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
     exit;
     with dm.ACBrNFe.EventoNFe.Evento.Add do
    begin
     infEvento.chNFe := chave;
     infEvento.CNPJ   := frmPrincipal.Global.PRI_CPFCNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := Justificativa;
     infEvento.detEvento.nProt := protocolo;
    end;

      if dm.ACBrNFe.EnviarEvento(StrToInt(NumeroLote)) then
    begin
    with dm.ACBrNFe.WebServices do
     begin
      if EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
      begin
        raise Exception.CreateFmt(
          'Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:'  + sLineBreak +
          'Código:%d' + sLineBreak +
          'Motivo: %s', [
            EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
            EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
        ]);


        ShowMessage('A nota NFC-e ' + numero + ' Foi Cancelada com Sucesso');
        FDNfce.Edit;
        FDNfce.FieldByName('NFC_XMOTIVO').AsString := 'Cancelado';
        FDNfce.Post;
        FDNfce.ApplyUpdates;
        FDNfce.CommitUpdates;

      end;
     end;
    end
    else
    begin
     with dm.ACBrNFe.WebServices.EnvEvento do
     begin
      raise Exception.Create(
        'Ocorreram erros ao tentar efetuar o cancelamento:' + sLineBreak +
        'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
        'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
        'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
        sLineBreak +
        'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
        'Motivo: '   + EventoRetorno.xMotivo
      );
     end;
    end   ;
    StatusNota := dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat;
    if StatusNota = 100 then
      begin
        ShowMessage('A NFC-e Número ' + numero + ' Foi Cancelada com Sucesso');
        FDNfce.Edit;
        FDNfce.FieldByName('NFC_XMOTIVO').AsString := 'Cancelado';
        FDNfce.Post;
        FDNfce.ApplyUpdates;
        FDNfce.CommitUpdates;
        Contas_receber := TFDquery.Create(nil);
        Contas_receber.Connection := dm.Con;

        try
          with Contas_receber do
          begin
            close;
            sql.Clear;
            sql.Add('select * from TB_CONTASARECEBER where CRE_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
            sql.Add('and CRE_NUMERO_VENDA='+QuotedStr(FDNfce.FieldByName('NFC_IDE_NNF').AsString));
            sql.Add('and CRE_TIPO_VENDA ='+QuotedStr('NFC-e'));
            open;
            if not IsEmpty then
            begin
              while not eof do
              begin
                Delete;
              end;
            end;
          end;
        finally
          FreeandNil(Contas_receber);
        end;

        FDMov := TFDquery.Create(nil);
        FDMov.Connection := dm.Con;
        FDMov.CachedUpdates := true;
        try
          with FDMov do
          begin
            close;
            sql.Clear;
            sql.Add('select * from TB_NFCEITENS where NFC_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
            sql.Add('and NFC_CODIGO_NFCE='+QuotedStr(FDNfce.FieldByName('nfc_codigo').AsString));
            open;
            while not eof do
            begin

              FDProd := TFDquery.Create(nil);
              FDProd.Connection := dm.Con;
              FDProd.CachedUpdates := true;
              try
                  FDProd.close;
                  FDProd.sql.Clear;
                  FDProd.sql.Add('select * from tb_produtos where pro_codigo='+QuotedStr(FDMov.FieldByName('NFC_PROD_CPROD').AsString));
                  FDProd.open;
                  HistM := THistoricoDeProdutoModel.create;
                  HistC := THistoricoDeProdutoController.create;
                try
                 with HistM do
                 begin
                 HIS_DESCRICAO := FDProd.FieldByName('PRO_DESCRICAO').AsString;
                 HIS_DATA := now;
                 HIS_FORCLI := FDNfce.FieldByName('NFC_DEST_XNOME').AsString;
                 HIS_NUMEROFISCAL := FDNfce.FieldByName('NFC_IDE_NNF').AsInteger;;
                 HIS_TIPODOC := 'Cancelamento NFC-e';
                 HIS_CODIGO_PRODUTO := FDProd.FieldByName('pro_codigo').AsInteger;
                 HIS_QTD_VENDA := FDMov.FieldByName('NFC_PROD_QCOM').AsFloat;
                 HIS_QTD_ESTOQUE := FDProd.FieldByName('PRO_QUANTIDADE').AsFloat + HIS_QTD_VENDA;
                 HIS_CODIGO_VENDA := FDMov.FieldByName('NFC_CODIGO').ASINTEGER;;
                 HIS_CUSTO := FDProd.FieldByName('PRO_CUSTO').AsInteger * FDMov.FieldByName('NFC_PROD_QCOM').AsFloat;
                 HIS_VALOR := FDMov.FieldByName('NFC_PROD_VPROD').AsFloat ;
                 HIS_LUCRODIN := HIS_VALOR - HIS_CUSTO;
                 HIS_LUCROPOR := HIS_LUCRODIN * 100 / HIS_VALOR;
                 HIS_CODIGO_GRUPO :=  FDProd.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
                 HIS_TMONOFASICA :=  FDProd.FieldByName('PRO_TMONOFASICA').AsString;
                 HIS_CST := FDProd.FieldByName('PRO_CST').AsString;
                 HIS_NCM := FDProd.FieldByName('PRO_NCM').AsString;
                 HIS_NUMEROVENDA := FDNfce.FieldByName('NFC_IDE_NNF').asInteger;
                 HIS_TIPO := 'NFCe';
                end;
                HistC.Inserir(HistM);
               finally
                FreeandNIl(HistM);
                FreeandNIl(HistC);
               end;

                FDprod.Edit;
                FDProd.FieldByName('PRO_QUANTIDADE').AsFloat := FDProd.FieldByName('PRO_QUANTIDADE').AsFloat + FDMov.FieldByName('NFC_PROD_QCOM').AsFloat;
                FDProd.Post;
                FDProd.ApplyUpdates;
                FDProd.CommitUpdates;

              finally
                FreeandNil(FDProd);
              end;
              next;
            end;
          end;
        finally
          FreeandNil(FDMov);
        end;
        if FDNfce.FieldByName('NFC_FORMADINHEIRO').AsFloat > 0 then
        begin
        JogaNoCaixa(FDNfce.FieldByName('nfc_codigo').AsString,FDNfce.FieldByName('NFC_DEST_XNOME').AsString,inttostr(FDNfce.fieldByName('NFC_IDE_NNF').Asinteger),0,FDNfce.FieldByName('NFC_FORMADINHEIRO').AsFloat,FDNfce.FieldByName('NFC_Tipo').AsString );
        end;
      end;
   end;
  finally
   FreeandNil(FDNFCe);
  end;
end;










procedure TNfceModel.Comissao(CodVenda: Integer);
var
ComM : TComissaoModel;
ComC : TComissaoController;
q1, fdquery : TFDquery;
Prod, Gru, Vend : TFDquery;
begin
    ComM := TComissaoModel.create;
    ComC := TComissaoController.create;
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;
    q1.CachedUpdates := true;

    fdquery := TFDquery.Create(nil);
    fdquery.Connection := dm.Con;
    fdquery.CachedUpdates := true;
    fdquery.close;
    fdquery.sql.clear;
    fdquery.sql.add('select * from tb_nfce where nfc_codigo='+QuotedStr(inttostr(CodVenda))) ;
    fdquery.open;
    try
       with q1 do
       begin
         close;
         sql.Clear;
         sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE='+QuotedStr(inttostr(CodVenda))) ;
         open;
         while not eof do
         begin

         Prod := TFDquery.Create(nil);
         Prod.Connection := dm.Con;
         Prod.CachedUpdates := true;

         Gru := TFDquery.Create(nil);
         Gru.Connection := dm.Con;
         Gru.CachedUpdates := true;

         Vend := TFDquery.Create(nil);
         Vend.Connection := dm.Con;
         Vend.CachedUpdates := true;
         with Prod do
           begin
           close;
           sql.Clear;
           sql.Add('select * from TB_PRODUTOS where pro_codigo='+QuotedStr(inttostr(q1.FieldByName('NFC_PROD_CPROD').AsInteger)));
           open;
           end;
          with Gru do
          begin
          close;
          sql.Clear;
          sql.Add('select * from TB_GRUPOPRODUTO where gru_codigo='+QuotedStr(inttostr(prod.FieldByName('PRO_CODIGO_GRUPO').AsInteger)));
          open;
          end;
          with Vend do
          begin
          close;
          sql.Clear;
          sql.Add('select * from TB_USUARIOS where usu_codigo='+QuotedStr(inttostr( fdquery.fieldByName('NFC_CODIGO_VENDEDOR').AsInteger)));
          open;
           end;

          try
              if (Fdquery.FieldByName('NFC_FORMADINHEIRO').AsFloat > 0) and (frmPrincipal.Global.PRI_COMISSAO_AORECEBER = 'True') or (frmPrincipal.Global.PRI_COMISSAO_AOFATURAR = 'True') then
           begin
            ComM := TComissaoModel.create;
            ComC := TComissaoController.create;
            try
             with ComM do
             begin
                COM_CODIGO := 0;
                COM_TIPOVENDA := 'NFC-e';
                COM_CODIGO_VENDA := q1.FieldByName('NFC_CODIGO_NFCE').AsInteger;
                COM_NUMERO_FISCAL := FDQuery.FieldByName('NFC_CODIGO').AsInteger;
                COM_PRODUTO := q1.FieldByName('NFC_PROD_XPROD').AsString;
                COM_CODIGO_PRODUTO := q1.FieldByName('NFC_PROD_CPROD').AsInteger;
                COM_QUANTIDADE_PRODUTO := q1.FieldByName('NFC_PROD_QCOM').AsFloat;
                COM_CUSTO_PRODUTO := prod.FieldByName('PRO_CUSTO').AsFloat;
                COM_PRECO_PRODUTO := q1.FieldByName('NFC_PROD_VPROD').AsFloat;
                COM_VALOR_COMISSAO := CalculaComissaoDinheiro(fdquery.fieldByName('NFC_TOTAL_VNF').AsFloat,fdquery.fieldByName('NFC_FORMADINHEIRO').asFloat,q1.FieldByName('NFC_PROD_VPROD').AsFloat,
                prod.FieldByName('PRO_COMISSAO_DINHEIRO').AsFloat, gru.FieldByName('GRU_COMISSAO_DINHEIRO').AsFloat,vend.FieldByName('USU_COMISSAO_DINHEIRO').AsFloat);

                COM_CODIGO_GRUPO := prod.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
                COM_NOME_GRUPO := prod.FieldByName('PRO_GRUPO').AsString;
                COM_CODIGO_VENDEDOR := fdquery.fieldByName('NFC_CODIGO_VENDEDOR').AsInteger;
                COM_NOME_VENDEDOR := fdquery.fieldByName('NFC_VENDEDOR').AsString;
                COM_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
                COM_FORMA_PAGAMENTO := 'Dinheiro';
                COM_VALOR_FORMA_PAGAMENTO := Fdquery.FieldByName('NFC_FORMADINHEIRO').AsFloat;
                COM_DATA := NOW;
             end;
             Comc.Inserir(ComM);
              finally
            FreeandNil(ComM);
            FreeandNil(ComC);
            end;
           end;
           if (Fdquery.FieldByName('NFC_FORMACREDIARIO').AsFloat > 0) and (frmPrincipal.Global.PRI_COMISSAO_AOFATURAR = 'True') then
           begin
             ComM := TComissaoModel.create;
            ComC := TComissaoController.create;
            try
             with ComM do
             begin
                COM_CODIGO := 0;
                COM_TIPOVENDA := 'NFC-e';
                COM_CODIGO_VENDA := q1.FieldByName('NFC_CODIGO_NFCE').AsInteger;
                COM_NUMERO_FISCAL := FDQuery.FieldByName('NFC_CODIGO').AsInteger;
                COM_PRODUTO := q1.FieldByName('NFC_PROD_XPROD').AsString;
                COM_CODIGO_PRODUTO := q1.FieldByName('NFC_PROD_CPROD').AsInteger;
                COM_QUANTIDADE_PRODUTO := q1.FieldByName('NFC_PROD_QCOM').AsFloat;
                COM_CUSTO_PRODUTO := prod.FieldByName('PRO_CUSTO').AsFloat;
                COM_PRECO_PRODUTO := q1.FieldByName('NFC_PROD_VPROD').AsFloat;
                COM_VALOR_COMISSAO := CalculaComissaoDinheiro(fdquery.fieldByName('NFC_TOTAL_VNF').AsFloat,fdquery.fieldByName('NFC_FORMACREDIARIO').asFloat,q1.FieldByName('NFC_PROD_VPROD').AsFloat,
                prod.FieldByName('PRO_COMISSAO_CREDIARIO').AsFloat, gru.FieldByName('GRU_COMISSAO_CREDIARIO').AsFloat,vend.FieldByName('USU_COMISSAO_CREDIARIO').AsFloat);

                COM_CODIGO_GRUPO := prod.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
                COM_NOME_GRUPO := prod.FieldByName('PRO_GRUPO').AsString;
                COM_CODIGO_VENDEDOR := fdquery.fieldByName('NFC_CODIGO_VENDEDOR').AsInteger;
                COM_NOME_VENDEDOR := fdquery.fieldByName('NFC_VENDEDOR').AsString;
                COM_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
                COM_FORMA_PAGAMENTO := 'Crediário';
                COM_VALOR_FORMA_PAGAMENTO := Fdquery.FieldByName('NFC_FORMACREDIARIO').AsFloat;
                COM_DATA := NOW;
             end;
             Comc.Inserir(ComM);
              finally
            FreeandNil(ComM);
            FreeandNil(ComC);
            end;
           end;
           if (Fdquery.FieldByName('NFC_FORMACARTAODEBITO').AsFloat > 0) and (frmPrincipal.Global.PRI_COMISSAO_AOFATURAR = 'True') then
           begin
            ComM := TComissaoModel.create;
            ComC := TComissaoController.create;
            try
             with ComM do
             begin
                COM_CODIGO := 0;
                COM_TIPOVENDA := 'NFC-e';
                COM_CODIGO_VENDA := q1.FieldByName('NFC_CODIGO_NFCE').AsInteger;
                COM_NUMERO_FISCAL := FDQuery.FieldByName('NFC_CODIGO').AsInteger;
                COM_PRODUTO := q1.FieldByName('NFC_PROD_XPROD').AsString;
                COM_CODIGO_PRODUTO := q1.FieldByName('NFC_PROD_CPROD').AsInteger;
                COM_QUANTIDADE_PRODUTO := q1.FieldByName('NFC_PROD_QCOM').AsFloat;
                COM_CUSTO_PRODUTO := prod.FieldByName('PRO_CUSTO').AsFloat;
                COM_PRECO_PRODUTO := q1.FieldByName('NFC_PROD_VPROD').AsFloat;
                COM_VALOR_COMISSAO := CalculaComissaoDinheiro(fdquery.fieldByName('NFC_TOTAL_VNF').AsFloat,fdquery.fieldByName('NFC_FORMACARTAODEBITO').asFloat,q1.FieldByName('NFC_PROD_VPROD').AsFloat,
                prod.FieldByName('PRO_COMISSAO_DEBITO').AsFloat, gru.FieldByName('GRU_COMISSAO_DEBITO').AsFloat,vend.FieldByName('USU_COMISSAO_DEBITO').AsFloat);

                COM_CODIGO_GRUPO := prod.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
                COM_NOME_GRUPO := prod.FieldByName('PRO_GRUPO').AsString;
                COM_CODIGO_VENDEDOR := fdquery.fieldByName('NFC_CODIGO_VENDEDOR').AsInteger;
                COM_NOME_VENDEDOR := fdquery.fieldByName('NFC_VENDEDOR').AsString;
                COM_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
                COM_FORMA_PAGAMENTO := 'Débito';
                COM_VALOR_FORMA_PAGAMENTO := Fdquery.FieldByName('NFC_FORMACARTAODEBITO').AsFloat;
                COM_DATA := NOW;
             end;
             Comc.Inserir(ComM);
              finally
            FreeandNil(ComM);
            FreeandNil(ComC);
            end;
           end;
           if (Fdquery.FieldByName('NFC_FORMACARTAOCREDITO').AsFloat > 0) and (frmPrincipal.Global.PRI_COMISSAO_AOFATURAR = 'True') then
           begin
             ComM := TComissaoModel.create;
            ComC := TComissaoController.create;
            try
             with ComM do
             begin
                COM_CODIGO := 0;
                COM_TIPOVENDA := 'NFC-e';
                COM_CODIGO_VENDA := q1.FieldByName('NFC_CODIGO_NFCE').AsInteger;
                COM_NUMERO_FISCAL := FDQuery.FieldByName('NFC_CODIGO').AsInteger;
                COM_PRODUTO := q1.FieldByName('NFC_PROD_XPROD').AsString;
                COM_CODIGO_PRODUTO := q1.FieldByName('NFC_PROD_CPROD').AsInteger;
                COM_QUANTIDADE_PRODUTO := q1.FieldByName('NFC_PROD_QCOM').AsFloat;
                COM_CUSTO_PRODUTO := prod.FieldByName('PRO_CUSTO').AsFloat;
                COM_PRECO_PRODUTO := q1.FieldByName('NFC_PROD_VPROD').AsFloat;
                COM_VALOR_COMISSAO := CalculaComissaoDinheiro(fdquery.fieldByName('NFC_TOTAL_VNF').AsFloat,fdquery.fieldByName('NFC_FORMACARTAOCREDITO').asFloat,q1.FieldByName('NFC_PROD_VPROD').AsFloat,
                prod.FieldByName('PRO_COMISSAO_CREDITO').AsFloat, gru.FieldByName('GRU_COMISSAO_CREDITO').AsFloat,vend.FieldByName('USU_COMISSAO_CREDITO').AsFloat);

                COM_CODIGO_GRUPO := prod.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
                COM_NOME_GRUPO := prod.FieldByName('PRO_GRUPO').AsString;
                COM_CODIGO_VENDEDOR := fdquery.fieldByName('NFC_CODIGO_VENDEDOR').AsInteger;
                COM_NOME_VENDEDOR := fdquery.fieldByName('NFC_VENDEDOR').AsString;
                COM_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
                COM_FORMA_PAGAMENTO := 'Crédito';
                COM_VALOR_FORMA_PAGAMENTO := Fdquery.FieldByName('NFC_FORMACARTAOCREDITO').AsFloat;
                COM_DATA := NOW;
             end;
             Comc.Inserir(ComM);
              finally
            FreeandNil(ComM);
            FreeandNil(ComC);
            end;
           end;
           if (Fdquery.FieldByName('NFC_FORMACHEQUE').AsFloat > 0 ) and (frmPrincipal.Global.PRI_COMISSAO_AOFATURAR = 'True') then
           begin
              ComM := TComissaoModel.create;
            ComC := TComissaoController.create;
            try
             with ComM do
             begin
                COM_CODIGO := 0;
                COM_TIPOVENDA := 'NFC-e';
                COM_CODIGO_VENDA := q1.FieldByName('NFC_CODIGO_NFCE').AsInteger;
                COM_NUMERO_FISCAL := FDQuery.FieldByName('NFC_CODIGO').AsInteger;
                COM_PRODUTO := q1.FieldByName('NFC_PROD_XPROD').AsString;
                COM_CODIGO_PRODUTO := q1.FieldByName('NFC_PROD_CPROD').AsInteger;
                COM_QUANTIDADE_PRODUTO := q1.FieldByName('NFC_PROD_QCOM').AsFloat;
                COM_CUSTO_PRODUTO := prod.FieldByName('PRO_CUSTO').AsFloat;
                COM_PRECO_PRODUTO := q1.FieldByName('NFC_PROD_VPROD').AsFloat;
                COM_VALOR_COMISSAO := CalculaComissaoDinheiro(fdquery.fieldByName('NFC_TOTAL_VNF').AsFloat,fdquery.fieldByName('NFC_FORMACHEQUE').asFloat,q1.FieldByName('NFC_PROD_VPROD').AsFloat,
                prod.FieldByName('PRO_COMISSOAO_CHEQUE').AsFloat, gru.FieldByName('GRU_COMISSAO_CHEQUE').AsFloat,vend.FieldByName('USU_COMISSAO_CHEQUE').AsFloat);

                COM_CODIGO_GRUPO := prod.FieldByName('PRO_CODIGO_GRUPO').AsInteger;
                COM_NOME_GRUPO := prod.FieldByName('PRO_GRUPO').AsString;
                COM_CODIGO_VENDEDOR := fdquery.fieldByName('NFC_CODIGO_VENDEDOR').AsInteger;
                COM_NOME_VENDEDOR := fdquery.fieldByName('NFC_VENDEDOR').AsString;
                COM_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
                COM_FORMA_PAGAMENTO := 'Cheque';
                COM_VALOR_FORMA_PAGAMENTO := Fdquery.FieldByName('NFC_FORMACHEQUE').AsFloat;
                COM_DATA := NOW;
             end;
             Comc.Inserir(ComM);
              finally
            FreeandNil(ComM);
            FreeandNil(ComC);
            end;
           end;
           {if (Fdquery.FieldByName('PRE_PABOLETO').AsFloat > 0) and (frmPrincipal.Global.PRI_COMISSAO_AOFATURAR = 'True') then
           begin
            ComM := TComissaoModel.create;
            ComC := TComissaoController.create;
            try
             with ComM do
             begin
                COM_CODIGO := 0;
                COM_TIPOVENDA := 'Pré-Venda';
                COM_CODIGO_VENDA := q1.FieldByName('PRE_CODIGO_PREVENDA').AsInteger;
                COM_NUMERO_FISCAL := FDQuery.FieldByName('PRE_NUMEROPREVENDA').AsInteger;
                COM_PRODUTO := q1.FieldByName('PRE_PRODUTO').AsString;
                COM_CODIGO_PRODUTO := q1.FieldByName('PRE_CODIGO_PRODUTO').AsInteger;
                COM_QUANTIDADE_PRODUTO := q1.FieldByName('PRE_QUANTIDADE').AsFloat;
                COM_CUSTO_PRODUTO := q1.FieldByName('PRE_CUSTO').AsFloat;
                COM_PRECO_PRODUTO := q1.FieldByName('PRE_TOTAL').AsFloat;
                COM_VALOR_COMISSAO := CalculaComissaoDinheiro(fdquery.fieldByName('PRE_TOTAL').AsFloat,fdquery.fieldByName('PRE_PABOLETO').asFloat,q1.FieldByName('PRE_TOTAL').AsFloat,
                prod.FieldByName('PRO_COMISSAO_BOLETO').AsFloat, gru.FieldByName('GRU_COMISSAO_BOLETO').AsFloat,vend.FieldByName('USU_COMISSAO_BOLETO').AsFloat);

                COM_CODIGO_GRUPO := q1.FieldByName('PRE_CODIGO_GRUPO').AsInteger;
                COM_NOME_GRUPO := q1.FieldByName('PRE_NOME_GRUPO').AsString;
                COM_CODIGO_VENDEDOR := fdquery.fieldByName('PRE_CODIGO_VENDEDOR').AsInteger;
                COM_NOME_VENDEDOR := fdquery.fieldByName('PRE_VENDEDOR').AsString;
                COM_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
                COM_FORMA_PAGAMENTO := 'Boleto';
                COM_VALOR_FORMA_PAGAMENTO := Fdquery.FieldByName('PRE_PABOLETO').AsFloat;
                COM_DATA := NOW;
             end;
             Comc.Inserir(ComM);
              finally
            FreeandNil(ComM);
            FreeandNil(ComC);
            end;
           end;}
           finally
            FreeandNil(Prod);
            FreeandNil(Gru);
            FreeandNil(Vend);
          end;



           next;
         end;
       end;
    finally
       FreeandNil(q1)
    end;

end;


procedure TNfceModel.ConsultaStatusNFce;
var
CodigoStatus : integer;
net: dword;
begin

 if frmPrincipal.Global.PRI_PDV_EMISSAO = 'Normal' then
    begin
  try
    if InternetGetConnectedState(@net,0)  then
    begin

      dm.ACBrNFe.Configuracoes.Geral.FormaEmissao:= teNormal

    end
    else
    begin
     dm.ACBrNFe.Configuracoes.Geral.FormaEmissao:= teOffLine;
    end;
  Except
    dm.ACBrNFe.Configuracoes.Geral.FormaEmissao:= teOffLine;
  end;
 end
 else
 begin
    dm.ACBrNFe.Configuracoes.Geral.FormaEmissao:= teOffLine;
 end;



end;

constructor TNfceModel.create;
begin

end;

procedure TNfceModel.Delete(ObjNfce: TNfceModel);
begin

end;

destructor TNfceModel.destroy;
begin

  inherited;
end;

procedure TNfceModel.FaturaPreVenda(Codigo: String; NumVenda : Integer; Vendedor : String);
var
q1, q2 : TFDquery;
Carne : TParcelasVendasModel;
begin
  q1 := TFDquery.Create(nil);
  q1.Connection := dm.Con;
  q1.CachedUpdates := true;

  q2 := TFDquery.Create(nil);
  q2.Connection := dm.Con;
  q2.CachedUpdates := true;

  try
    with q1 do
    begin
      close;
      sql.Clear;
      sql.Add('select * from TB_PREVENDA where pre_codigo='+QuotedStr(Codigo));
      open;
      edit;
      FieldByName('PRE_DATAFATURAMENTO').AsDateTime := now;
      FieldByName('PRE_STATUS').AsString := 'Faturado';
      post;
      q1.ApplyUpdates;
      q1.CommitUpdates;
      q2.close;
      q2.sql.Clear;
      q2.sql.Add('select * from TB_CONTASARECEBER where cre_tipo_venda='+QuotedStr('Pré-Venda'));
      q2.sql.Add('and cre_numero_venda='+QuotedStr(q1.FieldByName('PRE_NUMEROPREVENDA').AsString));
      q2.open;
      if not q2.IsEmpty then
      begin
        while not q2.eof do
        begin
          q2.Edit;
          q2.FieldByName('CRE_TIPO').AsString := 'F';
          q2.FieldByName('CRE_TIPO_VENDA').AsString := 'NFC-e';
          q2.FieldByName('CRE_NOME_VENDEDOR').AsString := Vendedor;
          q2.FieldByName('CRE_NUMERO_VENDA').AsInteger := NumVenda;
          q2.Post;
          q2.ApplyUpdates;
          q2.CommitUpdates;
          q2.Next;
        end;
      end;
    end;
  finally
    FreeandNil(q1);
    FreeandNil(q2);
  end;

  if frmPrincipal.Global.PRI_PDV_CONF3 = 'True' then
  begin
    ImprePrevenda(strtoint(Codigo));
  end;

end;

procedure TNfceModel.GerarNFCe(NumNFe, Codigo: String);
var
frete, baseCalculo,ValorOutros, ttl_trib, valorProduto, importacao, nacional, estadual, importado, municipal,Outros, PorcentagemBaseCalculo, BCProduto  : double;
referenciaxml : String;
ContaIe, cfopDiferente : integer;
FDProduto, FDIbpt, FDMun, FDcliente, FDTrib, FDprod, FDNfe, NFe, FDNCM, FDFat : TFDquery;
funcao : TFuncoesGerais;
begin
  ttl_trib:= 0;
  NFe := TFDquery.Create(nil);
  NFe.Connection := dm.Con;

  funcao := TFuncoesGerais.create;
  try
  NFe.Close;
  NFe.SQL.Clear;
  NFe.sql.Add('select * from tb_nfce where nfc_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
  Nfe.SQL.Add('and nfc_codigo='+QuotedStr(Codigo));
  Nfe.open;
  with dm.ACBrNFe.NotasFiscais.Add.NFe, funcao  do
  begin



    Ide.modelo := 65;
    Ide.serie := NFe.FieldByName('NFC_IDE_SERIE').AsInteger;
    ide.nNF := NFe.FieldByName('NFC_IDE_NNF').AsInteger;
    ide.cNF := strtoint(FormatDateTime('yyhhmmss', Now));
    Ide.tpNF := tnSaida;
    Ide.dEmi := now;
    Ide.dSaiEnt := now;
    Ide.hSaiEnt := now;
    Ide.natOp := 'Venda de Mercadoria';
    Ide.indPres := pcPresencial;
    if dm.ACBrNFe.Configuracoes.Geral.FormaEmissao = teNormal then
    begin
      Ide.tpEmis := teNormal;
    end;
    if dm.ACBrNFe.Configuracoes.Geral.FormaEmissao = teOffLine then
    begin
      Ide.tpEmis := teOffLine;
      Ide.xJust  := 'Sistema Não conseguiu estabelecer comunicação com a sefaz';
      ide.dhCont := now;
    end;

    Ide.cUF := UFtoCUF(frmPrincipal.Global.PRI_UF);
    Ide.cMunFG := strtoint(frmPrincipal.Global.PRI_IBGEEMITENTE);
    Ide.finNFe := fnNormal;
    Ide.indFinal := cfConsumidorFinal;
                                         //
    Emit.CNPJCPF := frmPrincipal.Global.PRI_CPFCNPJ;
    Emit.IE := frmPrincipal.Global.PRI_IE;
    Emit.xNome := frmPrincipal.Global.PRI_RAZAO;
    Emit.xFant := frmPrincipal.Global.PRI_FANTASIA;
    Emit.EnderEmit.fone := frmPrincipal.Global.PRI_TELEFONE;
    Emit.EnderEmit.CEP := StrToInt(frmPrincipal.Global.PRI_CEP);
    Emit.EnderEmit.xLgr := frmPrincipal.Global.PRI_ENDERECO;
    Emit.EnderEmit.nro := frmPrincipal.Global.PRI_NUMERO;
    Emit.EnderEmit.xCpl := '';//frmPrincipal.Global.pri_c;;
    Emit.EnderEmit.xBairro := frmPrincipal.Global.PRI_BAIRRO;
    Emit.EnderEmit.cMun := strtoint(frmPrincipal.Global.PRI_IBGEEMITENTE);
    Emit.EnderEmit.xMun := frmPrincipal.Global.PRI_MUNICIPIO;
    Emit.EnderEmit.UF := frmPrincipal.Global.PRI_UF;
    Emit.EnderEmit.cPais := 1058;
    Emit.EnderEmit.xPais := 'BRASIL';
    if frmPrincipal.Global.PRI_NFE_REGIME = 'Simples' then
       begin
       Emit.CRT := crtSimplesNacional;
       end;
    Emit.CNAE := frmPrincipal.Global.PRI_CNAE;

    if frmPrincipal.Global.PRI_NFE_REGIME = 'Simples Ex. de Receita' then
    begin
      Emit.CRT := crtSimplesExcessoReceita;
    end;
    if frmPrincipal.Global.PRI_NFE_REGIME = 'Normal' then
    begin
      Emit.CRT := crtRegimeNormal;
    end;
    FDcliente := TFDquery.Create(nil);
    FDcliente.Connection := dm.Con;

    //Codigo clietne
    try
    FDcliente.SQL.Clear;
    FDcliente.SQL.Add('select * from tb_clientes where cli_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
    FDcliente.SQL.Add('and cli_codigo ='+QuotedStr(NFe.FieldByName('NFCE_CODIGO_CLIENTE').AsString));
    FDcliente.Open;
     if not FDcliente.IsEmpty then

     begin

            Dest.CNPJCPF           := NFe.FieldByName('NFC_DEST_CNPJ').AsString;//FDcliente.FieldByName('cpfcnpj').AsString;
            Dest.xNome             := NFe.FieldByName('NFC_DEST_XNOME').AsString;
            Dest.EnderDest.fone    := '';//NFe.FieldByName('NFE_DEST_XNOME').AsString;
            Dest.EnderDest.CEP     := strtoint(FDcliente.FieldByName('CLI_CEP').AsString);
            Dest.EnderDest.xLgr    := FDcliente.FieldByName('CLI_ENDERECO').AsString;
            Dest.EnderDest.nro     := FDcliente.FieldByName('CLI_NUMERO').AsString;
            Dest.EnderDest.xCpl    := FDcliente.FieldByName('CLI_COMPLEMENTO').AsString;
            Dest.EnderDest.xBairro := FDcliente.FieldByName('CLI_BAIRRO').AsString;
            Dest.EnderDest.cMun    := FDcliente.FieldByName('CLI_IBGE').Asinteger;
            Dest.EnderDest.xMun    := FDcliente.FieldByName('CLI_CIDADE').AsString;
            Dest.EnderDest.UF      := FDcliente.FieldByName('CLI_UF').AsString;
            Dest.EnderDest.cPais   := 1058;
            Dest.EnderDest.xPais   := 'BRASIL';
            Dest.indIEDest := inNaoContribuinte;

            if (FDcliente.FieldByName('CLI_UF').AsString)<>(frmPrincipal.Global.PRI_UF) then
            begin
            IDE.idDest:= doInterestadual
            end
            else
            begin
            IDE.idDest:= doInterna;
            end;
     end
     else
     begin
       Dest.CNPJCPF           := NFE.FieldByName('NFC_DEST_CNPJ').AsString;
       Dest.xNome             := NFE.FieldByName('NFC_DEST_XNOME').AsString;
       Dest.indIEDest := inNaoContribuinte;
     end;
    finally
      FreeAndNil(FDcliente);
    end;


    {if Dest.EnderDest.UF = 'EX' then
      Ide.idDest := doExterior
    else
    begin
      if Emit.EnderEmit.UF = Dest.EnderDest.UF then
        Ide.idDest := doInterna
      else
        Ide.idDest := doInterestadual;
    end}
      // Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
    { Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := ''; }

    // Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
    { Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := ''; }

    // Adicionando Produtos

      FDProduto := TFDquery.Create(nil);
      FDProduto.Connection := dm.Con;

    try
      with FDProduto do
      begin
      close;
      sql.Clear;
      sql.Add('SELECT * FROM TB_NFCEITENS WHERE NFC_CODIGO_NFCE ='+QuotedStr(Codigo));
      open;
      first;
      end;

      While Not FDProduto.Eof do
       begin

       FDprod := TFDquery.Create(nil);
       FDprod.Connection := dm.Con;

       FDprod.SQL.Clear;
       FDprod.SQL.Add('SELECT * FROM tb_produtos Where pro_codigo ='+QuotedStr(FDProduto.FieldByName('NFC_PROD_CPROD').AsString));
       FDprod.open;
      with Det.Add do
      begin

         try
             Prod.nItem := FDProduto.RecNo;

             Prod.cProd := FDProduto.FieldByName('NFC_PROD_CPROD').AsString;

             if ValidaGTIN(FDprod.FieldByName('PRO_CODIGOBARRA').AsString) = false then
                begin
                Prod.cEAN := 'SEM GTIN';
                end
                else
                begin
                Prod.cEAN  := FDprod.FieldByName('PRO_CODIGOBARRA').AsString;
                end;
                Prod.xProd := FDProduto.FieldByName('NFC_PROD_XPROD').AsString;
                Prod.NCM := FDProd.FieldByName('pro_ncm').AsString; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
                Prod.EXTIPI := '';
                Prod.CFOP := FDProd.FieldByName('pro_cfop').AsString;
                Prod.uCom := FDProduto.FieldByName('NFC_PROD_UCOM').AsString;
                Prod.qCom := FDProduto.FieldByName('NFC_PROD_QCOM').AsFloat;
                Prod.vUnCom := FDProduto.FieldByName('NFC_PROD_VUNCOM').AsFloat;
                Prod.vProd := FDProduto.FieldByName('NFC_PROD_VPROD').AsFloat;
                Prod.cEANTrib := Prod.cEAN;
                Prod.uTrib := Prod.uCom;
                Prod.qTrib := Prod.qCom;
                Prod.vUnTrib := Prod.vUnCom;
                Prod.vOutro := 0;
               // frete := NFe.FieldByName('NFE_TOTAL_VFRETE').AsFloat * 100 / NFe.FieldByName('NFE_TOTAL_VNFE').AsFloat;
                Prod.vFrete := 0;//frete * FDProduto.FieldByName('NFE_PROD_VUNCOM').AsFloat * FDProduto.FieldByName('NFE_PROD_QCOM').AsFloat / 100;;
                Prod.vSeg := 0;
                ValorOutros := NFe.FieldByName('NFC_TOTAL_VOUTRO').AsFloat * 100 / NFe.FieldByName('NFC_TOTAL_VPROD').asfloat;
                Prod.vOutro := FDProduto.FieldByName('NFC_PROD_VUNCOM').AsFloat * ValorOutros * FDProduto.FieldByName('NFC_PROD_QCOM').AsFloat / 100;
                Prod.vDesc := NFe.FieldByName('NFC_PORDESCONTO').AsFloat * FDProduto.FieldByName('NFC_PROD_VUNCOM').AsFloat * FDProduto.FieldByName('NFC_PROD_QCOM').AsFloat / 100;
                Prod.CEST := FDProduto.FieldByName('NFC_PROD_CEST').AsString;;
                valorProduto := FDProduto.FieldByName('NFC_PROD_VUNCOM').AsFloat * FDProduto.FieldByName('NFC_PROD_QCOM').AsFloat  - Prod.vDesc;
                infAdProd := '';


         with Imposto do
        begin
               FDNCM := TFDquery.Create(nil);
               FDNCM.Connection := dm.Con;

         try
                FDNCM.Close;
                FDNCM.SQL.Clear;
                FDNCM.SQL.Add('select * from tb_ibpt where ibp_ncm='+QuotedStr(Prod.NCM));
                FDNCM.Open;
                if not FDNCM.IsEmpty then
                begin
                importado := FDNCM.FieldByName('IBP_IMPORTADOSFEDERAL').AsFloat * valorProduto / 100;
                nacional := FDNCM.FieldByName('IBP_NACIONALFEDERAL').AsFloat * valorProduto / 100;
                estadual := FDNCM.FieldByName('IBP_ESTADUAL').AsFloat * valorProduto / 100;
                municipal := FDNCM.FieldByName('IBP_MUNICIPAL').AsFloat * valorProduto / 100;
                end
                else
                begin
                FDNCM.Close;
                FDNCM.SQL.Clear;
                FDNCM.SQL.Add('select * from tb_ibpt where ibp_codigo='+QuotedStr('1'));
                FDNCM.Open;
                end;

               // if dm.Produtos.FieldByName('origem_prod').AsString = '0' then
               // begin
                 vTotTrib := nacional + estadual + municipal ;
               // end;
             //   if dm.Produtos.FieldByName('origem_prod').AsString = '1' then
              //  begin
              //  vTotTrib := importado + estadual + municipal ;
               // end;
            if frmPrincipal.Global.PRI_NFE_REGIME = 'Simples' then
            begin

             with ICMS do
             begin
              if FDProd.FieldByName('pro_csosn').AsString = '101' then
              begin
              CSOSN := csosn101;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '102' then
              begin
              CSOSN := csosn102;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '103' then
              begin
              CSOSN := csosn103;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '201' then
              begin
              CSOSN := csosn201;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '202' then
              begin
              CSOSN := csosn202;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '203' then
              begin
              CSOSN := csosn203;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '300' then
              begin
              CSOSN := csosn300;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '400' then
              begin
              CSOSN := csosn400;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '500' then
              begin
              CSOSN := csosn500;
              end;
              if FDProd.FieldByName('pro_csosn').AsString = '900' then
              begin
              CSOSN := csosn900;
              end;

            end;
          end;

           //seleciona icms na tabela de municipios
            if FDProd.FieldByName('pro_cst').AsString = '000' then
            begin
              ICMS.CST := cst00;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '010' then
            begin
              ICMS.CST := cst10;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '020' then
            begin
              ICMS.CST := cst20;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '030' then
            begin
              ICMS.CST := cst30;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '040' then
            begin
              ICMS.CST := cst40;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '050' then
            begin
              ICMS.CST := cst50;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '060' then
            begin
              ICMS.CST := cst60;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '070' then
            begin
              ICMS.CST := cst70;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '080' then
            begin
              ICMS.CST := cst80;
            end;
            if FDProd.FieldByName('pro_cst').AsString = '090' then
            begin
              ICMS.CST := cst90;
            end;
           // PorcentagemBaseCalculo := dm.mov_prod_nfe.FieldByName('bcicms').AsFloat * 100 / dm.mov_prod_nfe.FieldByName('total_prod').AsFloat;
            BCProduto     := FDProduto.FieldByName('NFC_PROD_VPROD').AsFloat;
            ICMS.orig     := oeNacional;
            ICMS.modBC    := dbiValorOperacao;
            ICMS.vBC      := FDProduto.FieldByName('NFC_ICMS_VBC').AsFloat ;
            ICMS.pICMS    := FDProduto.FieldByName('NFC_ICMS_PICMS').AsFloat;
            ICMS.vICMS    := FDProduto.FieldByName('NFC_ICMS_VICMS').AsFloat;
            ICMS.modBCST  := dbisMargemValorAgregado;
            ICMS.pMVAST   := 0;
            ICMS.pRedBCST := 0;
            ICMS.vBCST    := FDProduto.FieldByName('NFC_ICMS_VBCST').AsFloat;
            ICMS.pICMSST  := FDProduto.FieldByName('NFC_ICMS_PICMSST').AsFloat;
            ICMS.vICMSST  := FDProduto.FieldByName('NFC_ICMS_VIMSST').AsFloat;
            ICMS.pRedBC   := FDProduto.FieldByName('NFC_ICMS_PREDBC').AsFloat;
            Transp.modFrete := mfSemFrete;
            // partilha do ICMS e fundo de probreza
          {  with ICMSUFDest do
            begin
            vBCUFDest := 0.00;
            pFCPUFDest := 0.00;
            pICMSUFDest := 0.00;
            pICMSInter := 0.00;
            pICMSInterPart := 0.00; CSTIPIToStrTagPosText
            vFCPUFDest := 0.00;
            vICMSUFDest := 0.00;
            vICMSUFRemet := 0.00;
            end;
            end;

          }
            with IPI do
            begin
              cEnq := FDProduto.FieldByName('NFC_IPI_CENQ').asstring;
              //CST  := (FDProduto.FieldByName('NFE_IPI_CST').asstring);
              vBC  := FDProduto.FieldByName('NFC_IPI_VBC').AsFloat;
              pIPI := FDProduto.FieldByName('NFC_IPI_PIPI').AsFloat;
              vIPI := FDProduto.FieldByName('NFC_IPI_VIPI').AsFloat;

            end;

           with PIS do
            begin
            if FDprod.FieldByName('PRO_CSTPISCOFINS').AsString = '04-Operação Tributável Monofásica – Revenda a Alíquota Zero' then
               begin
               CST := pis04
               end;
            //PIS.vBC  := FDProduto.FieldByName('pisst_vBC').AsFloat;
            //PIS.pPIS := FDProduto.FieldByName('pisst_pPIS').AsFloat;
            //PIS.vPIS := FDProduto.FieldByName('pis_val').AsFloat;

           // PIS.qBCProd   := Dm.mov_prod_nfe.FieldByName('valor_prod').AsFloat;
           // PIS.vAliqProd := Dm.mov_prod_nfe.FieldByName('valor_prod').AsFloat;
            //PIS.vPIS      := FDProduto.FieldByName('pis_val').AsFloat;
            end;

            with PISST do
            begin
            //vBc       := FDProduto.FieldByName('pisst_vBC').AsFloat;
            //pPis      := FDProduto.FieldByName('pisst_pPIS').AsFloat;
          //  qBCProd   := Dm.mov_prod_nfe.FieldByName('valor_prod').AsFloat;
           // vAliqProd := Dm.mov_prod_nfe.FieldByName('valor_prod').AsFloat;
            //vPIS      := FDProduto.FieldByName('pisst_vPIS').AsFloat;
            end;

            with COFINS do
            begin
            if FDprod.FieldByName('PRO_CSTPISCOFINS').AsString = '04-Operação Tributável Monofásica – Revenda a Alíquota Zero' then
               begin
               CST := cof04
               end;

            //COFINS.vBC     := FDProduto.FieldByName('cofins_vBC').AsFloat;
            //COFINS.pCOFINS := FDProduto.FieldByName('cofins_per').AsFloat;
            //COFINS.vCOFINS := FDProduto.FieldByName('cofins_val').AsFloat;

            //COFINS.qBCProd   := Dm.mov_prod_nfe.FieldByName('valor_prod').AsFloat;
           // COFINS.vAliqProd := Dm.mov_prod_nfe.FieldByName('valor_prod').AsFloat;
            end;

            with COFINSST do
            begin
           // vBC       := FDProduto.FieldByName('cofinsst_vBC').AsFloat;
           // pCOFINS   := FDProduto.FieldByName('cofinsst_per').AsFloat;
            //qBCProd   := Dm.mov_prod_nfe.FieldByName('valor_prod').AsFloat;
            //vAliqProd := Dm.mov_prod_nfe.FieldByName('valor_prod').AsFloat;
            //vCOFINS   := FDProduto.FieldByName('cofinsst_val').AsFloat;
            end;



          // Grupo para serviços
          { with ISSQN do
            begin
            vBC       := 0;
            vAliq     := 0;
            vISSQN    := 0;
            cMunFG    := 0;
            cListServ := 1402; // Preencha este campo usando a tabela disponível
            // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
            {       end; }
         finally
         FreeandNil(FDNCM);
         end;
          end;
           baseCalculo := baseCalculo + Imposto.ICMS.vBC;
           ttl_trib:= ttl_trib + Imposto.vTotTrib;
           Outros := Outros + Prod.vOutro;
           FDProduto.Next;
         finally
            FreeandNil(FDprod);
       end;

      end;



     end;
     finally
     FreeandNIl(FDProduto);
   end;




    // Adicionando Serviços
    { with Det.Add do
      begin
      Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
      Prod.cProd    := '123457';
      Prod.cEAN     := '';
      Prod.xProd    := 'Descrição do Serviço';
      Prod.NCM      := '99';
      Prod.EXTIPI   := '';
      Prod.CFOP     := '5933';
      Prod.uCom     := 'UN';
      Prod.qCom     := 1;
      Prod.vUnCom   := 100;
      Prod.vProd    := 100;

      Prod.cEANTrib  := '';
      Prod.uTrib     := 'UN';
      Prod.qTrib     := 1;
      Prod.vUnTrib   := 100;

      Prod.vFrete    := 0;
      Prod.vSeg      := 0;
      Prod.vDesc     := 0;

      infAdProd      := 'Informação Adicional do Serviço';

      //Grupo para serviços
      with Imposto.ISSQN do
      begin
      cSitTrib  := ISSQNcSitTribNORMAL;
      vBC       := 100;
      vAliq     := 2;
      vISSQN    := 2;
      cMunFG    := 3554003;
      cListServ := 1402; // Preencha este campo usando a tabela disponível
      // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
      end;
      end;
    }




    Total.ICMSTot.vBC     := Nfe.FieldByName('NFC_TOTAL_VBC').AsFloat;
    Total.ICMSTot.vICMS   := Nfe.FieldByName('NFC_TOTAL_VICMS').AsFloat;
    Total.ICMSTot.vBCST   := Nfe.FieldByName('NFC_TOTAL_VBCST').AsFloat;
    Total.ICMSTot.vST     := Nfe.FieldByName('NFC_TOTAL_VST').AsFloat;
    Total.ICMSTot.vProd   := Nfe.FieldByName('NFC_TOTAL_VPROD').AsFloat;
   // valorProdutos         := Nfe.FieldByName('total_nf').AsFloat;
    Total.ICMSTot.vSeg    := Nfe.FieldByName('NFC_TOTAL_VSEG').AsFloat;;
    Total.ICMSTot.vDesc   := Nfe.FieldByName('NFC_TOTAL_VDESC').AsFloat;
 //   descontoDinheiro      := Nfe.FieldByName('desconto_dinheiro').AsFloat;
  //  descontoPorcentagem   := descontoDinheiro * 100 /  valorProdutos;
    Total.ICMSTot.vII     := Nfe.FieldByName('NFC_TOTAL_VII').AsFloat;
    Total.ICMSTot.vIPI    := Nfe.FieldByName('NFC_TOTAL_VIPI').AsFloat;
    Total.ICMSTot.vPIS    := Nfe.FieldByName('NFC_TOTAL_VPIS').AsFloat;
    Total.ICMSTot.vCOFINS := Nfe.FieldByName('NFC_TOTAL_VCONFINS').AsFloat;
    Total.ICMSTot.vOutro  := Outros;
    Total.ICMSTot.vFrete  := 0;
    Total.ICMSTot.vNF     := Nfe.FieldByName('NFC_TOTAL_VNF').AsFloat;
    //valorPagar            := Nfe.FieldByName('total_apagar').AsFloat; // 2
    Total.ICMSTot.vTotTrib := ttl_trib;

    // partilha do icms e fundo de probreza
    Total.ICMSTot.vFCPUFDest := 0.00;
    Total.ICMSTot.vICMSUFDest := 0.00;
    Total.ICMSTot.vICMSUFRemet := 0.00;

    Total.ISSQNtot.vServ := 0;
    Total.ISSQNtot.vBC := 0;
    Total.ISSQNtot.vISS := 0;
    Total.ISSQNtot.vPIS := 0;
    Total.ISSQNtot.vCOFINS := 0;

    { Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0; }
      {Destinatário
       Emitente
       Próprio Destinatário
       Próprio Remetente
       Sem frete
       Terceiro}


      {

      FDFat := TFdquery.Create(nil);
      FDFat.Connection := dm.Con;
      try
       with FDFat do
       begin
         Close;
         SQL.Clear;
         SQL.Add('select * from TB_PARCELASVENDAS where par_beneficiario='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
         SQL.Add('and PAR_CODIGOVENDA='+QuotedStr(NFe.FieldByName('nfe_codigo').AsString));
         SQL.Add('and PAR_TIPOVENDA='+QuotedStr('NF-e'));
         sql.Add('order by PAR_DATAVENCIMENTO');
         Open;
         if not IsEmpty then
         begin
          Cobr.Fat.nFat  := inttostr(NFe.FieldByName('NFE_IDE_NNF').AsInteger);
          Cobr.Fat.vOrig := Nfe.FieldByName('NFE_FORMACARCREDITO').AsFloat +Nfe.FieldByName('NFE_FORMABOLETO').AsFloat+ Nfe.FieldByName('NFE_FORMACHQUEP').AsFloat +Nfe.FieldByName('NFE_CREDIARIO').AsFloat ;
          Cobr.Fat.vDesc := 0;
          Cobr.Fat.vLiq  := Nfe.FieldByName('NFE_FORMACARCREDITO').AsFloat +Nfe.FieldByName('NFE_FORMABOLETO').AsFloat+ Nfe.FieldByName('NFE_FORMACHQUEP').AsFloat +Nfe.FieldByName('NFE_CREDIARIO').AsFloat ;
          while not eof do
          begin
           with Cobr.Dup.Add do
            begin
             nDup  :=  FDFat.FieldByName('PAR_NUMEROPARCELA').AsString;
             dVenc := FDFat.FieldByName('PAR_DATAVENCIMENTO').AsDateTime+10;
             vDup  := FDFat.FieldByName('PAR_VALORPARCELA').AsFloat;
             next;
            end;

          end;
         end;
       end;
      finally
       FreeandNil(FDFat);
      end;
              }

         if Nfe.FieldByName('NFC_FORMACREDIARIO').AsFloat > 0  then
            begin
            with pag.Add do
             begin
             tPag := fpCreditoLoja;
             vPag := Nfe.FieldByName('NFC_FORMACREDIARIO').AsFloat;
             end;
            end;
           { if frmNfeEmissao.NFe.FormaChequePre > 0  then
            begin
            with pag.Add do
             begin
             tPag := fpCheque;
             vPag := frmNfeEmissao.NFe.FormaChequePre;
             end;
            end;}
            if (Nfe.FieldByName('NFC_FORMACHEQUE').AsFloat > 0)  then
            begin
            with pag.Add do
             begin
             tPag := fpCheque;
             vPag := Nfe.FieldByName('NFC_FORMACHEQUE').AsFloat;
             end;
            end;
            if Nfe.FieldByName('NFC_FORMACARTAODEBITO').AsFloat > 0  then
            begin
            with pag.Add do
             begin
             tPag := fpCartaoDebito;
             vPag := Nfe.FieldByName('NFC_FORMACARTAODEBITO').AsFloat;
             tpIntegra := tiPagNaoIntegrado;
             end;
            end;
            if Nfe.FieldByName('NFC_FORMACARTAOCREDITO').AsFloat > 0  then
            begin
            with pag.Add do
             begin
             tPag := fpCartaoCredito;
             vPag := Nfe.FieldByName('NFC_FORMACARTAOCREDITO').AsFloat;
             tpIntegra := tiPagNaoIntegrado;
             end;
            end;
            if Nfe.FieldByName('NFC_FORMADINHEIRO').AsFloat > 0  then
            begin
            with pag.Add do
             begin
             tPag := fpDinheiro;
             vPag := Nfe.FieldByName('NFC_FORMADINHEIRO').AsFloat;
             if  Nfe.FieldByName('NFC_PAGDINHEIRO').AsFloat > Nfe.FieldByName('NFC_FORMADINHEIRO').AsFloat then
              begin
               vPag := Nfe.FieldByName('NFC_PAGDINHEIRO').AsFloat;
               pag.vTroco := vPag - Nfe.FieldByName('NFC_FORMADINHEIRO').AsFloat;
              end;
             end;
            end;






        {A Prazo
        Boleto
        Cartão Crédito
        Cartão débito
        Cheque
        Dinheiro}

    InfAdic.infCpl := '';
    InfAdic.infAdFisco := '';

           if (frmPrincipal.Global.PRI_NFE_REGIME = 'Simples') and (frmPrincipal.Global.PRI_NFE_CONF10 = 'True')then
         begin
           InfAdic.infCpl := 'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL, NÃO GERA DIREITO A CRÉDITO FISCAL DE ICMS, DE ISS E DE IPI, '+#13+nfe.FieldByName('NFE_INFADIC_INFCPL').AsString;
         end;

    { with InfAdic.obsCont.Add do
      begin
      xCampo := 'ObsCont';
      xTexto := 'Texto';
      end;

      with InfAdic.obsFisco.Add do
      begin
      xCampo := 'ObsFisco';
      xTexto := 'Texto';
      end; }
      {if DM.global1.FieldByName('nfe_regime').AsString = 'Simples'then
         begin


           InfAdic.infCpl := 'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL, NÃO GERA DIREITO A CRÉDITO FISCAL DE ICMS, DE ISS E DE IPI, '+dm.nfe.FieldByName('obs').AsString;

         end;}



    end;
 finally
    FreeandNil(NFe);
    FreeandNil(funcao);
 end;





  end;


procedure TNfceModel.GravaCartaoDebito(Codigo, NNFE, CodCliente: Integer; valor,
  vlrCompra: Double; formaPagamento, tipoVenda, Modelo: String);
var
q1, cli : TFDquery;
ppaM :TContasAReceberModel;
ppaC :TContasAReceberController;
begin

          cli := TFDquery.Create(nil);
          cli.Connection := dm.Con;

          try
           cli.Close;
           cli.SQL.Clear;
           cli.SQL.Add('select * from TB_CLIENTES where cli_codigo='+QuotedStr(inttostr(CodCliente)));
           cli.open;

            ppaM := TContasAReceberModel.create;
            ppaC := TContasAReceberController.create;
            try
              with ppaM do
              begin
               CRE_CODIGO := 0;
               if cli.IsEmpty then
               begin
                CRE_NOME_CLIENTE := 'Consumidor Final';
               end
               else
               begin
               CRE_CODIGO_CLIENTE := cli.FieldByName('CLI_CODIGO').AsInteger;
               end;
               CRE_CPF_CLIENTE := cli.FieldByName('CLI_CPFCNPJ').AsString;
               CRE_ENDERECO_CLIENTE := cli.FieldByName('CLI_ENDERECO').AsString;
               CRE_BAIRRO_CLIENTE := cli.FieldByName('CLI_BAIRRO').AsString;
               CRE_NUMERO_CLIENTE := cli.FieldByName('CLI_NUMERO').AsString;
               CRE_MUNICIPIO_CLIENTE := cli.FieldByName('CLI_CIDADE').AsString;
               CRE_COMPLEMENTO_CLIENTE := cli.FieldByName('CLI_COMPLEMENTO').AsString;
               CRE_CEP_CLIENTE := cli.FieldByName('CLI_CEP').AsString;
               CRE_TIPO_VENDA := tipoVenda;
               CRE_VALOR_PARCELA := valor;
               CRE_VALOR_JUROS := 0;
               CRE_VALOR_MULTA := 0;
               CRE_VALOR_PAGO := 0;
               CRE_DATA_COMPRA := now;
               CRE_REF_PARCELA := '1/1';
               CRE_NUMERO_VENDA := Codigo;
               //CRE_QTD_PARCELAS:= q1.FieldByName('PAR_NUMEROVENDA').AsInteger;
               CRE_VALOR_COMPRA := vlrCompra;
               CRE_FORMA_PAGAMENTO := formaPagamento;
               CRE_CODIGO_VENDEDOR := 0;
               CRE_OPERADOR := frmPrincipal.StatusBar1.Panels[6].Text;
               CRE_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
               CRE_DATA_VENCIMENTO :=IncMonth(now, 1);
               CRE_STATUS := 'A Vencer';
               CRE_NUMERO_VENDA := NNFE;
               CRE_VALOR_PARCELA_LIMPA :=  valor;
               CRE_TIPO := Modelo;
               CRE_NOME_PLANODECONTA := frmPrincipal.Global.PRI_PDC_VENDA_NFCE;
               CRE_CODIGO_PLANODECONTA := frmPrincipal.Global.PRI_PDC_VENDA_NFCE_ID;
              end;
              ppaC.Inserir(ppaM);
            finally
             FreeandNil(ppaM);
             FreeandNil(ppaC);
            end;


          finally
            FreeandNil(cli);
          end;


end;


procedure TNfceModel.GravaCrediario(Codigo, NNFE: Integer; formaPagamento,
  tipoVenda, Modelo, CodigoPrevenda: String);
var
q1, cli : TFDquery;
ppaM :TContasAReceberModel;
ppaC :TContasAReceberController;
begin
    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

    try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Add('select * from TB_PARCELASVENDAS where PAR_CODIGOVENDA=:PAR_CODIGOVENDA');
        sql.Add('and PAR_FORMAPAG ='+QuotedStr(formaPagamento));
        sql.Add('and PAR_TIPOVENDA='+QuotedStr(tipoVenda));
        sql.Add('order by PAR_DATAVENCIMENTO');
        ParamByName('PAR_CODIGOVENDA').AsInteger := strtoint(CodigoPrevenda);
        open;
        if not IsEmpty then
        begin
          cli := TFDquery.Create(nil);
          cli.Connection := dm.Con;

          try
           cli.Close;
           cli.SQL.Clear;
           cli.SQL.Add('select * from TB_CLIENTES where cli_codigo='+QuotedStr(inttostr(q1.FieldByName('PAR_CODIGO_CLIENTE').AsInteger)));
           cli.open;
             while not eof do
           begin
            ppaM := TContasAReceberModel.create;
            ppaC := TContasAReceberController.create;
            try
              with ppaM do
              begin
               CRE_CODIGO := 0;
               CRE_NOME_CLIENTE := q1.FieldByName('PAR_CLIENTE').AsString;
               CRE_CODIGO_CLIENTE := q1.FieldByName('PAR_CODIGO_CLIENTE').AsInteger;
               CRE_CPF_CLIENTE := cli.FieldByName('CLI_CPFCNPJ').AsString;
               CRE_ENDERECO_CLIENTE := cli.FieldByName('CLI_ENDERECO').AsString;
               CRE_BAIRRO_CLIENTE := cli.FieldByName('CLI_BAIRRO').AsString;
               CRE_NUMERO_CLIENTE := cli.FieldByName('CLI_NUMERO').AsString;
               CRE_MUNICIPIO_CLIENTE := cli.FieldByName('CLI_CIDADE').AsString;
               CRE_COMPLEMENTO_CLIENTE := cli.FieldByName('CLI_COMPLEMENTO').AsString;
               CRE_CEP_CLIENTE := cli.FieldByName('CLI_CEP').AsString;
               CRE_TIPO_VENDA := 'NFC-e';
               CRE_VALOR_PARCELA := q1.FieldByName('PAR_VALORPARCELA').AsFloat;
               CRE_VALOR_JUROS := 0;
               CRE_VALOR_MULTA := 0;
               CRE_VALOR_PAGO := 0;
               CRE_DATA_COMPRA := now;
               CRE_REF_PARCELA := q1.FieldByName('PAR_REFERENCIA').AsString;
               CRE_NUMERO_VENDA := q1.FieldByName('PAR_NUMEROVENDA').AsInteger;
               //CRE_QTD_PARCELAS:= q1.FieldByName('PAR_NUMEROVENDA').AsInteger;
               CRE_VALOR_COMPRA := q1.FieldByName('PAR_VALORVENDA').AsFloat;
               CRE_FORMA_PAGAMENTO := q1.FieldByName('PAR_FORMAPAG').AsString;
               CRE_CODIGO_VENDEDOR := 0;
               CRE_OPERADOR := frmPrincipal.StatusBar1.Panels[6].Text;
               CRE_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
               CRE_DATA_VENCIMENTO :=q1.FieldByName('PAR_DATAVENCIMENTO').AsDateTime;
               CRE_STATUS := 'A Vencer';
               CRE_NUMERO_VENDA := NNFE;
               CRE_VALOR_PARCELA_LIMPA :=  q1.FieldByName('PAR_VALORPARCELA').AsFloat;
               CRE_TIPO := Modelo;
               CRE_NOME_PLANODECONTA := frmPrincipal.Global.PRI_PDC_VENDA_NFCE;
               CRE_CODIGO_PLANODECONTA := frmPrincipal.Global.PRI_PDC_VENDA_NFCE_ID;
              end;
              ppaC.Inserir(ppaM);
            finally
             FreeandNil(ppaM);
             FreeandNil(ppaC);
            end;
            next;
           end;
          finally
            FreeandNil(cli);
          end;
        end;
      end;
    finally
      FreeandNil(q1);
    end;
end;

procedure TNfceModel.ImprePrevenda(Codigo: Integer);
var
formax : String;
begin
  with dm.Prevenda do
  begin
    close;
    sql.Clear;
    sql.Add('select * from tb_prevenda where pre_codigo=:pre_codigo');
    ParamByName('pre_codigo').AsInteger := Codigo;
    open;
    if FieldByName('PRE_PAGDINHEIRO').AsFloat > 0 then
       formax := formax + 'Dinheiro : ' +formatfloat('###,###,##0.00', FieldByName('PRE_PAGDINHEIRO').AsFloat)+#13;
    if FieldByName('PRE_PAGCREDIARIO').AsFloat > 0 then
       formax := formax + 'Crediário : ' +formatfloat('###,###,##0.00', FieldByName('PRE_PAGCREDIARIO').AsFloat)+#13;
    if FieldByName('PRE_PAGCARTAODEBITO').AsFloat > 0 then
       formax := formax + 'Cartão Débito : ' +formatfloat('###,###,##0.00', FieldByName('PRE_PAGCARTAODEBITO').AsFloat)+#13;
    if FieldByName('PRE_PAGCARTAOCREDITO').AsFloat > 0 then
       formax := formax + 'Cartão Crédito : ' +formatfloat('###,###,##0.00', FieldByName('PRE_PAGCARTAOCREDITO').AsFloat)+#13;
    if FieldByName('PRE_PAGCHEQUE').AsFloat > 0 then
       formax := formax + 'Cheque : ' +formatfloat('###,###,##0.00', FieldByName('PRE_PAGCHEQUE').AsFloat)+#13;
    if FieldByName('PRE_PABOLETO').AsFloat > 0 then
       formax := formax + 'Boleto : ' +formatfloat('###,###,##0.00', FieldByName('PRE_PABOLETO').AsFloat)+#13;

  end;
  with dm.ItensPrevenda do
  begin
    close;
    sql.Clear;
    sql.Add('select * from tb_itensprevenda where PRE_CODIGO_PREVENDA=:PRE_CODIGO_PREVENDA');
    ParamByName('PRE_CODIGO_PREVENDA').AsInteger := Codigo;
    open;
  end;
   dm.frxPrevendaMod1.LoadFromFile(ExtractFilePath(Application.exeName) + '\Relatorios\PrevendaModelo1.fr3');
   dm.frxPrevendaMod1.Variables.Clear;
   dm.frxPrevendaMod1.Script.Variables['forma'] := formax;
   dm.frxPrevendaMod1.ShowReport;

end;


procedure TNfceModel.Insert(ObjNfce: TNfceModel);
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
       sql.Text := 'insert into TB_NFCE'
       +'(NFC_CODIGO'
       +',NFC_IDE_UF'
       +',NFC_IDE_NATOP'
       +',NFC_IDE_MOD'
       +',NFC_IDE_SERIE'
       +',NFC_IDE_NNF'
       +',NFC_IDE_DHEMI'
       +',NFC_DEST_CNPJ'
       +',NFC_DEST_XNOME'
       +',NFC_TOTAL_VBC'
       +',NFC_TOTAL_VICMS'
       +',NFC_TOTAL_VICMSDESON'
       +',NFC_TOTAL_TOTAL_VFCP'
       +',NFC_TOTAL_VBCST'
       +',NFC_TOTAL_VST'
       +',NFC_TOTAL_VFCPST'
       +',NFC_TOTAL_VFCPSTRET'
       +',NFC_TOTAL_VPROD'
       +',NFC_TOTAL_VFRETE'
       +',NFC_TOTAL_VSEG'
       +',NFC_TOTAL_VDESC'
       +',NFC_TOTAL_VII'
       +',NFC_TOTAL_VIPI'
       +',NFC_TOTAL_IPIDEVOL'
       +',NFC_TOTAL_VPIS'
       +',NFC_TOTAL_VCONFINS'
       +',NFC_TOTAL_VOUTRO'
       +',NFC_TOTAL_VNF'
       +',NFC_TOTAL_VTOTTRIB'
       +',NFC_BENEFICIARIO'
       +',NFC_RANDOMICO'
       +',NFC_FORMADINHEIRO'
       +',NFC_FORMACARTAOCREDITO'
       +',NFC_FORMACARTAODEBITO'
       +',NFC_FORMACHEQUE'
       +',NFC_IDE_ID'
       +',NFC_XMOTIVO'
       +',NFC_PORDESCONTO'
       +',NFC_VENDEDOR'
       +',NFC_USUARIO'
       +',NFC_COD_USUARIO'
       +',NFC_FECHADA'
       +',NFC_TIPO)'
       +'values(:NFC_CODIGO'
       +',:NFC_IDE_UF'
       +',:NFC_IDE_NATOP'
       +',:NFC_IDE_MOD'
       +',:NFC_IDE_SERIE'
       +',:NFC_IDE_NNF'
       +',:NFC_IDE_DHEMI'
       +',:NFC_DEST_CNPJ'
       +',:NFC_DEST_XNOME'
       +',:NFC_TOTAL_VBC'
       +',:NFC_TOTAL_VICMS'
       +',:NFC_TOTAL_VICMSDESON'
       +',:NFC_TOTAL_TOTAL_VFCP'
       +',:NFC_TOTAL_VBCST'
       +',:NFC_TOTAL_VST'
       +',:NFC_TOTAL_VFCPST'
       +',:NFC_TOTAL_VFCPSTRET'
       +',:NFC_TOTAL_VPROD'
       +',:NFC_TOTAL_VFRETE'
       +',:NFC_TOTAL_VSEG'
       +',:NFC_TOTAL_VDESC'
       +',:NFC_TOTAL_VII'
       +',:NFC_TOTAL_VIPI'
       +',:NFC_TOTAL_IPIDEVOL'
       +',:NFC_TOTAL_VPIS'
       +',:NFC_TOTAL_VCONFINS'
       +',:NFC_TOTAL_VOUTRO'
       +',:NFC_TOTAL_VNF'
       +',:NFC_TOTAL_VTOTTRIB'
       +',:NFC_BENEFICIARIO'
       +',:NFC_RANDOMICO'
       +',:NFC_FORMADINHEIRO'
       +',:NFC_FORMACARTAOCREDITO'
       +',:NFC_FORMACARTAODEBITO'
       +',:NFC_FORMACHEQUE'
       +',:NFC_IDE_ID'
       +',:NFC_XMOTIVO'
       +',:NFC_PORDESCONTO'
       +',:NFC_VENDEDOR'
       +',:NFC_USUARIO'
       +',:NFC_COD_USUARIO'
       +',:NFC_FECHADA'
       +',:NFC_TIPO)';
       ParamByName('NFC_CODIGO').AsInteger:=NFC_CODIGO;
       ParamByName('NFC_IDE_UF').AsString:=NFC_IDE_UF;
       ParamByName('NFC_IDE_NATOP').AsString:=NFC_IDE_NATOP;
       ParamByName('NFC_IDE_MOD').Asinteger:=NFC_IDE_MOD;
       ParamByName('NFC_IDE_SERIE').Asinteger:=NFC_IDE_SERIE;
       ParamByName('NFC_IDE_NNF').AsInteger:=NFC_IDE_NNF;
       ParamByName('NFC_IDE_DHEMI').AsDate:=NFC_IDE_DHEMI;
       ParamByName('NFC_DEST_CNPJ').AsString:=NFC_DEST_CNPJ;
       ParamByName('NFC_DEST_XNOME').AsString:=NFC_DEST_XNOME;
       ParamByName('NFC_TOTAL_VBC').AsFloat:=NFC_TOTAL_VBC;
       ParamByName('NFC_TOTAL_VICMS').AsFloat:=NFC_TOTAL_VICMS;
       ParamByName('NFC_TOTAL_VICMSDESON').AsFloat:=NFC_TOTAL_VICMSDESON;
       ParamByName('NFC_TOTAL_TOTAL_VFCP').AsFloat:=NFC_TOTAL_TOTAL_VFCP;
       ParamByName('NFC_TOTAL_VBCST').AsFloat:=NFC_TOTAL_VBCST;
       ParamByName('NFC_TOTAL_VST').AsFloat:=NFC_TOTAL_VST;
       ParamByName('NFC_TOTAL_VFCPST').AsFloat:=NFC_TOTAL_VFCPST;
       ParamByName('NFC_TOTAL_VFCPSTRET').AsFloat:=NFC_TOTAL_VFCPSTRET;
       ParamByName('NFC_TOTAL_VPROD').AsFloat:=NFC_TOTAL_VPROD;
       ParamByName('NFC_TOTAL_VFRETE').AsFloat:=NFC_TOTAL_VFRETE;
       ParamByName('NFC_TOTAL_VSEG').AsFloat:=NFC_TOTAL_VSEG;
       ParamByName('NFC_TOTAL_VDESC').AsFloat:=NFC_TOTAL_VDESC;
       ParamByName('NFC_TOTAL_VII').AsFloat:=NFC_TOTAL_VII;
       ParamByName('NFC_TOTAL_VIPI').AsFloat:=NFC_TOTAL_VIPI;
       ParamByName('NFC_TOTAL_IPIDEVOL').AsFloat:=NFC_TOTAL_IPIDEVOL;
       ParamByName('NFC_TOTAL_VPIS').AsFloat:=NFC_TOTAL_VPIS;
       ParamByName('NFC_TOTAL_VCONFINS').AsFloat:=NFC_TOTAL_VCONFINS;
       ParamByName('NFC_TOTAL_VOUTRO').AsFloat:=NFC_TOTAL_VOUTRO;
       ParamByName('NFC_TOTAL_VNF').AsFloat:=NFC_TOTAL_VNF;
       ParamByName('NFC_TOTAL_VTOTTRIB').AsFloat:=NFC_TOTAL_VTOTTRIB;
       ParamByName('NFC_BENEFICIARIO').AsString:=NFC_BENEFICIARIO;
       ParamByName('NFC_RANDOMICO').AsString:=NFC_RANDOMICO;
       ParamByName('NFC_FORMADINHEIRO').AsFloat:=NFC_FORMADINHEIRO;
       ParamByName('NFC_FORMACARTAOCREDITO').AsFloat:=NFC_FORMACARTAOCREDITO;
       ParamByName('NFC_FORMACARTAODEBITO').AsFloat:=NFC_FORMACARTAODEBITO;
       ParamByName('NFC_FORMACHEQUE').AsFloat:=NFC_FORMACHEQUE;
       ParamByName('NFC_IDE_ID').AsString:=NFC_IDE_ID;
       ParamByName('NFC_XMOTIVO').AsString:=NFC_XMOTIVO;
       ParamByName('NFC_PORDESCONTO').AsFloat:=NFC_PORDESCONTO;
       ParamByName('NFC_VENDEDOR').AsString:=NFC_VENDEDOR;
       ParamByName('NFC_USUARIO').AsString:=NFC_USUARIO;
       ParamByName('NFC_COD_USUARIO').AsInteger:=NFC_COD_USUARIO;
       ParamByName('NFC_FECHADA').AsString:=NFC_FECHADA;
       ParamByName('NFC_TIPO').AsString:=NFC_TIPO;
       ExecSQL
     end;
   finally
     FreeandNil(q1);
   end;
end;

function TNfceModel.InutilizaNFCe(Justificativa, Ano, NInicial, NFinal,
  serie, Modelo: String; CodigoNFCe : integer) : Boolean;
  var
  q1 : TFDquery;
begin


  dm.ACBrNFe.WebServices.Inutiliza(frmPrincipal.Global.PRI_CPFCNPJ, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NInicial), StrToInt(NFinal));

  if dm.ACBrNFe.WebServices.Inutilizacao.cStat = 102 then
     begin
       if NInicial = NFinal then
       begin
         ShowMessage('Numero Inutilizado com sucesso!');
         Result := True;
         q1 := TFDquery.Create(nil);
         q1.Connection := dm.Con;
         try
           with q1 do
           begin
             close;
             sql.Clear;
             sql.Add('select * from tb_nfce where nfc_codigo = '+QuotedStr(inttostr(CodigoNFCe)));
             open;
             if not q1.IsEmpty then
             begin
             edit;
             FieldByName('NFC_XMOTIVO').AsString := 'Inutilizado';
             post;
             end;
           end;
         finally
           FreeandNil(q1);
         end;
       end;
       if NInicial > NFinal  then
       begin
         ShowMessage('Numeros Inutilizado com sucesso!');
         Result := True;
          q1 := TFDquery.Create(nil);
         q1.Connection := dm.Con;
         try
           with q1 do
           begin
             close;
             sql.Clear;
             sql.Add('select * from tb_nfce where nfc_codigo = '+QuotedStr(inttostr(CodigoNFCe)));
             open;
             if not q1.IsEmpty then
             begin
             edit;
             FieldByName('NFC_XMOTIVO').AsString := 'Inutilizado';
             post;
             end;
           end;
         finally
           FreeandNil(q1);
         end;
       end;
     end
     else
     Result := false;
end;

procedure TNfceModel.JogaNoCaixa(Codigo, cliente, NNF: String;
  Entrada, Saida: Double; Tipo : String);
var
caixaModel : TCaixaModel;
caixaController : TCaixaController;
funcao  : TFuncoesGerais;
pdcModel : TPlanoDeContaModel;
pdcController : TPlanoDeContaController;
x : TDate;
ps : TFDquery;
begin
         x := now;
        if frmPrincipal.Global.PRI_PDC_VENDA_NFE = '' then
           begin
           pdcModel := TPlanoDeContaModel.create;
           pdcController := TPlanoDeContaController.create;
           funcao := TFuncoesGerais.create;
           try
               with pdcModel do
               begin
                 PLA_CONTA := '11002';
                 PLA_NOMEPLANO := 'VENDA NFC-E';
                 PLA_SALDO := Entrada + Saida;
                 PLA_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
               end;
               pdcController.Inserir(pdcModel);
           finally
             FreeandNil(pdcModel);
             FreeandNil(pdcController);
             FreeandNil(funcao);
           end;
           ps := TFDquery.Create(nil);
           ps.Connection := dm.Con;

           with ps do
           begin
             close;
             sql.Clear;
             sql.Add('select * from TB_PLANODECONTA where PLA_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
             sql.Add('and PLA_CONTA='+QuotedStr('11001'));
             open;
           end;
           frmPrincipal.Global.PRI_PDC_VENDA_NFCE := 'VENDA NFC-E';
           frmPrincipal.Global.PRI_PDC_VENDA_NFCE_ID := ps.FieldByName('pla_codigo').AsInteger;
           dm.Global.Edit;
           dm.Global.FieldByName('PRI_PDC_VENDA_NFE_id').AsInteger := frmPrincipal.Global.PRI_PDC_VENDA_NFCE_ID;
           dm.Global.FieldByName('PRI_PDC_VENDA_NFE').AsString := frmPrincipal.Global.PRI_PDC_VENDA_NFCE;
           dm.Global.Post;
           dm.Global.ApplyUpdates;
           FreeandNil(ps);
          end
          else
          begin
           ps := TFDquery.Create(nil);
           ps.Connection := dm.Con;

          with ps do
           begin
             close;
             sql.Clear;
             sql.Add('select * from TB_PLANODECONTA where PLA_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
             sql.Add('and pla_codigo='+QuotedStr(inttostr(frmPrincipal.Global.PRI_PDC_VENDA_NFE_ID)));
             open;
           end;

           pdcModel := TPlanoDeContaModel.create;
           pdcController := TPlanoDeContaController.create;
           funcao := TFuncoesGerais.create;
           try
               with pdcModel do
               begin
                 PLA_CODIGO := Ps.FieldByName('PLA_CODIGO').AsInteger;
                 PLA_CONTA := Ps.FieldByName('PLA_CONTA').AsString;
                 PLA_NOMEPLANO := Ps.FieldByName('PLA_NOMEPLANO').AsString;;
                 PLA_SALDO := Ps.FieldByName('PLA_SALDO').asfloat + Entrada + Saida;;
                 PLA_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
               end;
               pdcController.Alterar(pdcModel);
           finally
             FreeandNil(pdcModel);
             FreeandNil(pdcController);
             FreeAndNil(funcao);
             FreeandNil(ps);
           end;
          end;

        CaixaModel := TCaixaModel.create;
        caixaController := TCaixaController.create;
        pdcModel := TPlanoDeContaModel.create;
        funcao := TFuncoesGerais.create;
        try
           with  caixaModel, funcao do
           begin
            CAI_CODIGO := 0;
            CAI_UUID := '';
            if Entrada > 0 then
            begin
            CAI_ENTRADA := Entrada;
            CAI_FORMA := 'Venda';
            CAI_TIPOMOVIMENTACAO := 'Venda NFCe';
            end;
            if Saida > 0 then
            begin
            CAI_SAIDA := Saida;
            CAI_FORMA := 'Cancelamento';
            CAI_TIPOMOVIMENTACAO := 'Cancelamento NFCe';
            end;
            CAI_SALDO := 0;
            CAI_DATA := now;
            CAI_HORA := now;
            CAI_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
            CAI_VENDEDOR := '';
            CAI_CODIGO_VENDEDOR := 0;

            CAI_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
            CAI_NVENDA := 0;

            CAI_TERMINAL := '';
            CAI_PLANODECONTA := frmPrincipal.Global.PRI_PDC_VENDA_NFCE;
            CAI_CODIGO_PLANODECONTA := frmPrincipal.Global.PRI_PDC_VENDA_NFCE_ID;
            CAI_CODIGO_MOV_PLANODECONTA := 0;
            CAI_CODIGO_CONTASAPAGAR := 0;
            CAI_CODIGO_CONTASARECEBER := 0;
            CAI_CODIGO_PREVENDA := 0;
            CAI_CODIGO_BANCO := 0;
            CAI_RECEITA := Cliente +' NFCe Nº ' + NNF;
            CAI_PORTADOR := '';
            CAI_STATUS_ABREFECHACAIXA := 'Aberto';
            CAI_TIPO := Tipo;
            CAI_CODIGO_USUARIO := frmPrincipal.PerM.CodigoUser;
            CAI_NOME_USUARIO := frmPrincipal.PerM.Login;
           end;
           caixaController.Inserir(caixaModel);
           CaixaModel.CalculaSaldo(Entrada, x, Tipo);
           pdcModel.MovimentaPlanoDeConta(Entrada,Saida,frmPrincipal.Global.PRI_PDC_VENDA_NFCE_ID);
        finally
          FreeandNil(caixaModel);
          FreeandNil(caixaController);
          FreeandNil(funcao);
          FreeandNil(pdcModel);
        end;



end;

procedure TNfceModel.LerConfNfce;
var
caminho, impressao, cupom : TIniFile;
caminhoxml, largurabobina, margemDireita, margemEsquerda, margeminferior, margemsuperior : String;
begin
    dm.ACBrNFe.NotasFiscais.Clear;

    impressao := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\conf.ini');

    dm.ACBrNFe.DANFE := dm.ACBrNFeDANFCeFortes1;
    dm.ACBrNFe.DANFE.ExibeTotalTributosItem:= true;
    dm.ACBrNFe.DANFE.ImprimeTributos := trbSeparadamente;
    dm.ACBrNFe.DANFE.TipoDANFE := tiNFCe;

  dm.ACBrNFe.DANFE.Logo := ExtractFilePath(Application.ExeName) + '\img\nfcelogo.bmp';

  dm.ACBrNFe.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName) + '\Schemas\NFe';
   if frmprincipal.Global.PRI_PDV_SERVIDOR= 'Homologação' then
   begin
    dm.ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;
   end;
  if frmprincipal.Global.PRI_PDV_SERVIDOR = 'Produção' then
   begin
    dm.ACBrNFe.Configuracoes.WebServices.Ambiente := taProducao;
   end;

   if frmprincipal.Global.PRI_PDV_EMISSAO = 'Normal' then
    begin
      dm.ACBrNFe.Configuracoes.Geral.FormaEmissao:= teNormal;
    end;
       if frmprincipal.Global.PRI_PDV_EMISSAO = 'Contigência' then
    begin
      dm.ACBrNFe.Configuracoes.Geral.FormaEmissao:= teOffLine;
    end;


      cupom := TIniFile.Create(GetCurrentDir + '\conf.ini');
       if cupom.ReadString('cupom','LarguraBobina ','') <> '' then
         begin
           dm.ACBrNFeDANFCeFortes1.LarguraBobina :=  strtoint(cupom.ReadString('cupom','LarguraBobina ',''));
           dm.ACBrNFeDANFCeFortes1.MargemDireita :=  strtofloat(cupom.ReadString('cupom','MargemDireita  ',''));
           dm.ACBrNFeDANFCeFortes1.MargemEsquerda :=  strtofloat(cupom.ReadString('cupom','margemEsquerda  ',''));
           dm.ACBrNFeDANFCeFortes1.MargemInferior :=  strtofloat(cupom.ReadString('cupom','margeminferior  ',''));
           dm.ACBrNFeDANFCeFortes1.MargemSuperior :=  strtofloat(cupom.ReadString('cupom','margemsuperior  ',''));
           dm.ACBrNFeDANFCeFortes1.ImprimeQRCodeLateral := false;
         end;





        caminho := TIniFile.Create(GetCurrentDir + '\conf.ini');
       if caminho.ReadString('NFC-e','mapeamentoxml','') = '' then
         begin
           dm.ACBrNFe.Configuracoes.Arquivos.PathSalvar := GetCurrentDir + '\nfce\xml';
         end;
        if caminho.ReadString('NFC-e','mapeamentoxml','') <> '' then
         begin
           caminhoxml := caminho.ReadString('NFC-e','mapeamentoxml','');
           dm.ACBrNFe.Configuracoes.Arquivos.PathSalvar := caminhoxml;

         end;


  dm.ACBrNFe.Configuracoes.Certificados.NumeroSerie :=  frmPrincipal.Global.PRI_NFE_NUMERO_S_CERTIFICADO;
  dm.ACBrNFe.Configuracoes.Certificados.Senha       :=  frmPrincipal.Global.PRI_NFE_SENHA_CERTIFICADO;
  dm.ACBrNFe.Configuracoes.WebServices.UF           :=  frmPrincipal.Global.PRI_UF;
  dm.ACBrNFe.Configuracoes.Geral.IdCSC              :=  frmPrincipal.Global.PRI_PDV_IDCSC;
  dm.ACBrNFe.Configuracoes.Geral.CSC                :=  frmPrincipal.Global.PRI_PDV_CODIGOCSC;

   dm.ACBrNFe.Configuracoes.Geral.ModeloDF                      := moNFCe;
   dm.ACBrNFe.Configuracoes.Geral.VersaoQRCode                  := veqr200;
   dm.ACBrNFe.Configuracoes.Geral.VersaoDF                      := ve400;
   dm.ACBrNFe.Configuracoes.WebServices.TimeOut                 := strtoint(ConfigIni.TimeOut);
   dm.ACBrNFe.Configuracoes.WebServices.AguardarConsultaRet     := strtoint(ConfigIni.Aguardar);
   dm.ACBrNFe.Configuracoes.WebServices.IntervaloTentativas     := strtoint(ConfigIni.Intevalo);
   dm.ACBrNFe.Configuracoes.WebServices.Tentativas              := strtoint(ConfigIni.Tentativas);
   dm.ACBrNFe.Configuracoes.WebServices.AjustaAguardaConsultaRet:= false;
   dm.ACBrNFe.Configuracoes.Arquivos.Salvar                     := true;
   dm.ACBrNFe.Configuracoes.Arquivos.SalvarApenasNFeProcessadas := false;
   dm.ACBrNFe.Configuracoes.Arquivos.SalvarEvento:= False;



 if frmPrincipal.Global.PRI_NFE_CRIPTOGRAFIA = 'libNone' then
      begin
        dm.ACBrNFe.Configuracoes.Geral.SSLLib   := libNone;
      end;
   if frmPrincipal.Global.PRI_NFE_CRIPTOGRAFIA = 'libOpenSSL' then
      begin
        dm.ACBrNFe.Configuracoes.Geral.SSLLib   := libOpenSSL;
      end;
   if frmPrincipal.Global.PRI_NFE_CRIPTOGRAFIA = 'libCapicom' then
      begin
         dm.ACBrNFe.Configuracoes.Geral.SSLLib        := libCapicom;
        dm.ACBrNFe.Configuracoes.Geral.SSLCryptLib   := cryCapicom;
        dm.ACBrNFe.Configuracoes.Geral.SSLHttpLib    := httpWinINet;
        dm.ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsMsXmlCapicom;
      end;
   if frmPrincipal.Global.PRI_NFE_CRIPTOGRAFIA = 'libCapicomDelphiSoap' then
      begin
        dm.ACBrNFe.Configuracoes.Geral.SSLLib   := libCapicomDelphiSoap;
      end;
    if frmPrincipal.Global.PRI_NFE_CRIPTOGRAFIA = 'libWinCrypt' then
      begin
        dm.ACBrNFe.Configuracoes.Geral.SSLLib        := libWinCrypt;
        dm.ACBrNFe.Configuracoes.Geral.SSLCryptLib   := cryWinCrypt;
        dm.ACBrNFe.Configuracoes.Geral.SSLHttpLib    := httpWinHttp;
        dm.ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;
        dm.ACBrNFe.SSL.SSLType := TSSLType(LT_TLSv1_2);

      end;
    if frmPrincipal.Global.PRI_NFE_CRIPTOGRAFIA = 'libCustom' then
      begin
        dm.ACBrNFe.Configuracoes.Geral.SSLLib   := libCustom;
      end;
      if caminho.ReadString('NFC-e','visualizaCupom ','') = 'nao'  then
       begin
       dm.ACBrNFe.DANFE.MostraPreview := false;
       dm.ACBrNFe.DANFE.MostraStatus := false;
       dm.ACBrNFeDANFCeFortes1.Impressora := Printer.Printers[Printer.PrinterIndex]; ;
      end;
   if caminho.ReadString('NFC-e','visualizaCupom ','') = 'sim'  then
      begin
       dm.ACBrNFe.DANFE.MostraPreview := true;
      end;

   if caminho.ReadString('Caixa','impressoraPadrao  ','') <> ''  then
      begin
       dm.ACBrNFe.DANFE.Impressora := caminho.ReadString('Caixa','impressoraPadrao  ','');
      end;
      dm.ACBrNFe.DANFE.Usuario := frmPrincipal.StatusBar1.Panels[6].Text;

end;

procedure TNfceModel.MovimentacaoFinanceira(Codigo: String; Tipo, CodParcelas, Tipov : String);
var
q1, Ccr : TFDquery;
MvM : TMovimentacaoDeVendasModel;
MvC : TMovimentacaoDeVendasController;
begin
   q1 := TFDquery.Create(nil);
   q1.Connection := dm.Con;

   try
    q1.Close;
    q1.SQL.Clear;
    q1.SQL.add('select * from TB_NFCE where NFC_CODIGO='+QuotedStr(Codigo));
    q1.open;
    if q1.FieldByName('NFC_FORMACREDIARIO').AsFloat > 0 then
       begin
          VerificaClienteContaAReceber(q1.FieldByName('NFCE_CODIGO_CLIENTE').Asinteger,q1.FieldByName('NFC_DEST_XNOME').AsString);
          GravaCrediario (strtoint(Codigo),q1.fieldByName('NFC_IDE_NNF').Asinteger, 'Crediário',Tipo,Tipov,CodParcelas);
       end;
   { if q1.FieldByName('NFC_FORMABOLETO').AsFloat > 0 then
       begin
          VerificaBoletoContaAReceber(q1.FieldByName('NFCE_CODIGO_CLIENTE').Asinteger,q1.FieldByName('NFC_DEST_XNOME').AsString,'BOLETO');
          GravaCrediario (strtoint(Codigo),q1.fieldByName('NFE_IDE_NNF').Asinteger, 'Boleto',Tipo,'F');
       end; }
        if q1.FieldByName('NFC_FORMACARTAOCREDITO').AsFloat > 0 then
       begin
          VerificaBoletoContaAReceber(q1.FieldByName('NFCE_CODIGO_CLIENTE').Asinteger,q1.FieldByName('NFC_DEST_XNOME').AsString,'CARTÃO CRÉDITO');
          GravaCrediario (strtoint(Codigo),q1.fieldByName('NFC_IDE_NNF').Asinteger, 'Cartão Crédito',Tipo,Tipov,CodParcelas);
       end;
    if q1.FieldByName('NFC_FORMACARTAODEBITO').AsFloat > 0 then
       begin
          VerificaBoletoContaAReceber(q1.FieldByName('NFCE_CODIGO_CLIENTE').Asinteger,q1.FieldByName('NFC_DEST_XNOME').AsString,'CARTÃO DÉBITO');
          GravaCartaoDebito (strtoint(Codigo),q1.fieldByName('NFC_IDE_NNF').Asinteger,q1.fieldByName('NFCE_CODIGO_CLIENTE').Asinteger,q1.fieldByName('NFC_FORMACARTAODEBITO').AsFloat,q1.fieldByName('NFC_TOTAL_VNF').AsFloat,  'Cartão Débito',Tipo,Tipov);
       end;
     if q1.FieldByName('NFC_FORMADINHEIRO').AsFloat > 0 then
       begin
        JogaNoCaixa(Codigo,q1.FieldByName('NFC_DEST_XNOME').AsString,inttostr(q1.fieldByName('NFC_IDE_NNF').Asinteger),q1.FieldByName('NFC_FORMADINHEIRO').AsFloat,0,Tipov );
       end;
    MvM := TMovimentacaoDeVendasModel.create;
    MvC := TMovimentacaoDeVendasController.create;
    try
       with MvM do
       begin
         MOV_CODIGO := 0;
         MOV_TIPO_VENDA := 'NFCe';
         MOV_CODIGO_VENDA := q1.FieldByName('nfc_codigo').AsInteger;
         MOV_NUMERO_FISCAL := q1.fieldByName('NFc_IDE_NNF').Asinteger;
         MOV_DATA := now;
         MOV_USUARIO := frmPrincipal.StatusBar1.Panels[6].Text;
         MOV_FORMADINHEIRO := q1.fieldByName('NFC_FORMADINHEIRO').Asinteger;
         MOV_FORMABOLETO := 0;
         MOV_FORMACARDEBITO := q1.fieldByName('NFC_FORMACARTAODEBITO').Asinteger;
         MOV_FORMACARCREDITO := q1.fieldByName('NFC_FORMACARTAOCREDITO').Asinteger;
         MOV_FORMACHEQUEA :=  0;
         MOV_FORMACHEQUEP :=  q1.fieldByName('NFC_FORMACHEQUE').Asinteger;
         MOV_CREDIARIO := q1.fieldByName('NFC_FORMACREDIARIO').Asinteger;
         MOV_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
         MOV_CODIGO_USUARIO := q1.fieldByName('NFC_FORMACREDIARIO').Asinteger;
       end;
       MvC.Inserir(MvM);
    finally
      FreeandNil(MvM);
      FreeandNil(MvC);
    end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TNfceModel.NFCeContigencia;
begin

end;

procedure TNfceModel.NFCeNormal;
begin

end;

function TNfceModel.PingSefaz: boolean;
begin


end;

procedure TNfceModel.Read(ObjNfce: TNfceModel; Codigo1, CodigoU: Integer;
  loginU: String);
begin

end;

procedure TNfceModel.RetiraEstoque(Codigo, Cliente, CodCliente: String;
  NumeroF: Integer);
var
Cod, Prod : TFDquery;
HistM : THistoricoDeProdutoModel;
HistC : THistoricoDeProdutoController;
begin
  Cod := TFDquery.Create(nil);
  Cod.Connection := dm.Con;
  cod.CachedUpdates := true;
  Prod := TFDquery.Create(nil);
  Prod.Connection := dm.Con;



  try
    with Cod do
    begin
      close;
      sql.Clear;
      sql.Add('select * from TB_HISTORICOPRODUTO where HIS_NUMEROVENDA='+QuotedStr(Codigo));
      sql.Add('and HIS_TIPODOC ='+QuotedStr('Saida NFC-e'));
      open;
      first;
      while not Cod.Eof do
      begin
        edit;
        FieldByName('HIS_NUMEROFISCAL').AsInteger := NumeroF;
        FieldByName('HIS_FORCLI').AsString := Cliente;
        post;
        ApplyUpdates;
        CommitUpdates;


        next;
      end;
    end;
  finally
    FreeandNil(Cod);
    FreeandNil(Prod);
  end;
end;

function TNfceModel.SerieNFCe(Codigo, Numero : String) : String;
var
ler: TIniFile;
q1 : TFDquery;
num : Integer;
begin
   if Numero = '0' then
   begin
   ler := TIniFile.Create(ExtractFilePath(Application.exeName) + '\Conf.ini');
    try
      if ler.ReadString('serieNFCe','serie','') = '2'  then
      begin
      dm.global.Refresh;
      num:= DM.global.FieldByName('pri_pdv_ult_NFCE_s2').AsInteger;
      Inc(num, 1);
      DM.global.Edit;
      DM.global.FieldByName('pri_pdv_ult_NFCE_s2').AsInteger:= num;
      DM.global.Post;
      dm.Global.ApplyUpdates;
      dm.Global.CommitUpdates;
      dm.global.Refresh;
       q1 := TFDquery.Create(nil);
       q1.Connection := dm.Con;
       q1.CachedUpdates := true;
       try
       with q1 do
        begin
        close;
        sql.Clear;
        sql.Add('select * from TB_NFCE where nfc_codigo='+QuotedStr(Codigo));
        open;
        edit;
        FieldByName('NFC_IDE_SERIE').AsInteger := 2;
        FieldByName('NFC_IDE_NNF').AsFloat := num;
        post;
        q1.ApplyUpdates;
        q1.CommitUpdates;
        Result := inttostr(num);
        end;
        finally
        FreeandNil(q1);
       end;
      end
      else
      begin
      dm.global.Refresh;
      num:= DM.global.FieldByName('pri_pdv_ult_NFCE_s1').AsInteger;
      Inc(num, 1);
      DM.global.Edit;
      DM.global.FieldByName('pri_pdv_ult_NFCE_s1').AsInteger:= num;
      DM.global.Post;
      dm.Global.ApplyUpdates;
      dm.Global.CommitUpdates ;
      dm.global.Refresh;
       q1 := TFDquery.Create(nil);
       q1.Connection := dm.Con;
       q1.CachedUpdates := true;
       try
       with q1 do
        begin
        close;
        sql.Clear;
        sql.Add('select * from TB_NFCE where nfc_codigo='+QuotedStr(Codigo));
        open;
        edit;
        FieldByName('NFC_IDE_SERIE').AsInteger := 1;
        FieldByName('NFC_IDE_NNF').AsFloat := num;
        post;
        ApplyUpdates;
        CommitUpdates;
        Result := inttostr(num);
        end;
        finally
        FreeandNil(q1);
       end;
      end;
    finally
     FreeandNil(ler);
    end;
   end
   else
   Result := Numero;



end;

procedure TNfceModel.SetNFC_BENEFICIARIO(const Value: String);
begin
  FNFC_BENEFICIARIO := Value;
end;

procedure TNfceModel.SetNFC_CODIGO(const Value: Integer);
begin
  FNFC_CODIGO := Value;
end;

procedure TNfceModel.SetNFC_COD_USUARIO(const Value: Integer);
begin
  FNFC_COD_USUARIO := Value;
end;

procedure TNfceModel.SetNFC_DEST_CNPJ(const Value: String);
begin
  FNFC_DEST_CNPJ := Value;
end;

procedure TNfceModel.SetNFC_DEST_XNOME(const Value: String);
begin
  FNFC_DEST_XNOME := Value;
end;

procedure TNfceModel.SetNFC_FECHADA(const Value: String);
begin
  FNFC_FECHADA := Value;
end;

procedure TNfceModel.SetNFC_FORMACARTAOCREDITO(const Value: Double);
begin
  FNFC_FORMACARTAOCREDITO := Value;
end;

procedure TNfceModel.SetNFC_FORMACARTAODEBITO(const Value: Double);
begin
  FNFC_FORMACARTAODEBITO := Value;
end;

procedure TNfceModel.SetNFC_FORMACHEQUE(const Value: Double);
begin
  FNFC_FORMACHEQUE := Value;
end;

procedure TNfceModel.SetNFC_FORMADINHEIRO(const Value: Double);
begin
  FNFC_FORMADINHEIRO := Value;
end;

procedure TNfceModel.SetNFC_IDE_DHEMI(const Value: TDate);
begin
  FNFC_IDE_DHEMI := Value;
end;

procedure TNfceModel.SetNFC_IDE_ID(const Value: String);
begin
  FNFC_IDE_ID := Value;
end;

procedure TNfceModel.SetNFC_IDE_MOD(const Value: Integer);
begin
  FNFC_IDE_MOD := Value;
end;

procedure TNfceModel.SetNFC_IDE_NATOP(const Value: String);
begin
  FNFC_IDE_NATOP := Value;
end;

procedure TNfceModel.SetNFC_IDE_NNF(const Value: Integer);
begin
  FNFC_IDE_NNF := Value;
end;

procedure TNfceModel.SetNFC_IDE_SERIE(const Value: Integer);
begin
  FNFC_IDE_SERIE := Value;
end;

procedure TNfceModel.SetNFC_IDE_UF(const Value: String);
begin
  FNFC_IDE_UF := Value;
end;

procedure TNfceModel.SetNFC_PORDESCONTO(const Value: Double);
begin
  FNFC_PORDESCONTO := Value;
end;

procedure TNfceModel.SetNFC_RANDOMICO(const Value: String);
begin
  FNFC_RANDOMICO := Value;
end;

procedure TNfceModel.SetNFC_TIPO(const Value: String);
begin
  FNFC_TIPO := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_IPIDEVOL(const Value: Double);
begin
  FNFC_TOTAL_IPIDEVOL := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_TOTAL_VFCP(const Value: Double);
begin
  FNFC_TOTAL_TOTAL_VFCP := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VBC(const Value: Double);
begin
  FNFC_TOTAL_VBC := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VBCST(const Value: Double);
begin
  FNFC_TOTAL_VBCST := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VCONFINS(const Value: Double);
begin
  FNFC_TOTAL_VCONFINS := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VDESC(const Value: Double);
begin
  FNFC_TOTAL_VDESC := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VFCPST(const Value: Double);
begin
  FNFC_TOTAL_VFCPST := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VFCPSTRET(const Value: Double);
begin
  FNFC_TOTAL_VFCPSTRET := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VFRETE(const Value: Double);
begin
  FNFC_TOTAL_VFRETE := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VICMS(const Value: Double);
begin
  FNFC_TOTAL_VICMS := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VICMSDESON(const Value: Double);
begin
  FNFC_TOTAL_VICMSDESON := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VII(const Value: Double);
begin
  FNFC_TOTAL_VII := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VIPI(const Value: Double);
begin
  FNFC_TOTAL_VIPI := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VNF(const Value: Double);
begin
  FNFC_TOTAL_VNF := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VOUTRO(const Value: Double);
begin
  FNFC_TOTAL_VOUTRO := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VPIS(const Value: Double);
begin
  FNFC_TOTAL_VPIS := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VPROD(const Value: Double);
begin
  FNFC_TOTAL_VPROD := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VSEG(const Value: Double);
begin
  FNFC_TOTAL_VSEG := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VST(const Value: Double);
begin
  FNFC_TOTAL_VST := Value;
end;

procedure TNfceModel.SetNFC_TOTAL_VTOTTRIB(const Value: Double);
begin
  FNFC_TOTAL_VTOTTRIB := Value;
end;

procedure TNfceModel.SetNFC_USUARIO(const Value: String);
begin
  FNFC_USUARIO := Value;
end;

procedure TNfceModel.SetNFC_VENDEDOR(const Value: String);
begin
  FNFC_VENDEDOR := Value;
end;

procedure TNfceModel.SetNFC_XMOTIVO(const Value: String);
begin
  FNFC_XMOTIVO := Value;
end;

procedure TNfceModel.TestaStatus;
var
  Mensagem: string;
  CodigoStatus: Integer;
begin

  try


    dm.ACBrNFe.WebServices.StatusServico.Executar;

    CodigoStatus := dm.ACBrNFe.WebServices.StatusServico.cStat;
   case CodigoStatus of
    107: // serviço em operação
      begin
        Mensagem := Trim(
          Format('Código:%d'#13'Mensagem: %s'#13'Tempo médio: %d segundo(s)', [
            dm.ACBrNFe.WebServices.StatusServico.cStat,
            dm.ACBrNFe.WebServices.StatusServico.xMotivo,
            dm.ACBrNFe.WebServices.StatusServico.TMed
          ])
        );
         MessageDlg(Mensagem, mtInformation, [mbOK], 0);
      end;
     108, 109: // serviço paralisado temporariamente (108) ou sem previsão (109)
      begin
        Mensagem := Trim(
          Format('Código:%d'#13'Motivo: %s'#13'%s', [
            dm.ACBrNFe.WebServices.StatusServico.cStat,
            dm.ACBrNFe.WebServices.StatusServico.xMotivo,
            dm.ACBrNFe.WebServices.StatusServico.xObs
          ])
        );
         MessageDlg(Mensagem, mtError, [mbOK], 0);
      end;
  else
    // qualquer outro retorno
    if CodigoStatus > 0 then
    begin
      Mensagem := Trim(
        Format('Webservice indisponível:'#13'Código:%d'#13'Motivo: %s'#13'%s', [
          dm.ACBrNFe.WebServices.StatusServico.cStat,
          dm.ACBrNFe.WebServices.StatusServico.xMotivo,
          dm.ACBrNFe.WebServices.StatusServico.xObs
        ])
      );
    end
    else
    begin
      Mensagem := 'Webservice indisponível e retorno em branco, tente novamente!';
    end;

     MessageDlg(Mensagem, mtInformation, [mbOK], 0);

   end;
    except
     ShowMessage('Não foi possivel estabelecer a comunicação com a Sefaz!');
    end;

end;

procedure TNfceModel.Update(ObjNfce: TNfceModel);
begin

end;

function TNfceModel.ValidaPag(Dinheiro, Boleto, CartaoC, CartaoD, Debito,
  ChequeA, ChequeP, Crediario, Total: Double): Boolean;
begin

end;

procedure TNfceModel.VerificaBoletoContaAReceber(Codigo: Integer; Nome,
  forma: String);
begin

end;

procedure TNfceModel.VerificaClienteContaAReceber(Codigo: Integer;
  Nome: String);
var
CCr : TFDquery;
ccrM : TClientesContaAPagarModel;
ccrC : TClientesContaAPagarController;
begin
         Ccr := TFDquery.Create(nil);
         Ccr.Connection := dm.Con;

         try
           with ccr do
           begin
             Ccr.close;
             Ccr.sql.Clear;
             Ccr.sql.Add('select * from TB_CLIENTESCONTASARECEBER where CCR_CODIGO_CLIENTE='+QuotedStr(inttostr(Codigo)));
             Ccr.open;
             if Ccr.IsEmpty then
             begin
                ccrM := TClientesContaAPagarModel.create;
                ccrC := TClientesContaAPagarController.create;
                try
                 with ccrM do
                 begin
                   CCR_CODIGO := 0;
                   CCR_CODIGO_CLIENTE := Codigo;
                   CCF_NOME_CLIENTE := Nome;
                   CCR_BENEFICIARIO := frmPrincipal.Global.PRI_CPFCNPJ;
                 end;
                 ccrc.Inserir(ccrM);
                finally
                 FreeandNIl(ccrM);
                 FreeandNIl(ccrC);
                end;
             end;
           end;
         finally
           FreeandNil(CCr);
         end;
end;

procedure TNfceModel.VisualisaNFCe(chave : String);
var
Caminho : TiniFile;
caminho2, caminhoxml : String;
begin
 dm.ACBrNFe.NotasFiscais.Clear;
 dm.ACBrNFe.DANFE.MostraPreview := true;
 caminho := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'conf.ini');
  if caminho.ReadString('NFC-e','mapeamentoxml','') = '' then
         begin
           caminho2 := GetCurrentDir + '\nfce\xml';
         end;
        if caminho.ReadString('NFC-e','mapeamentoxml','') <> '' then
         begin
           caminhoxml := caminho.ReadString('NFC-e','mapeamentoxml','');
           caminho2:= caminhoxml;
         end;
  dm.ACBrNFe.NotasFiscais.LoadFromFile(caminho2+'\'+ chave+'-nfe.xml', false);
  dm.ACBrNFe.NotasFiscais.Imprimir;
  dm.ACBrNFe.NotasFiscais.ImprimirPDF;
end;



procedure TNfceModel.VisualizaNFCe2(nNota,Codigo: String);
var
q1 : TFDquery;
i : Integer;
begin

    q1 := TFDquery.Create(nil);
    q1.Connection := dm.Con;

    try
      with q1 do
      begin
        close;
        sql.Clear;
        sql.Add('select * from TB_NFCEITENS where NFC_CODIGO_NFCE='+QuotedStr(Codigo));
        open;
        dm.ACBrNFe.NotasFiscais.Clear;
        dm.ACBrNFe.DANFE.MostraPreview := true;
        GerarNFCe(nNota,Codigo);
        dm.ACBrNFe.NotasFiscais.Items[0].NFe.procNFe.cStat := 100;
        if dm.ACBrNFe.DANFE <> nil then
        begin
            for i := 0 to dm.ACBrNFe.NotasFiscais.Count - 1 do
            begin

                dm.ACBrNFe.NotasFiscais.Items[i].Imprimir;
                if (dm.ACBrNFe.DANFE.ClassName = 'TACBrNFeDANFERaveCB') then
                  Break;
            end;
       end;
      end;
    finally
      FreeandNil(q1);
    end;
end;

end.
