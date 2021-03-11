unit MiniSoft.Model.ABREFECHACAIXA;


interface
       uses  IniFiles, Firedac.Comp.Client, Conexao, System.SysUtils, Vcl.Dialogs
       , uDWConstsData, uRESTDWPoolerDB;
       type
       TAbreFechaCaixa = class
         private
    FABR_BENEFICIARIO: String;
    FABR_HORAFECHAMENTO: TTime;
    FABR_CODIGO: Integer;
    FABR_STATUS: String;
    FABR_OPERADOR: String;
    FABR_VALOR_SAIDA: Double;
    FABR_SALDO: Double;
    FABR_CODIGO_USUARIO: Integer;
    FABR_USUARIO: String;
    FABR_TERMINAL: String;
    FABR_HORAS: TTime;
    FABR_DATA: TDate;
    FABR_VALOR_ENTRADA: Double;
    FABR_VALORINFORMADO: Double;
    FABR_DATAFECHAMENTO: TDate;
    FABR_TIPO: String;
    procedure SetABR_BENEFICIARIO(const Value: String);
    procedure SetABR_CODIGO(const Value: Integer);
    procedure SetABR_CODIGO_USUARIO(const Value: Integer);
    procedure SetABR_DATA(const Value: TDate);
    procedure SetABR_HORAFECHAMENTO(const Value: TTime);
    procedure SetABR_HORAS(const Value: TTime);
    procedure SetABR_OPERADOR(const Value: String);
    procedure SetABR_SALDO(const Value: Double);
    procedure SetABR_STATUS(const Value: String);
    procedure SetABR_TERMINAL(const Value: String);
    procedure SetABR_USUARIO(const Value: String);
    procedure SetABR_VALOR_ENTRADA(const Value: Double);
    procedure SetABR_VALOR_SAIDA(const Value: Double);
    procedure SetABR_DATAFECHAMENTO(const Value: TDate);
    procedure SetABR_VALORINFORMADO(const Value: Double);
    procedure SetABR_TIPO(const Value: String);

         public
         property ABR_CODIGO          : Integer read FABR_CODIGO write SetABR_CODIGO;
         property ABR_VALOR_ENTRADA   : Double read FABR_VALOR_ENTRADA write SetABR_VALOR_ENTRADA;
         property ABR_VALOR_SAIDA     : Double read FABR_VALOR_SAIDA write SetABR_VALOR_SAIDA;
         property ABR_SALDO           : Double read FABR_SALDO write SetABR_SALDO;
         property ABR_TERMINAL       : String read FABR_TERMINAL write SetABR_TERMINAL;
         property ABR_USUARIO        : String read FABR_USUARIO write SetABR_USUARIO;
         property ABR_CODIGO_USUARIO  : Integer read FABR_CODIGO_USUARIO write SetABR_CODIGO_USUARIO;
         property ABR_OPERADOR        : String read FABR_OPERADOR write SetABR_OPERADOR;
         property ABR_STATUS          : String read FABR_STATUS write SetABR_STATUS;
         property ABR_DATA            : TDate read FABR_DATA write SetABR_DATA;
         property ABR_HORAS           : TTime read FABR_HORAS write SetABR_HORAS;
         property ABR_BENEFICIARIO     : String read FABR_BENEFICIARIO write SetABR_BENEFICIARIO;
         property ABR_HORAFECHAMENTO  : TTime read FABR_HORAFECHAMENTO write SetABR_HORAFECHAMENTO;
         property ABR_DATAFECHAMENTO : TDate read FABR_DATAFECHAMENTO write SetABR_DATAFECHAMENTO;
         property ABR_VALORINFORMADO : Double read FABR_VALORINFORMADO write SetABR_VALORINFORMADO;
         property ABR_TIPO : String read FABR_TIPO write SetABR_TIPO;
         procedure insert(ObjAbreFechaCaixa : TAbreFechaCaixa);
         procedure Update(ObjAbreFechaCaixa : TAbreFechaCaixa);
         procedure Delete(ObjAbreFechaCaixa : TAbreFechaCaixa);
         procedure Read  (ObjAbreFechaCaixa  : TAbreFechaCaixa ; Codigo : Integer);
         procedure AbreCaixa(Tipo : String);
         function VerificaCaixaAbertoModel(Tipo : String) : Integer ;
         function VerificaCaixaDiaAbertoModel(Tipo : String)  : Integer;
         constructor create;
         destructor destroy; override;
       end;
implementation
       uses MiniSoft.View.Principal, //MiniSoft.View.FechaCaixa,
  MiniSoft.View.AberturaDeCaixa, MiniSoft.View.FechaCaixa;
{ TAbreFechaCaixa }

procedure TAbreFechaCaixa.AbreCaixa(Tipo: String);
var
Codigo : Integer;
begin
  Codigo := VerificaCaixaAbertoModel(Tipo);
  try
   if Codigo <> 0 then
   begin
      try
         ShowMessage('Foi identificado um caixa aberto para este Usuário.'+#13+'É preciso fecha-lo para prosseguir!');
         if frmAbreFechaCaixa = nil then
         frmAbreFechaCaixa := TfrmAbreFechaCaixa.create(nil);
         frmAbreFechaCaixa.codigoid.caption := formatfloat('000000', Codigo);
         frmAbreFechaCaixa.tipo := Tipo;
         frmAbreFechaCaixa.showmodal;
         if frmAbreFechaCaixa.Cancela = 'Sim' then
             abort;
      finally
        FreeandNil(frmAbreFechaCaixa);
      end;


   end
   else
   begin
     Codigo := VerificaCaixaDiaAbertoModel(Tipo);
     if Codigo <> 0 then
        begin

        end
        else
        begin
         try
         if frmAberturaDeCaixa = nil then
         frmAberturaDeCaixa := TfrmAberturaDeCaixa.Create(nil);
         frmAberturaDeCaixa.tipo := Tipo;
         frmAberturaDeCaixa.ShowModal;
         if frmAberturaDeCaixa.Cancela = 'Sim' then
             abort;
         finally
         FreeandNil(frmAberturaDeCaixa);
         end;


        end;
   end;
  finally

  end;


end;


constructor TAbreFechaCaixa.create;
begin

end;

procedure TAbreFechaCaixa.Delete(ObjAbreFechaCaixa: TAbreFechaCaixa);
var
q1 : TFDQuery;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;

   try
     with q1 do
     begin
      close;
      sql.Text := 'insert into TB_ABREFECHACAIXA';

      ExecSQL;
     end;
   finally
     FreeandNil(q1);
   end;
end;

destructor TAbreFechaCaixa.destroy;
begin

  inherited;
end;


procedure TAbreFechaCaixa.insert(ObjAbreFechaCaixa: TAbreFechaCaixa);
var
q1 : TFDQuery;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;

   try
     with q1 do
     begin
      close;
      sql.Text := 'insert into TB_ABREFECHACAIXA'
      +'(ABR_CODIGO'
      +',ABR_VALOR_ENTRADA'
      +',ABR_VALOR_SAIDA'
      +',ABR_SALDO'
      +',ABR_TERMINAL'
      +',ABR_USUARIO'
      +',ABR_CODIGO_USUARIO'
      +',ABR_OPERADOR'
      +',ABR_STATUS'
      +',ABR_DATA'
      +',ABR_HORAS'
      +',ABR_BENEFICIARIO'
      +',ABR_TIPO)'
      +'VALUES(:ABR_CODIGO'
      +',:ABR_VALOR_ENTRADA'
      +',:ABR_VALOR_SAIDA'
      +',:ABR_SALDO'
      +',:ABR_TERMINAL'
      +',:ABR_USUARIO'
      +',:ABR_CODIGO_USUARIO'
      +',:ABR_OPERADOR'
      +',:ABR_STATUS'
      +',:ABR_DATA'
      +',:ABR_HORAS'
      +',:ABR_BENEFICIARIO'
      +',:ABR_TIPO)';
      ParamByName('ABR_CODIGO').AsInteger:=ABR_CODIGO;
      ParamByName('ABR_VALOR_ENTRADA').AsFloat:=ABR_VALOR_ENTRADA;
      ParamByName('ABR_VALOR_SAIDA').AsFloat:=ABR_VALOR_SAIDA;
      ParamByName('ABR_SALDO').AsFloat:=ABR_SALDO;
      ParamByName('ABR_TERMINAL').AsString:=ABR_TERMINAL;
      ParamByName('ABR_USUARIO').AsString:=ABR_USUARIO;
      ParamByName('ABR_CODIGO_USUARIO').AsInteger:=ABR_CODIGO_USUARIO;
      ParamByName('ABR_OPERADOR').AsString:=ABR_OPERADOR;
      ParamByName('ABR_STATUS').AsString:=ABR_STATUS;
      ParamByName('ABR_DATA').AsDate:=ABR_DATA;
      ParamByName('ABR_HORAS').AsTime:=ABR_HORAS;
      ParamByName('ABR_BENEFICIARIO').AsString:=ABR_BENEFICIARIO;
      ParamByName('ABR_TIPO').AsString:=ABR_TIPO;
      ExecSQL;
     end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TAbreFechaCaixa.Read(ObjAbreFechaCaixa: TAbreFechaCaixa;
  Codigo: Integer);
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
       sql.Add('select * from TB_ABREFECHACAIXA where abr_codigo=:abr_codigo');
       ParamByName('abr_codigo').AsInteger := Codigo;
       open;
       ABR_CODIGO := FieldByName('ABR_CODIGO').AsInteger;
       ABR_VALOR_ENTRADA := FieldByName('ABR_VALOR_ENTRADA').AsFloat;
       ABR_VALOR_SAIDA := FieldByName('ABR_VALOR_SAIDA').AsFloat;
       ABR_SALDO := FieldByName('ABR_SALDO').AsFloat;
       ABR_TERMINAL := FieldByName('ABR_TERMINAL').AsString;
       ABR_USUARIO := FieldByName('ABR_USUARIO').AsString;
       ABR_CODIGO_USUARIO := FieldByName('ABR_CODIGO_USUARIO').AsInteger;
       ABR_OPERADOR := FieldByName('ABR_OPERADOR').AsString;
       ABR_STATUS := FieldByName('ABR_STATUS').AsString;
       ABR_DATA := FieldByName('ABR_DATA').AsDateTime;
       ABR_HORAS := FieldByName('ABR_HORAS').AsDateTime;
       ABR_BENEFICIARIO := FieldByName('ABR_BENEFICIARIO').AsString;
       ABR_HORAFECHAMENTO := FieldByName('ABR_HORAFECHAMENTO').AsDateTime;

     end;
   finally
     FreeandNil(q1);
   end;
end;

procedure TAbreFechaCaixa.SetABR_BENEFICIARIO(const Value: String);
begin
  FABR_BENEFICIARIO := Value;
end;

procedure TAbreFechaCaixa.SetABR_CODIGO(const Value: Integer);
begin
  FABR_CODIGO := Value;
end;

procedure TAbreFechaCaixa.SetABR_CODIGO_USUARIO(const Value: Integer);
begin
  FABR_CODIGO_USUARIO := Value;
end;


procedure TAbreFechaCaixa.SetABR_DATA(const Value: TDate);
begin
  FABR_DATA := Value;
end;

procedure TAbreFechaCaixa.SetABR_DATAFECHAMENTO(const Value: TDate);
begin
  FABR_DATAFECHAMENTO := Value;
end;

procedure TAbreFechaCaixa.SetABR_HORAFECHAMENTO(const Value: TTime);
begin
  FABR_HORAFECHAMENTO := Value;
end;

procedure TAbreFechaCaixa.SetABR_HORAS(const Value: TTime);
begin
  FABR_HORAS := Value;
end;

procedure TAbreFechaCaixa.SetABR_OPERADOR(const Value: String);
begin
  FABR_OPERADOR := Value;
end;

procedure TAbreFechaCaixa.SetABR_SALDO(const Value: Double);
begin
  FABR_SALDO := Value;
end;

procedure TAbreFechaCaixa.SetABR_STATUS(const Value: String);
begin
  FABR_STATUS := Value;
end;

procedure TAbreFechaCaixa.SetABR_TERMINAL(const Value: String);
begin
  FABR_TERMINAL := Value;
end;

procedure TAbreFechaCaixa.SetABR_TIPO(const Value: String);
begin
  FABR_TIPO := Value;
end;

procedure TAbreFechaCaixa.SetABR_USUARIO(const Value: String);
begin
  FABR_USUARIO := Value;
end;

procedure TAbreFechaCaixa.SetABR_VALORINFORMADO(const Value: Double);
begin
  FABR_VALORINFORMADO := Value;
end;

procedure TAbreFechaCaixa.SetABR_VALOR_ENTRADA(const Value: Double);
begin
  FABR_VALOR_ENTRADA := Value;
end;

procedure TAbreFechaCaixa.SetABR_VALOR_SAIDA(const Value: Double);
begin
  FABR_VALOR_SAIDA := Value;
end;

procedure TAbreFechaCaixa.Update(ObjAbreFechaCaixa: TAbreFechaCaixa);
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
     sql.Add('update TB_ABREFECHACAIXA set');
     Sql.Add('ABR_CODIGO=:ABR_CODIGO');
     Sql.Add(',ABR_VALOR_ENTRADA=:ABR_VALOR_ENTRADA');
     Sql.Add(',ABR_VALOR_SAIDA=:ABR_VALOR_SAIDA');
     Sql.Add(',ABR_SALDO=:ABR_SALDO');
     Sql.Add(',ABR_TERMINAL=:ABR_TERMINAL');
     Sql.Add(',ABR_USUARIO=:ABR_USUARIO');
     Sql.Add(',ABR_CODIGO_USUARIO=:ABR_CODIGO_USUARIO');
     Sql.Add(',ABR_OPERADOR=:ABR_OPERADOR');
     Sql.Add(',ABR_STATUS=:ABR_STATUS');
     Sql.Add(',ABR_DATA=:ABR_DATA');
     Sql.Add(',ABR_HORAS=:ABR_HORAS');
     Sql.Add(',ABR_BENEFICIARIO=:ABR_BENEFICIARIO');
     Sql.Add(',ABR_HORAFECHAMENTO=:ABR_HORAFECHAMENTO');
     Sql.Add(',ABR_DATAFECHAMENTO=:ABR_DATAFECHAMENTO');
     Sql.Add(',ABR_VALORINFORMADO=:ABR_VALORINFORMADO');
     Sql.Add(',ABR_TIPO=:ABR_TIPO');
     Sql.Add('where ABR_CODIGO =:ABR_CODIGO');
     ParamByName('ABR_CODIGO').AsInteger:=ABR_CODIGO;
     ParamByName('ABR_VALOR_ENTRADA').AsFloat:=ABR_VALOR_ENTRADA;
     ParamByName('ABR_VALOR_SAIDA').AsFloat:=ABR_VALOR_SAIDA;
     ParamByName('ABR_SALDO').AsFloat:=ABR_SALDO;
     ParamByName('ABR_TERMINAL').AsString:=ABR_TERMINAL;
     ParamByName('ABR_USUARIO').AsString:=ABR_USUARIO;
     ParamByName('ABR_CODIGO_USUARIO').AsInteger:=ABR_CODIGO_USUARIO;
     ParamByName('ABR_OPERADOR').AsString:=ABR_OPERADOR;
     ParamByName('ABR_STATUS').AsString:=ABR_STATUS;
     ParamByName('ABR_DATA').AsDate:=ABR_DATA;
     ParamByName('ABR_HORAS').AsTime:=ABR_HORAS;
     ParamByName('ABR_BENEFICIARIO').AsString:=ABR_BENEFICIARIO;
     ParamByName('ABR_HORAFECHAMENTO').AsTime:=ABR_HORAFECHAMENTO;
     ParamByName('ABR_DATAFECHAMENTO').AsDateTime:=ABR_DATAFECHAMENTO;
     ParamByName('ABR_VALORINFORMADO').AsFloat:=ABR_VALORINFORMADO;
     ParamByName('ABR_TIPO').AsString:=ABR_TIPO;
     ExecSQL;
     end;
   finally
     FreeandNil(q1);
   end;
end;



function TAbreFechaCaixa.VerificaCaixaAbertoModel (Tipo : String) : Integer ;
var
_sMsg : String;
q1 : TFDQuery;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_ABREFECHACAIXA where ABR_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
       sql.Add('and ABR_STATUS='+QuotedStr('Aberto'));
       sql.Add('and ABR_DATA <'+QuotedStr(formatdatetime('yyyy-mm-dd',now)));
       sql.Add('and ABR_TIPO='+QuotedStr(Tipo));
       sql.Add('and ABR_CODIGO_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
       open;
       if not IsEmpty then
       begin
       Result := q1.FieldByName('ABR_CODIGO').AsInteger;
       end
       else
       Result := 0;

     end;
   finally
     FreeandNil(q1);
   end;

end;

function TAbreFechaCaixa.VerificaCaixaDiaAbertoModel(Tipo : String)  : Integer;
var
_sMsg : String;
q1 : TFDQuery;
begin
   q1 := TFDQuery.Create(nil);
   q1.Connection := dm.Con;

   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('select * from TB_ABREFECHACAIXA where ABR_BENEFICIARIO='+QuotedStr(frmPrincipal.Global.PRI_CPFCNPJ));
       sql.Add('and ABR_STATUS='+QuotedStr('Aberto'));
       sql.Add('and ABR_DATA ='+QuotedStr(formatdatetime('yyyy-mm-dd',now)));
       sql.Add('and ABR_TIPO='+QuotedStr(Tipo));
       sql.Add('and ABR_CODIGO_USUARIO='+QuotedStr(inttostr(frmPrincipal.PerM.CodigoUser)));
       open;
       if not IsEmpty then
       begin
       Result := q1.FieldByName('ABR_CODIGO').AsInteger;
       end
       else
       Result := 0;

     end;
   finally
     FreeandNil(q1);
   end;

end;

end.
