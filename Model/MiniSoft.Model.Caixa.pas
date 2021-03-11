unit MiniSoft.Model.Caixa;


interface
     uses Firedac.Comp.Client, Conexao, System.SysUtils,
  Minisoft.Model.PlanoDeConta,
  MiniSoft.Funcoes, MiniSoft.Controller.PlanoDeConta, uDWConstsData, uRESTDWPoolerDB;
     type
     TCaixaModel = class
       private
    FCAI_CODIGO_MOV_PLANODECONTA: Integer;
    FCAI_SALDO: Double;
    FCAI_USUARIO: String;
    FCAI_SAIDA: Double;
    FCAI_TERMINAL: String;
    FCAI_CODIGO_CONTASARECEBER: Integer;
    FCAI_CODIGO_BANCO: Integer;
    FCAI_CODIGO_PLANODECONTA: Integer;
    FCAI_CODIGO_PREVENDA: Integer;
    FCAI_PLANODECONTA: String;
    FCAI_PORTADOR: String;
    FCAI_RECEITA: String;
    FCAI_BENEFICIARIO: String;
    FCAI_NVENDA: Integer;
    FCAI_ENTRADA: Double;
    FCAI_CODIGO_CONTASAPAGAR: Integer;
    FCAI_UUID: String;
    FCAI_CODIGO: Integer;
    FCAI_CODIGO_VENDEDOR: Integer;
    FCAI_VENDEDOR: String;
    FCAI_FORMA: String;
    FCAI_TIPOMOVIMENTACAO: String;
    FCAI_DATA: TDate;
    FCAI_HORA: TTime;
    FCAI_CODIGO_ABREFECHACAIXA: Integer;
    FCAI_STATUS_ABREFECHACAIXA: String;
    FCAI_TIPO: String;
    FCAI_CODIGO_USUARIO: Integer;
    FCAI_NOME_USUARIO: String;
    procedure SetCAI_BENEFICIARIO(const Value: String);
    procedure SetCAI_CODIGO(const Value: Integer);
    procedure SetCAI_CODIGO_BANCO(const Value: Integer);
    procedure SetCAI_CODIGO_CONTASAPAGAR(const Value: Integer);
    procedure SetCAI_CODIGO_CONTASARECEBER(const Value: Integer);
    procedure SetCAI_CODIGO_MOV_PLANODECONTA(const Value: Integer);
    procedure SetCAI_CODIGO_PLANODECONTA(const Value: Integer);
    procedure SetCAI_CODIGO_PREVENDA(const Value: Integer);
    procedure SetCAI_CODIGO_VENDEDOR(const Value: Integer);
    procedure SetCAI_ENTRADA(const Value: Double);
    procedure SetCAI_FORMA(const Value: String);
    procedure SetCAI_NVENDA(const Value: Integer);
    procedure SetCAI_PLANODECONTA(const Value: String);
    procedure SetCAI_PORTADOR(const Value: String);
    procedure SetCAI_RECEITA(const Value: String);
    procedure SetCAI_SAIDA(const Value: Double);
    procedure SetCAI_SALDO(const Value: Double);
    procedure SetCAI_TERMINAL(const Value: String);
    procedure SetCAI_TIPOMOVIMENTACAO(const Value: String);
    procedure SetCAI_USUARIO(const Value: String);
    procedure SetCAI_UUID(const Value: String);
    procedure SetCAI_VENDEDOR(const Value: String);
    procedure SetCAI_DATA(const Value: TDate);
    procedure SetCAI_HORA(const Value: TTime);
    procedure SetCAI_CODIGO_ABREFECHACAIXA(const Value: Integer);
    procedure SetCAI_STATUS_ABREFECHACAIXA(const Value: String);
    procedure SetCAI_TIPO(const Value: String);
    procedure SetCAI_CODIGO_USUARIO(const Value: Integer);
    procedure SetCAI_NOME_USUARIO(const Value: String);
       public
        property  CAI_CODIGO                   : Integer read FCAI_CODIGO write SetCAI_CODIGO;
        property  CAI_UUID                     : String read FCAI_UUID write SetCAI_UUID;
        property  CAI_ENTRADA                   : Double read FCAI_ENTRADA write SetCAI_ENTRADA;
        property  CAI_SAIDA                     : Double read FCAI_SAIDA write SetCAI_SAIDA;
        property  CAI_SALDO                     : Double read FCAI_SALDO write SetCAI_SALDO;
        property  CAI_USUARIO                  : String read FCAI_USUARIO write SetCAI_USUARIO;
        property  CAI_VENDEDOR                 : String read FCAI_VENDEDOR write SetCAI_VENDEDOR;
        property  CAI_CODIGO_VENDEDOR           : Integer read FCAI_CODIGO_VENDEDOR write SetCAI_CODIGO_VENDEDOR;
        property  CAI_FORMA                    : String read FCAI_FORMA write SetCAI_FORMA;
        property  CAI_BENEFICIARIO             : String read FCAI_BENEFICIARIO write SetCAI_BENEFICIARIO;
        property  CAI_NVENDA                    : Integer read FCAI_NVENDA write SetCAI_NVENDA;
        property  CAI_TIPOMOVIMENTACAO         : String read FCAI_TIPOMOVIMENTACAO write SetCAI_TIPOMOVIMENTACAO;
        property  CAI_TERMINAL                 : String read FCAI_TERMINAL write SetCAI_TERMINAL;
        property  CAI_PLANODECONTA             : String read FCAI_PLANODECONTA write SetCAI_PLANODECONTA;
        property  CAI_CODIGO_PLANODECONTA       : Integer read FCAI_CODIGO_PLANODECONTA write SetCAI_CODIGO_PLANODECONTA;
        property  CAI_CODIGO_MOV_PLANODECONTA   : Integer read FCAI_CODIGO_MOV_PLANODECONTA write SetCAI_CODIGO_MOV_PLANODECONTA;
        property  CAI_CODIGO_CONTASAPAGAR       : Integer read FCAI_CODIGO_CONTASAPAGAR write SetCAI_CODIGO_CONTASAPAGAR;
        property  CAI_CODIGO_CONTASARECEBER     : Integer read FCAI_CODIGO_CONTASARECEBER write SetCAI_CODIGO_CONTASARECEBER;
        property  CAI_CODIGO_PREVENDA           : Integer read FCAI_CODIGO_PREVENDA write SetCAI_CODIGO_PREVENDA;
        property  CAI_CODIGO_BANCO              : Integer read FCAI_CODIGO_BANCO write SetCAI_CODIGO_BANCO;
        property  CAI_RECEITA                   : String read FCAI_RECEITA write SetCAI_RECEITA;
        property  CAI_PORTADOR                   : String read FCAI_PORTADOR write SetCAI_PORTADOR;
        property  CAI_DATA : TDate read FCAI_DATA write SetCAI_DATA;
        property  CAI_HORA : TTime read FCAI_HORA write SetCAI_HORA;
        property  CAI_CODIGO_ABREFECHACAIXA : Integer read FCAI_CODIGO_ABREFECHACAIXA write SetCAI_CODIGO_ABREFECHACAIXA;
        property  CAI_STATUS_ABREFECHACAIXA : String read FCAI_STATUS_ABREFECHACAIXA write SetCAI_STATUS_ABREFECHACAIXA;
        property CAI_TIPO : String read FCAI_TIPO write SetCAI_TIPO;
        property CAI_CODIGO_USUARIO : Integer read FCAI_CODIGO_USUARIO write SetCAI_CODIGO_USUARIO;
        property CAI_NOME_USUARIO : String read FCAI_NOME_USUARIO write SetCAI_NOME_USUARIO;
       procedure Insert(Objcaixa : TCaixaModel);
       Procedure Update(Objcaixa : TCaixaModel);
       procedure Delete(Objcaixa : TCaixaModel);
       procedure Read  (Objcaixa : TCaixaModel ; Codigo : Integer);
       procedure CalculaSaldo(Valor :Double; Datax : TDate; Tipo : String);
       procedure CalculaSaldoR(Valor :Double; Datax : TDate);
       procedure ImprimeRelatorioCaixa(CodUsuario : Integer; Tipo : String );
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TCaixaModel }

uses MiniSoft.View.Principal;

procedure TCaixaModel.CalculaSaldo(Valor :Double; Datax : TDate; Tipo : String);
var
q1 : TFDQuery;
entrada, saida, total, saldoAnterior : Double;
i : Integer;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;
   q1.CachedUpdates := true;
   try
    with q1 do
    begin
     if frmPrincipal.Global.PRI_CAIXA_CONF2 = '2' then
     begin
      close;
      sql.Clear;
      sql.Add('select * from TB_CAIXA where CAI_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
      sql.Add('and cai_data='+QuotedStr(FormatDateTime('yyyy-mm-dd',Datax)));
      sql.Add('and CAI_STATUS_ABREFECHACAIXA='+QuotedStr('Aberto'));
      sql.Add('and CAI_TIPO='+QuotedStr(Tipo));
      sql.Add('and CAI_CODIGO_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
      sql.Add('order by cai_codigo');
      open;
      entrada := 0;
      saida := 0;
      DisableControls;
      first;
      while not Eof do
      begin
      entrada := (entrada + FieldByName('CAI_ENTRADA').AsFloat);
      saida := (saida + FieldByName('CAI_SAIDA').AsFloat);
      Next;
      end;
     end
     else
     begin
      close;
      sql.Clear;
      sql.Add('select * from TB_CAIXA where CAI_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
      sql.Add('and CAI_TIPO='+QuotedStr(Tipo));
      sql.Add('order by cai_codigo');
      open;
      last;
      entrada := 0;
      saida := 0;
      DisableControls;
      first;

      entrada := (entrada + FieldByName('CAI_ENTRADA').AsFloat);
      saida := (saida + FieldByName('CAI_SAIDA').AsFloat);


     end;
      EnableControls;
      total := entrada - Saida;

      first;

       i := 0;
       while  not eof do
       begin
         i := i + 1;
         if i = 1 then
         begin
         edit;
         q1.FieldByName('CAI_SALDO').AsFloat := FieldByName('CAI_ENTRADA').AsFloat - FieldByName('CAI_SAIDA').AsFloat; //+ Rec.FieldByName('BAN_ENTRADA').asfloat - Rec.FieldByName('BAN_SAIDA').asfloat;
         post;
         saldoAnterior := q1.FieldByName('CAI_SALDO').AsFloat;
         end
         else
         begin
         edit;
         q1.FieldByName('CAI_SALDO').AsFloat := saldoAnterior - q1.FieldByName('CAI_SAIDA').asfloat + q1.FieldByName('CAI_ENTRADA').asfloat ;
         saldoAnterior := q1.FieldByName('CAI_SALDO').AsFloat;
         post;
         end;
         ApplyUpdates;
         CommitUpdates;
         //SaldoConta := Rec.FieldByName('BAN_SALDO').AsFloat + Rec.FieldByName('BAN_ENTRADA').asfloat - Rec.FieldByName('BAN_SAIDA').asfloat;
         next;
       end;
    end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TCaixaModel.CalculaSaldoR(Valor: Double; Datax: TDate);
var
q1 : TFDQuery;
entrada, saida, total, saldoAnterior : Double;
i : Integer;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;
   q1.CachedUpdates := true;
   try
    with q1 do
    begin
     if frmPrincipal.Global.PRI_CAIXA_CONF2 = '2' then
     begin
      close;
      sql.Clear;
      sql.Add('select * from TB_CAIXA where CAI_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
      sql.Add('and cai_data='+QuotedStr(FormatDateTime('yyyy-mm-dd',Datax)));
      sql.Add('and CAI_STATUS_ABREFECHACAIXA='+QuotedStr('Aberto'));
      sql.Add('and CAI_TIPO='+QuotedStr('R'));
      sql.Add('and CAI_CODIGO_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
      sql.Add('order by cai_codigo');
      open;
      entrada := 0;
      saida := 0;
      DisableControls;
      first;
      while not Eof do
      begin
      entrada := (entrada + FieldByName('CAI_ENTRADA').AsFloat);
      saida := (saida + FieldByName('CAI_SAIDA').AsFloat);
      Next;
      end;
     end
     else
     begin
      close;
      sql.Clear;
      sql.Add('select * from TB_CAIXA where CAI_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
      sql.Add('and CAI_TIPO='+QuotedStr('R'));
      sql.Add('order by cai_codigo');
      open;
      last;
      entrada := 0;
      saida := 0;
      DisableControls;
      first;

      entrada := (entrada + FieldByName('CAI_ENTRADA').AsFloat);
      saida := (saida + FieldByName('CAI_SAIDA').AsFloat);


     end;
      EnableControls;
      total := entrada - Saida;

      first;

       i := 0;
       while  not eof do
       begin
         i := i + 1;
         if i = 1 then
         begin
         edit;
         q1.FieldByName('CAI_SALDO').AsFloat := FieldByName('CAI_ENTRADA').AsFloat - FieldByName('CAI_SAIDA').AsFloat; //+ Rec.FieldByName('BAN_ENTRADA').asfloat - Rec.FieldByName('BAN_SAIDA').asfloat;
         post;
         saldoAnterior := q1.FieldByName('CAI_SALDO').AsFloat;
         end
         else
         begin
         edit;
         q1.FieldByName('CAI_SALDO').AsFloat := saldoAnterior - q1.FieldByName('CAI_SAIDA').asfloat + q1.FieldByName('CAI_ENTRADA').asfloat ;
         saldoAnterior := q1.FieldByName('CAI_SALDO').AsFloat;
         post;
         end;
         //SaldoConta := Rec.FieldByName('BAN_SALDO').AsFloat + Rec.FieldByName('BAN_ENTRADA').asfloat - Rec.FieldByName('BAN_SAIDA').asfloat;
         ApplyUpdates;
         CommitUpdates;
         next;
       end;
    end;
   finally
     FreeandNil(q1);
   end;
end;

constructor TCaixaModel.create;
begin

end;

procedure TCaixaModel.Delete(Objcaixa: TCaixaModel);
begin

end;

destructor TCaixaModel.destroy;
begin

  inherited;
end;

procedure TCaixaModel.ImprimeRelatorioCaixa(CodUsuario: Integer; Tipo: String);
begin

end;

procedure TCaixaModel.Insert(Objcaixa: TCaixaModel);
var
q1 : TFDQuery;
pdcModel : TPlanoDeContaModel;
pdcController : TPlanoDeContaController;
funcao : TFuncoesGerais;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;

  try
    with q1, Objcaixa do
    begin
       Close;
       Sql.Text := 'insert into tb_caixa'
       +'(CAI_CODIGO'
       +',CAI_UUID'
       +',CAI_ENTRADA'
       +',CAI_SAIDA'
       +',CAI_SALDO'
       +',CAI_DATA'
       +',CAI_HORA'
       +',CAI_USUARIO'
       +',CAI_VENDEDOR'
       +',CAI_CODIGO_VENDEDOR'
       +',CAI_FORMA'
       +',CAI_BENEFICIARIO'
       +',CAI_NVENDA'
       +',CAI_TIPOMOVIMENTACAO'
       +',CAI_TERMINAL'
       +',CAI_PLANODECONTA'
       +',CAI_CODIGO_PLANODECONTA'
       +',CAI_CODIGO_MOV_PLANODECONTA'
       +',CAI_CODIGO_CONTASAPAGAR'
       +',CAI_CODIGO_CONTASARECEBER'
       +',CAI_CODIGO_PREVENDA'
       +',CAI_CODIGO_BANCO'
       +',CAI_RECEITA'
       +',CAI_CODIGO_ABREFECHACAIXA'
       +',CAI_STATUS_ABREFECHACAIXA'
       +',CAI_TIPO'
       +',CAI_CODIGO_USUARIO'
       +',CAI_NOME_USUARIO)'
       +'values(:CAI_CODIGO'
       +',:CAI_UUID'
       +',:CAI_ENTRADA'
       +',:CAI_SAIDA'
       +',:CAI_SALDO'
       +',:CAI_DATA'
       +',:CAI_HORA'
       +',:CAI_USUARIO'
       +',:CAI_VENDEDOR'
       +',:CAI_CODIGO_VENDEDOR'
       +',:CAI_FORMA'
       +',:CAI_BENEFICIARIO'
       +',:CAI_NVENDA'
       +',:CAI_TIPOMOVIMENTACAO'
       +',:CAI_TERMINAL'
       +',:CAI_PLANODECONTA'
       +',:CAI_CODIGO_PLANODECONTA'
       +',:CAI_CODIGO_MOV_PLANODECONTA'
       +',:CAI_CODIGO_CONTASAPAGAR'
       +',:CAI_CODIGO_CONTASARECEBER'
       +',:CAI_CODIGO_PREVENDA'
       +',:CAI_CODIGO_BANCO'
       +',:CAI_RECEITA'
       +',:CAI_CODIGO_ABREFECHACAIXA'
       +',:CAI_STATUS_ABREFECHACAIXA'
       +',:CAI_TIPO'
       +',:CAI_CODIGO_USUARIO'
       +',:CAI_NOME_USUARIO)';
       ParamByName('CAI_CODIGO').AsInteger:=CAI_CODIGO;
       ParamByName('CAI_UUID').AsString:=CAI_UUID;
       ParamByName('CAI_ENTRADA').AsFloat:=CAI_ENTRADA;
       ParamByName('CAI_SAIDA').AsFloat:=CAI_SAIDA;
       ParamByName('CAI_SALDO').AsFloat:=CAI_SALDO;
       ParamByName('CAI_DATA').AsDate:=CAI_DATA;
       ParamByName('CAI_HORA').AsTime:=CAI_HORA;
       ParamByName('CAI_USUARIO').AsString:=CAI_USUARIO;
       ParamByName('CAI_VENDEDOR').AsString:=CAI_VENDEDOR;
       ParamByName('CAI_CODIGO_VENDEDOR').AsInteger:=CAI_CODIGO_VENDEDOR;
       ParamByName('CAI_FORMA').AsString:=CAI_FORMA;
       ParamByName('CAI_BENEFICIARIO').AsString:=CAI_BENEFICIARIO;
       ParamByName('CAI_NVENDA').AsInteger:=CAI_NVENDA;
       ParamByName('CAI_TIPOMOVIMENTACAO').AsString:=CAI_TIPOMOVIMENTACAO;
       ParamByName('CAI_TERMINAL').AsString:=CAI_TERMINAL;
       ParamByName('CAI_PLANODECONTA').AsString:=CAI_PLANODECONTA;
       ParamByName('CAI_CODIGO_PLANODECONTA').AsInteger:=CAI_CODIGO_PLANODECONTA;
       ParamByName('CAI_CODIGO_MOV_PLANODECONTA').AsInteger:=CAI_CODIGO_MOV_PLANODECONTA;
       ParamByName('CAI_CODIGO_CONTASAPAGAR').AsInteger:=CAI_CODIGO_CONTASAPAGAR;
       ParamByName('CAI_CODIGO_CONTASARECEBER').AsInteger:=CAI_CODIGO_CONTASARECEBER;
       ParamByName('CAI_CODIGO_PREVENDA').AsInteger:=CAI_CODIGO_PREVENDA;
       ParamByName('CAI_CODIGO_BANCO').AsInteger:=CAI_CODIGO_BANCO;
       ParamByName('CAI_RECEITA').AsString:=CAI_RECEITA;
       ParamByName('CAI_CODIGO_ABREFECHACAIXA').AsInteger:=CAI_CODIGO_ABREFECHACAIXA;
       ParamByName('CAI_STATUS_ABREFECHACAIXA').AsString:=CAI_STATUS_ABREFECHACAIXA;
       ParamByName('CAI_TIPO').AsString:=CAI_TIPO;
       ParamByName('CAI_CODIGO_USUARIO').AsInteger:=CAI_CODIGO_USUARIO;
       ParamByName('CAI_NOME_USUARIO').AsString:=CAI_NOME_USUARIO;
       ExecSQL;
    end;




  finally
    Freeandnil(q1);
  end;

end;

procedure TCaixaModel.Read(Objcaixa: TCaixaModel; Codigo: Integer);
var
q1 : TFDQuery;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_CAIXA where cai_codigo=:cai_codigo');
       ParamByName('cai_codigo').AsInteger := Codigo;
       open;
       CAI_CODIGO := FieldByName('CAI_CODIGO').AsInteger;
       CAI_UUID := FieldByName('CAI_UUID').AsString;
       CAI_ENTRADA := FieldByName('CAI_ENTRADA').AsFloat;
       CAI_SAIDA := FieldByName('CAI_SAIDA').AsFloat;
       CAI_SALDO := FieldByName('CAI_SALDO').AsFloat;
       CAI_DATA := FieldByName('CAI_DATA').AsDateTime;
       CAI_HORA := FieldByName('CAI_HORA').AsDateTime;
       CAI_USUARIO := FieldByName('CAI_USUARIO').AsString;
       CAI_VENDEDOR := FieldByName('CAI_VENDEDOR').AsString;
       CAI_CODIGO_VENDEDOR := FieldByName('CAI_CODIGO_VENDEDOR').AsInteger;
       CAI_FORMA := FieldByName('CAI_FORMA').AsString;
       CAI_BENEFICIARIO := FieldByName('CAI_BENEFICIARIO').AsString;
       CAI_NVENDA := FieldByName('CAI_NVENDA').AsInteger;
       CAI_TIPOMOVIMENTACAO := FieldByName('CAI_TIPOMOVIMENTACAO').AsString;
       CAI_TERMINAL := FieldByName('CAI_TERMINAL').AsString;
       CAI_PLANODECONTA := FieldByName('CAI_PLANODECONTA').AsString;
       CAI_CODIGO_PLANODECONTA := FieldByName('CAI_CODIGO_PLANODECONTA').AsInteger;
       CAI_CODIGO_MOV_PLANODECONTA := FieldByName('CAI_CODIGO_MOV_PLANODECONTA').AsInteger;
       CAI_CODIGO_CONTASAPAGAR := FieldByName('CAI_CODIGO_CONTASAPAGAR').AsInteger;
       CAI_CODIGO_CONTASARECEBER := FieldByName('CAI_CODIGO_CONTASARECEBER').AsInteger;
       CAI_CODIGO_PREVENDA := FieldByName('CAI_CODIGO_PREVENDA').AsInteger;
       CAI_CODIGO_BANCO := FieldByName('CAI_CODIGO_BANCO').AsInteger;
       CAI_RECEITA := FieldByName('CAI_RECEITA').AsString;
       CAI_CODIGO_ABREFECHACAIXA := FieldByName('CAI_CODIGO_ABREFECHACAIXA').AsInteger;
       CAI_STATUS_ABREFECHACAIXA := FieldByName('CAI_STATUS_ABREFECHACAIXA').AsString;
       CAI_CODIGO_USUARIO := FieldByName('CAI_CODIGO_USUARIO').AsInteger;
       CAI_NOME_USUARIO := FieldByName('CAI_NOME_USUARIO').AsString;
     end;
   finally
     FreeandnIl(q1);
   end;
end;


procedure TCaixaModel.SetCAI_BENEFICIARIO(const Value: String);
begin
  FCAI_BENEFICIARIO := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO(const Value: Integer);
begin
  FCAI_CODIGO := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_ABREFECHACAIXA(const Value: Integer);
begin
  FCAI_CODIGO_ABREFECHACAIXA := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_BANCO(const Value: Integer);
begin
  FCAI_CODIGO_BANCO := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_CONTASAPAGAR(const Value: Integer);
begin
  FCAI_CODIGO_CONTASAPAGAR := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_CONTASARECEBER(const Value: Integer);
begin
  FCAI_CODIGO_CONTASARECEBER := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_MOV_PLANODECONTA(const Value: Integer);
begin
  FCAI_CODIGO_MOV_PLANODECONTA := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_PLANODECONTA(const Value: Integer);
begin
  FCAI_CODIGO_PLANODECONTA := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_PREVENDA(const Value: Integer);
begin
  FCAI_CODIGO_PREVENDA := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_USUARIO(const Value: Integer);
begin
  FCAI_CODIGO_USUARIO := Value;
end;

procedure TCaixaModel.SetCAI_CODIGO_VENDEDOR(const Value: Integer);
begin
  FCAI_CODIGO_VENDEDOR := Value;
end;


procedure TCaixaModel.SetCAI_DATA(const Value: TDate);
begin
  FCAI_DATA := Value;
end;

procedure TCaixaModel.SetCAI_ENTRADA(const Value: Double);
begin
  FCAI_ENTRADA := Value;
end;

procedure TCaixaModel.SetCAI_FORMA(const Value: String);
begin
  FCAI_FORMA := Value;
end;



procedure TCaixaModel.SetCAI_HORA(const Value: TTime);
begin
  FCAI_HORA := Value;
end;

procedure TCaixaModel.SetCAI_NOME_USUARIO(const Value: String);
begin
  FCAI_NOME_USUARIO := Value;
end;

procedure TCaixaModel.SetCAI_NVENDA(const Value: Integer);
begin
  FCAI_NVENDA := Value;
end;

procedure TCaixaModel.SetCAI_PLANODECONTA(const Value: String);
begin
  FCAI_PLANODECONTA := Value;
end;

procedure TCaixaModel.SetCAI_PORTADOR(const Value: String);
begin
  FCAI_PORTADOR := Value;
end;

procedure TCaixaModel.SetCAI_RECEITA(const Value: String);
begin
  FCAI_RECEITA := Value;
end;

procedure TCaixaModel.SetCAI_SAIDA(const Value: Double);
begin
  FCAI_SAIDA := Value;
end;

procedure TCaixaModel.SetCAI_SALDO(const Value: Double);
begin
  FCAI_SALDO := Value;
end;

procedure TCaixaModel.SetCAI_STATUS_ABREFECHACAIXA(const Value: String);
begin
  FCAI_STATUS_ABREFECHACAIXA := Value;
end;

procedure TCaixaModel.SetCAI_TERMINAL(const Value: String);
begin
  FCAI_TERMINAL := Value;
end;

procedure TCaixaModel.SetCAI_TIPO(const Value: String);
begin
  FCAI_TIPO := Value;
end;

procedure TCaixaModel.SetCAI_TIPOMOVIMENTACAO(const Value: String);
begin
  FCAI_TIPOMOVIMENTACAO := Value;
end;

procedure TCaixaModel.SetCAI_USUARIO(const Value: String);
begin
  FCAI_USUARIO := Value;
end;

procedure TCaixaModel.SetCAI_UUID(const Value: String);
begin
  FCAI_UUID := Value;
end;

procedure TCaixaModel.SetCAI_VENDEDOR(const Value: String);
begin
  FCAI_VENDEDOR := Value;
end;

procedure TCaixaModel.Update(Objcaixa: TCaixaModel);
var
q1 : TFDQuery;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('update TB_CAIXA set');
       Sql.Add('CAI_CODIGO=:CAI_CODIGO');
       Sql.Add(',CAI_UUID=:CAI_UUID');
       Sql.Add(',CAI_ENTRADA=:CAI_ENTRADA');
       Sql.Add(',CAI_SAIDA=:CAI_SAIDA');
       Sql.Add(',CAI_SALDO=:CAI_SALDO');
       Sql.Add(',CAI_DATA=:CAI_DATA');
       Sql.Add(',CAI_HORA=:CAI_HORA');
       Sql.Add(',CAI_USUARIO=:CAI_USUARIO');
       Sql.Add(',CAI_VENDEDOR=:CAI_VENDEDOR');
       Sql.Add(',CAI_CODIGO_VENDEDOR=:CAI_CODIGO_VENDEDOR');
       Sql.Add(',CAI_FORMA=:CAI_FORMA');
       Sql.Add(',CAI_BENEFICIARIO=:CAI_BENEFICIARIO');
       Sql.Add(',CAI_NVENDA=:CAI_NVENDA');
       Sql.Add(',CAI_TIPOMOVIMENTACAO=:CAI_TIPOMOVIMENTACAO');
       Sql.Add(',CAI_TERMINAL=:CAI_TERMINAL');
       Sql.Add(',CAI_PLANODECONTA=:CAI_PLANODECONTA');
       Sql.Add(',CAI_CODIGO_PLANODECONTA=:CAI_CODIGO_PLANODECONTA');
       Sql.Add(',CAI_CODIGO_MOV_PLANODECONTA=:CAI_CODIGO_MOV_PLANODECONTA');
       Sql.Add(',CAI_CODIGO_CONTASAPAGAR=:CAI_CODIGO_CONTASAPAGAR');
       Sql.Add(',CAI_CODIGO_CONTASARECEBER=:CAI_CODIGO_CONTASARECEBER');
       Sql.Add(',CAI_CODIGO_PREVENDA=:CAI_CODIGO_PREVENDA');
       Sql.Add(',CAI_CODIGO_BANCO=:CAI_CODIGO_BANCO');
       Sql.Add(',CAI_RECEITA=:CAI_RECEITA');
       Sql.Add(',CAI_CODIGO_ABREFECHACAIXA=:CAI_CODIGO_ABREFECHACAIXA');
       Sql.Add(',CAI_STATUS_ABREFECHACAIXA=:CAI_STATUS_ABREFECHACAIXA');
       Sql.Add(',CAI_CODIGO_USUARIO=:CAI_CODIGO_USUARIO');
       Sql.Add(',CAI_NOME_USUARIO=:CAI_NOME_USUARIO');
       Sql.Add('where CAI_CODIGO=:CAI_CODIGO');
       ParamByName('CAI_CODIGO').AsInteger:=CAI_CODIGO;
       ParamByName('CAI_UUID').AsString:=CAI_UUID;
       ParamByName('CAI_ENTRADA').AsFloat:=CAI_ENTRADA;
       ParamByName('CAI_SAIDA').AsFloat:=CAI_SAIDA;
       ParamByName('CAI_SALDO').AsFloat:=CAI_SALDO;
       ParamByName('CAI_DATA').AsDate:=CAI_DATA;
       ParamByName('CAI_HORA').AsTime:=CAI_HORA;
       ParamByName('CAI_USUARIO').AsString:=CAI_USUARIO;
       ParamByName('CAI_VENDEDOR').AsString:=CAI_VENDEDOR;
       ParamByName('CAI_CODIGO_VENDEDOR').AsInteger:=CAI_CODIGO_VENDEDOR;
       ParamByName('CAI_FORMA').AsString:=CAI_FORMA;
       ParamByName('CAI_BENEFICIARIO').AsString:=CAI_BENEFICIARIO;
       ParamByName('CAI_NVENDA').AsInteger:=CAI_NVENDA;
       ParamByName('CAI_TIPOMOVIMENTACAO').AsString:=CAI_TIPOMOVIMENTACAO;
       ParamByName('CAI_TERMINAL').AsString:=CAI_TERMINAL;
       ParamByName('CAI_PLANODECONTA').AsString:=CAI_PLANODECONTA;
       ParamByName('CAI_CODIGO_PLANODECONTA').AsInteger:=CAI_CODIGO_PLANODECONTA;
       ParamByName('CAI_CODIGO_MOV_PLANODECONTA').AsInteger:=CAI_CODIGO_MOV_PLANODECONTA;
       ParamByName('CAI_CODIGO_CONTASAPAGAR').AsInteger:=CAI_CODIGO_CONTASAPAGAR;
       ParamByName('CAI_CODIGO_CONTASARECEBER').AsInteger:=CAI_CODIGO_CONTASARECEBER;
       ParamByName('CAI_CODIGO_PREVENDA').AsInteger:=CAI_CODIGO_PREVENDA;
       ParamByName('CAI_CODIGO_BANCO').AsInteger:=CAI_CODIGO_BANCO;
       ParamByName('CAI_RECEITA').AsString:=CAI_RECEITA;
       ParamByName('CAI_CODIGO_ABREFECHACAIXA').AsInteger:=CAI_CODIGO_ABREFECHACAIXA;
       ParamByName('CAI_STATUS_ABREFECHACAIXA').AsString:=CAI_STATUS_ABREFECHACAIXA;
       ParamByName('CAI_CODIGO_USUARIO').Asinteger:=CAI_CODIGO_USUARIO;
       ParamByName('CAI_NOME_USUARIO').AsString:=CAI_NOME_USUARIO;
       ExecSQL;
     end;
   finally
     FreeandNil(q1);
   end;
end;

end.
