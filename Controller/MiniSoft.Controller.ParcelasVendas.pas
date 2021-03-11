unit MiniSoft.Controller.ParcelasVendas;


interface

uses Minisoft.Model.ParcelasVendas;
     type
     TParcelasController = class
     private
     public
     procedure Inserir(ObjParcelas : TParcelasVendasModel);
     procedure Alterar(ObjParcelas : TParcelasVendasModel);
     procedure Deletar(ObjParcelas : TParcelasVendasModel);
     procedure ler  (ObjParcelas : TParcelasVendasModel ; Codigo : Integer);
     constructor create;
     destructor destroy; override;
     end;

 implementation
{ TParcelasController }
{ TParcelasController }

procedure TParcelasController.Alterar(ObjParcelas: TParcelasVendasModel);
begin
ObjParcelas.Update(ObjParcelas);
end;

constructor TParcelasController.create;
begin

end;

procedure TParcelasController.Deletar(ObjParcelas: TParcelasVendasModel);
begin
ObjParcelas.Delete(ObjParcelas);
end;

destructor TParcelasController.destroy;
begin

  inherited;
end;

procedure TParcelasController.Inserir(ObjParcelas: TParcelasVendasModel);
begin
ObjParcelas.Insert(ObjParcelas);
end;

procedure TParcelasController.ler(ObjParcelas: TParcelasVendasModel;
  Codigo: Integer);
begin
 ObjParcelas.Red(ObjParcelas, Codigo);
end;

end.
