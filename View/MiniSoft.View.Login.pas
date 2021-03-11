unit MiniSoft.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtDlgs, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  dxGDIPlusClasses, Vcl.ExtCtrls, Conexao, MiniSoft.Model.Usuarios,
  MiniSoft.Controller.Usuarios, maskutils, Winapi.WinInet, System.DateUtils,
  uDWConstsData, uRESTDWPoolerDB;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Image2: TImage;
    Panel4: TPanel;
    Label1: TLabel;
    Usuário: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel6: TPanel;
    FDQuery1: TFDQuery;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure CarregaUser;
    function ValidaLogin(beneficiario, login, senha: String): Boolean;
    procedure Logar;
    procedure LiberaSistema;
    procedure VerificaPagamento;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses MiniSoft.View.Principal;

procedure TfrmLogin.CarregaUser;
var
id: string;
A, I : integer;
user : TFDQuery;
begin
   user := TFDQuery.Create(nil);
   user.Connection := dm.Con;

   try
    id := ComboBox2.text;
   if ComboBox2.Text = id then
      begin
        with user do
        begin
        ComboBox2.Items.Clear;
        close;
        sql.Clear;
        SQL.Add('select * from tb_usuarios where USU_BENEFICIARIO = :USU_BENEFICIARIO ');
        sql.Add('order by usu_login');
        ParamByName('USU_BENEFICIARIO').Value := dm.Global.FieldByName('pri_cpfcnpj').AsString;
        Open;
       // dm.usuarios.Last;
        A := RecordCount;
        for I := 1 to A do
            begin
              ComboBox2.Items.Add(FieldByName('usu_login').AsString);
              Next;
            end;
        end;
       ComboBox2.ItemIndex := 0;
      end;
   finally
     FreeandNil(user);
   end;

end;

procedure TfrmLogin.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
begin
  logar;
end;
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
 with dm.global do
     begin

      sql.Clear;
      Sql.Add( 'Select * From tb_principal');
      open;
      first;
      While not dm.global.eof do
         begin
           ComboBox1.items.add(dm.global.FieldByName('pri_razao').AsString);
           next;
         end;

      end;
      ComboBox1.ItemIndex := 0;
      if dm.global.RecordCount = 1 then
      begin
        ComboBox1.Enabled := false;
        CarregaUser;
      end;
      edit2.SetFocus;
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_F4 then
    abort;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  panel2.top := (screen.HEIGHT - panel2.HEIGHT) div 2;
  panel2.left := (screen.WIDTH - panel2.WIDTH)  div 2;
  //Image1.Left := (screen.WIDTH - panel2.WIDTH)  div 2;
  //Image1.top := (screen.HEIGHT - panel2.HEIGHT) div 2 - 110;

  OpenPictureDialog1.FileName := GetCurrentDir + '\Logo.png' ;
  Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
 //MakeRounded(panel2);
 combobox2.SetFocus;
end;

procedure TfrmLogin.LiberaSistema;
var
i:dword;
begin
          i :=
          INTERNET_CONNECTION_MODEM +
          INTERNET_CONNECTION_LAN +
          INTERNET_CONNECTION_PROXY;
          if  (InternetGetConnectedState(@i,0)) and (dm.Revenda.Connected = true) then
          begin
          dm.fdquery.SQL.Clear;
          dm.fdquery.SQL.Add('select * from clientes_revenda where cpfcnpj="'+frmPrincipal.Global.PRI_CPFCNPJ+'"');
          dm.fdquery.Open;
          dm.fdquery.Edit;
          dm.fdquery.FieldByName('ultimoacessogerencial').AsDateTime := now;
          dm.fdquery.Post;
           if (dm.fdquery.FieldByName('pagamento').AsString = 'Inadiplente') and (dm.fdquery.FieldByName('status').AsString <> 'BLOQUEADO') then
           begin
              VerificaPagamento;
           end;
           if dm.fdquery.FieldByName('status').AsString = 'BLOQUEADO' then
              begin
                ShowMessage('Seu Sistema esta Bloqueado, favor entrar em contato com a sua Revenda');
                Application.Terminate;
              end
              else
              begin
                if dm.fdquery.FieldByName('msg').AsString <> '' then
                begin
                   ShowMessage(pchar(dm.fdquery.FieldByName('msg').AsString));
                end;
              end;
          dm.fdquery1.SQL.Clear;
          dm.fdquery1.SQL.Add('select * from revendedor where id="'+dm.fdquery.FieldByName('idrevendedor').AsString+'"');
          dm.fdquery1.Open;
           if dm.fdquery1.FieldByName('status').AsString = 'BLOQUIADO' then
              begin
                ShowMessage('Seu revendedor está bloqueado!');
                Application.Terminate;
              end;
           if dm.fdquery.FieldByName('outroscaixa').AsString = 'SIM' then
              begin

              end
              else
              begin

              end;
              frmPrincipal.Visible:=true;
              frmPrincipal.StatusBar1.Panels[0].Text := IntToStr(dm.global.FieldByName('pri_codigo').AsInteger);
              frmPrincipal.StatusBar1.Panels[2].Text := dm.global.FieldByName('pri_razao').AsString;
              frmPrincipal.StatusBar1.Panels[4].Text := FormatmaskText('00\.000\.000\/0000\-00;0;',dm.global.FieldByName('pri_cpfcnpj').AsString);
              frmPrincipal.StatusBar1.Panels[6].Text := combobox2.Text;
              frmPrincipal.Statusbar1.Panels[7].Text := ' '+formatdatetime ('dddd","dd" de "mmmm" de "yyyy',now);
              frmPrincipal.Statusbar1.Panels[8].Text := 'Versão 1.5.3';
              Close;
          end
          else
          begin
           frmPrincipal.Visible:=true;
           frmPrincipal.StatusBar1.Panels[0].Text := IntToStr(dm.global.FieldByName('pri_codigo').AsInteger);
           frmPrincipal.StatusBar1.Panels[2].Text := dm.global.FieldByName('pri_razao').AsString;
           frmPrincipal.StatusBar1.Panels[4].Text := FormatmaskText('00\.000\.000\/0000\-00;0;',dm.global.FieldByName('pri_cpfcnpj').AsString);
           frmPrincipal.StatusBar1.Panels[6].Text := combobox2.Text;
           frmPrincipal.Statusbar1.Panels[7].Text := ' '+formatdatetime ('dddd","dd" de "mmmm" de "yyyy',now);
           frmPrincipal.Statusbar1.Panels[8].Text := 'Versão 1.5.3';

           Close;
          end;

end;

procedure TfrmLogin.Logar;
var
UsuarioModel : TUsuariosModel;
UsuarioController : TUsuariosController;
begin
  ValidaLogin(combobox1.Text, combobox2.Text,Edit2.Text);
    UsuarioModel := TUsuariosModel.create;
    UsuarioController := TUsuariosController.create;

    try
      UsuarioController.Logar(UsuarioModel,dm.Global.FieldByName('pri_CPFCNPJ').AsString,
      combobox2.Text, Edit2.Text);
      if UsuarioModel.usu_logado = 'True' then
        begin
         frmPrincipal.CarregaGlobal;
         LiberaSistema;
         frmPrincipal.CarregaUser(UsuarioModel.USU_CODIGO_NIVEL, UsuarioModel.USU_CODIGO, UsuarioModel.USU_LOGIN);

         Close
        end
         else
         ShowMessage('Senha Inválida!');
    finally
      FreeandNil(UsuarioModel);
      FreeandNil(UsuarioController);

    end;
end;

procedure TfrmLogin.SpeedButton1Click(Sender: TObject);
begin
Logar;
end;

procedure TfrmLogin.SpeedButton2Click(Sender: TObject);
begin

 application.Terminate;

end;

function TfrmLogin.ValidaLogin(beneficiario, login, senha: String): Boolean;
var
sError : String;
begin
   result := true;
   if beneficiario = '' then
   begin
     sError := sError + 'Selecione a Empresa!'+#13;
     result := false;
   end;
   if login = '' then
   begin
     sError := sError + 'Selecione o usuário!'+#13;
     result := false;
   end;
   if senha = '' then
   begin
     sError := sError + 'Digite a Senha!'+#13;
     result := false;
   end;
   if Result = false then
   begin
     ShowMessage(sError);
     abort;
   end;
end;

procedure TfrmLogin.VerificaPagamento;
var
dtComputador, dtInadiplencia : TDateTime;
NumeroDias, DiasParaBloqueio : Integer;
begin
dtComputador := now;
dtInadiplencia := dm.fdquery.FieldByName('data2').AsDateTime;
NumeroDias := DaysBetween(dtComputador,dtInadiplencia);
case NumeroDias of
     0 :
     begin
       DiasParaBloqueio := 5
     end;
     1 :
     begin
       DiasParaBloqueio := 4
     end;
     2 :
     begin
       DiasParaBloqueio := 3
     end;
     3 :
     begin
       DiasParaBloqueio := 2
     end;
     4 :
     begin
       DiasParaBloqueio := 1
     end;
     5 :
     begin
       DiasParaBloqueio := 0
     end;
end;
  if NumeroDias < 5 then
  begin
     ShowMessage(pchar('Sua Licença irá se expirar em '+inttostr(DiasParaBloqueio)+' Dias entre em contato com sua revenda para renovar!'));
  end;
  if NumeroDias = 5 then
  begin
     ShowMessage('Sua licença expira amanhã, entre em contato com sua revenda para renovar!');
  end;
  if NumeroDias > 5 then
  begin
     ShowMessage('Infelizmente sua licença expirou, Favor entrar em contato com sua revenda para renovar.');
     dm.fdquery.Edit;
     dm.fdquery.FieldByName('Status').AsString := 'BLOQUEADO';
     dm.fdquery.FieldByName('pagamento').AsString := 'Inadiplente';
     dm.fdquery.FieldByName('dataBloqueio').AsDateTime := now;
     dm.fdquery.Post;
  end;



end;

end.
