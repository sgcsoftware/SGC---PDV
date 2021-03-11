unit MiniSoft.Controller.ClientesContaAPagar;


interface

uses Minisoft.Model.ClientesContaAPagar;
    type
    TClientesContaAPagarController = class
      private
      public
      procedure Inserir(ObjClientesContaAPagar : TClientesContaAPagarModel);
       procedure Alterar(ObjClientesContaAPagar : TClientesContaAPagarModel);
       procedure Deletar(ObjClientesContaAPagar : TClientesContaAPagarModel);
       procedure ler  (ObjClientesContaAPagar : TClientesContaAPagarModel ; Codigo : Integer);
      constructor create;
      destructor destroy; override;
    end;
implementation

{ TClientesContaAPagarController }

procedure TClientesContaAPagarController.Alterar(
  ObjClientesContaAPagar: TClientesContaAPagarModel);
begin
ObjClientesContaAPagar.Update(ObjClientesContaAPagar);
end;

constructor TClientesContaAPagarController.create;
begin

end;

procedure TClientesContaAPagarController.Deletar(
  ObjClientesContaAPagar: TClientesContaAPagarModel);
begin
  ObjClientesContaAPagar.Delete(ObjClientesContaAPagar);
end;

destructor TClientesContaAPagarController.destroy;
begin

  inherited;
end;

procedure TClientesContaAPagarController.Inserir(
  ObjClientesContaAPagar: TClientesContaAPagarModel);
begin
  ObjClientesContaAPagar.Insert(ObjClientesContaAPagar);
end;

procedure TClientesContaAPagarController.ler(
  ObjClientesContaAPagar: TClientesContaAPagarModel; Codigo: Integer);
begin
 ObjClientesContaAPagar.Read(ObjClientesContaAPagar, Codigo);
end;

end.
