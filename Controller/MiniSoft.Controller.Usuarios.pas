unit MiniSoft.Controller.Usuarios;

interface

uses Minisoft.Model.Usuarios;
    type
    TUsuariosController = class
      private
      public
      procedure Inserir(ObjUSUARIO : TUsuariosModel);
      procedure Alterar(ObjUSUARIO : TUsuariosModel);
      procedure Deletar(ObjUSUARIO : TUsuariosModel);
      procedure ler  (ObjUSUARIO : TUsuariosModel ; Codigo : Integer);
      function Logar(ObjUSUARIO : TUsuariosModel;Beneficiario, login, senha: String): Boolean;
      constructor create;
      destructor destroy; override;
    end;
implementation

{ TUsuariosController }

procedure TUsuariosController.Alterar(ObjUSUARIO: TUsuariosModel);
begin
 ObjUSUARIO.Update(ObjUSUARIO);
end;

constructor TUsuariosController.create;
begin

end;

procedure TUsuariosController.Deletar(ObjUSUARIO: TUsuariosModel);
begin
 ObjUSUARIO.Delete(ObjUSUARIO) ;
end;

destructor TUsuariosController.destroy;
begin

  inherited;
end;

procedure TUsuariosController.Inserir(ObjUSUARIO: TUsuariosModel);
begin
  ObjUSUARIO.Insert(ObjUSUARIO)
end;

procedure TUsuariosController.ler(ObjUSUARIO: TUsuariosModel ; Codigo : Integer);
begin
  ObjUSUARIO.Read(ObjUSUARIO,Codigo);
end;

function TUsuariosController.Logar(ObjUSUARIO : TUsuariosModel;Beneficiario, login, senha: String): Boolean;
begin
 ObjUSUARIO.Login(ObjUSUARIO,Beneficiario, login, senha);
end;

end.
