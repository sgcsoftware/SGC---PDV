unit MiniSoft.Controller.NfceItens;

interface

uses MiniSoft.Model.NfceItens;
     type
     TNfceItensController = class
       private
       public
       procedure Inserir(ObjNfceItens : TNfceItensModel);
       procedure Deletar(ObjNfceItens : TNfceItensModel; Codigo : Integer);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TNfceItensController }

constructor TNfceItensController.create;
begin

end;

procedure TNfceItensController.Deletar(ObjNfceItens: TNfceItensModel;
  Codigo: Integer);
begin
ObjNfceItens.Delete(ObjNfceItens, codigo);
end;

destructor TNfceItensController.destroy;
begin

  inherited;
end;

procedure TNfceItensController.Inserir(ObjNfceItens: TNfceItensModel);
begin
 ObjNfceItens.Insert(ObjNfceItens);
end;

end.
