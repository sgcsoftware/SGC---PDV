unit MiniSoft.Controller.MovimentacaoDeVendas;


interface

uses Minisoft.Model.MovimentacaoDeVendas;
     type
     TMovimentacaoDeVendasController = class
       private
       public
       procedure Inserir(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel);
       procedure Alterar(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel; Tipo : String; CodVenda : Integer);
       procedure Deletar(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel);
       procedure ler  (ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel ; Codigo : Integer);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TMovimentacaoDeVendasController }

procedure TMovimentacaoDeVendasController.Alterar(ObjMovimentacaoDeVendasModel : TMovimentacaoDeVendasModel; Tipo : String; CodVenda : Integer);
begin
  ObjMovimentacaoDeVendasModel.Update(ObjMovimentacaoDeVendasModel, Tipo, CodVenda);
end;

constructor TMovimentacaoDeVendasController.create;
begin

end;

procedure TMovimentacaoDeVendasController.Deletar(
  ObjMovimentacaoDeVendasModel: TMovimentacaoDeVendasModel);
begin

end;

destructor TMovimentacaoDeVendasController.destroy;
begin

  inherited;
end;

procedure TMovimentacaoDeVendasController.Inserir(
  ObjMovimentacaoDeVendasModel: TMovimentacaoDeVendasModel);
begin
ObjMovimentacaoDeVendasModel.insert(ObjMovimentacaoDeVendasModel);
end;

procedure TMovimentacaoDeVendasController.ler(
  ObjMovimentacaoDeVendasModel: TMovimentacaoDeVendasModel; Codigo: Integer);
begin

end;

end.
