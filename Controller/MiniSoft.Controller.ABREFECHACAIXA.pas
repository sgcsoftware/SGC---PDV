unit MiniSoft.Controller.ABREFECHACAIXA;


interface

uses Minisoft.Model.ABREFECHACAIXA;
     type
     TAbreFechaCaixaController = class
     private
     public
      procedure Inserir(ObjAbreFechaCaixa : TAbreFechaCaixa);
      procedure Alterar(ObjAbreFechaCaixa : TAbreFechaCaixa);
      procedure Deletar(ObjAbreFechaCaixa : TAbreFechaCaixa);
      procedure ler  (ObjAbreFechaCaixa : TAbreFechaCaixa ; Codigo : Integer);
      function VerificaCaixaAberto(ObjAbreFechaCaixa  : TAbreFechaCaixa) : Boolean;
     constructor create;
     destructor destroy; override;
     end;
implementation

{ TAbreFechaCaixaController }

procedure TAbreFechaCaixaController.Alterar(ObjAbreFechaCaixa: TAbreFechaCaixa);
begin
ObjAbreFechaCaixa.Update(ObjAbreFechaCaixa);
end;

constructor TAbreFechaCaixaController.create;
begin

end;

procedure TAbreFechaCaixaController.Deletar(ObjAbreFechaCaixa: TAbreFechaCaixa);
begin

end;

destructor TAbreFechaCaixaController.destroy;
begin

  inherited;
end;

procedure TAbreFechaCaixaController.Inserir(ObjAbreFechaCaixa: TAbreFechaCaixa);
begin
ObjAbreFechaCaixa.insert(ObjAbreFechaCaixa);
end;

procedure TAbreFechaCaixaController.ler(ObjAbreFechaCaixa: TAbreFechaCaixa;
  Codigo: Integer);
begin
  ObjAbreFechaCaixa.Read(ObjAbreFechaCaixa, Codigo);
end;

function TAbreFechaCaixaController.VerificaCaixaAberto(
  ObjAbreFechaCaixa: TAbreFechaCaixa): Boolean;
begin

end;

end.
