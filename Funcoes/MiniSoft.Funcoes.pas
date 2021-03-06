unit MiniSoft.Funcoes;

interface
uses
  System.SysUtils, System.MaskUtils, System.Math, Vcl.StdCtrls;
    type
    TFuncoesGerais = class
      private
      public
      function ValidaGTIN(AGTIN: string): boolean;
      function SoLetra(Texto: String): Boolean;
      function RetornaAst(Texto : String) : Boolean;
      function FormatarTelefone(Telefone : String):String;
      function RetDec(valor: String): Double;
      function SoNumeros(Str: string): string;
      function IsValidCPF(pCPF : string) : Boolean;
      function IsValidCNPJ(pCNPJ : string) : Boolean;
      Function EditFormatExit(Sender: TObject) : String;
      function ValorExtenso(Valor : Extended; Moeda: Boolean; Tipo : Integer = 0): String;
      function GetRandomPassword(Size: Integer; Tipo : Integer = 1): String;
      Constructor create;
      destructor destroy; override;
    end;
implementation

{ TFuncoesGerais }

constructor TFuncoesGerais.create;
begin

end;

destructor TFuncoesGerais.destroy;
begin

  inherited;
end;

function TFuncoesGerais.EditFormatExit(Sender: TObject): String;
begin
     if (TEdit(sender).text = '') or (TEdit(sender).text = '0')  then
    TEdit(sender).Text := '0,00';

   TEdit(sender).Text := formatfloat('###,###,##0.00', RetDec(TEdit(sender).Text));
   Result:= TEdit(sender).Text;
end;

function TFuncoesGerais.FormatarTelefone(Telefone: String): String;
begin

end;

function TFuncoesGerais.GetRandomPassword(Size, Tipo: Integer): String;
var
  I: Integer;
  Chave: String;
const
  str1 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  str2 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  str3 = '1234567890abcdefghijklmnopqrstuvwxyz';
  str4 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  str5 = '1234567890';
  str6 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  str7 = 'abcdefghijklmnopqrstuvwxyz';
begin
  Chave := '';

  for I := 1 to Size do
  begin
    case Tipo of
      1 : Chave := Chave + str1[Random(Length(str1)) + 1];
      2 : Chave := Chave + str2[Random(Length(str2)) + 1];
      3 : Chave := Chave + str3[Random(Length(str3)) + 1];
      4 : Chave := Chave + str4[Random(Length(str4)) + 1];
      5 : Chave := Chave + str5[Random(Length(str5)) + 1];
      6 : Chave := Chave + str6[Random(Length(str6)) + 1];
      7 : Chave := Chave + str7[Random(Length(str7)) + 1];
    end;
  end;

  Result := Chave;
end;

function TFuncoesGerais.IsValidCNPJ(pCNPJ: string): Boolean;
var
  v: array[1..2] of Word;
  cnpj: array[1..14] of Byte;
  I: Byte;
begin
  try
    for I := 1 to 14 do
      cnpj[i] := StrToInt(pCNPJ[i]);
    //Nota: Calcula o primeiro d?gito de verifica??o.
    v[1] := 5*cnpj[1] + 4*cnpj[2]  + 3*cnpj[3]  + 2*cnpj[4];
    v[1] := v[1] + 9*cnpj[5] + 8*cnpj[6]  + 7*cnpj[7]  + 6*cnpj[8];
    v[1] := v[1] + 5*cnpj[9] + 4*cnpj[10] + 3*cnpj[11] + 2*cnpj[12];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);
    //Nota: Calcula o segundo d?gito de verifica??o.
    v[2] := 6*cnpj[1] + 5*cnpj[2]  + 4*cnpj[3]  + 3*cnpj[4];
    v[2] := v[2] + 2*cnpj[5] + 9*cnpj[6]  + 8*cnpj[7]  + 7*cnpj[8];
    v[2] := v[2] + 6*cnpj[9] + 5*cnpj[10] + 4*cnpj[11] + 3*cnpj[12];
    v[2] := v[2] + 2*v[1];
    v[2] := 11 - v[2] mod 11;
    v[2] := IfThen(v[2] >= 10, 0, v[2]);
    //Nota: Verdadeiro se os d?gitos de verifica??o s?o os esperados.
    Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));
  except on E: Exception do
    Result := False;
  end;
end;

function TFuncoesGerais.IsValidCPF(pCPF: string): Boolean;
var
  v: array [0 .. 1] of Word;
  cpf: array [0 .. 10] of Byte;
  I: Byte;
begin
  try
    for I := 1 to 11 do
      cpf[I - 1] := StrToInt(pCPF[I]);
    // Nota: Calcula o primeiro d?gito de verifica??o.
    v[0] := 10 * cpf[0] + 9 * cpf[1] + 8 * cpf[2];
    v[0] := v[0] + 7 * cpf[3] + 6 * cpf[4] + 5 * cpf[5];
    v[0] := v[0] + 4 * cpf[6] + 3 * cpf[7] + 2 * cpf[8];
    v[0] := 11 - v[0] mod 11;
    v[0] := IfThen(v[0] >= 10, 0, v[0]);
    // Nota: Calcula o segundo d?gito de verifica??o.
    v[1] := 11 * cpf[0] + 10 * cpf[1] + 9 * cpf[2];
    v[1] := v[1] + 8 * cpf[3] + 7 * cpf[4] + 6 * cpf[5];
    v[1] := v[1] + 5 * cpf[6] + 4 * cpf[7] + 3 * cpf[8];
    v[1] := v[1] + 2 * v[0];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);
    // Nota: Verdadeiro se os d?gitos de verifica??o s?o os esperados.
    Result := ((v[0] = cpf[9]) and (v[1] = cpf[10]));
  except
    on E: Exception do
      Result := False;
  end;

end;

function TFuncoesGerais.RetDec(valor: String): Double;
begin
result := StrToCurrDef(StringReplace(valor, '.', '', [rfReplaceAll]), 0);
end;

function TFuncoesGerais.RetornaAst(Texto: String): Boolean;
var
i : integer;
x : String;
begin
 x := '';

  for i := 1 to length(trim(Texto)) do
  begin
  if (Texto[i] in ['*']) then
  begin
  result := true;
  x := 's';
  end
  else
  begin
  result := false;
  end;
 end;

 if x = 's' then
   result := true;

end;

function TFuncoesGerais.SoLetra(Texto: String): Boolean;
var
i : integer;
begin
 result := true;
  for i := 1 to length(trim(Texto)) do
  begin
  if (Texto[i] in ['0'..'9']) then
  begin
  //result := true;
  end
  else
  begin
  result := false;
  end;
 end;
end;

function TFuncoesGerais.SoNumeros(Str: string): string;
var
  I: Integer;
  d1: string;
begin
  for I := 1 to Length(Str) do
  begin
    if Pos(Copy(Str, I, 1), ' ()/-.') = 0 then
      d1 := d1 + Copy(Str, I, 1);
  end;
  Result := d1;
end;

function TFuncoesGerais.ValidaGTIN(AGTIN: string): boolean;
var
  i, soma, resultado, base10: integer;
  x : string;
begin
  //Verifica se todos os caracteres de AGTIN s?o n?meros
  for i:= 1 to Length(AGTIN) do
    if not (AGTIN[i] in ['0'..'9']) then
    begin
      Result:= False;
      Exit;
    end;
  //Verifica se AGTIN tem o tamanho necess?rio
  if Length(AGTIN) in [8,12,13,14] then
  begin
    soma:= 0;
    for i:= 1 to (Length(AGTIN) -1) do
    begin
      //Se for par, multiplica por 3. Se ?mpar, por 1
      if Odd(i) then
        soma:= soma + (strtoint(AGTIN[i]) * 1)
      else
        soma:= soma + (strtoint(AGTIN[i]) * 3);
    end;
    base10:= soma;
    //Verifica se base10 ? m?ltiplo de 10
    if not (base10 mod 10 = 0) then
    begin
      while not (base10 mod 10 = 0) do
      begin
        base10:= base10 + 1;
      end;
    end;
    resultado:= base10 - soma;
    //Verifica se o resultado encontrado ? igual ao caractere de controle
    if resultado = strtoint(AGTIN[Length(AGTIN)]) then
      Result:= True
    else
      Result:= False;


  end
  else
  begin
    Result:= False;
  end;

    x := Copy(AGTIN, 1, 1);
    if x <> '7' then
    Result:= False;

    Result:= False;

end;

function TFuncoesGerais.ValorExtenso(Valor: Extended; Moeda: Boolean;
  Tipo: Integer): String;
begin

end;

end.
