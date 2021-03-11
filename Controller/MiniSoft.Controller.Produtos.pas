unit MiniSoft.Controller.Produtos;

interface

uses Minisoft.Model.Produtos;
    type
    TProdutoController = class
      private
      public
       procedure Inserir(ObjProduto : TProdutoModel);
       procedure Alterar(ObjProduto : TProdutoModel);
       procedure Deletar(ObjProduto : TProdutoModel);
       procedure Ler  (ObjProduto: TProdutoModel; Codigo: String; qtd : Double; codVenda : integer; tipo, randomicoProduto, sub, codsub : String);
       procedure LerConsulta(ObjProduto: TProdutoModel; Codigo: String);
      constructor create;
      destructor destroy; override;
    end;
implementation

{ TProdutoController }

procedure TProdutoController.Alterar(ObjProduto: TProdutoModel);
begin
ObjProduto.Update(ObjProduto);
end;

constructor TProdutoController.create;
begin

end;

procedure TProdutoController.Deletar(ObjProduto: TProdutoModel);
begin
ObjProduto.Delete(ObjProduto);
end;

destructor TProdutoController.destroy;
begin

  inherited;
end;

procedure TProdutoController.Inserir(ObjProduto: TProdutoModel);
begin
ObjProduto.Insert(ObjProduto);
end;

procedure TProdutoController.Ler(ObjProduto: TProdutoModel; Codigo: String; qtd : Double; codVenda : integer; tipo, randomicoProduto, sub, codsub : String);
begin
ObjProduto.Read(ObjProduto, Codigo, qtd, codVenda, tipo, randomicoProduto, sub, codsub);
end;

procedure TProdutoController.LerConsulta(ObjProduto: TProdutoModel;
  Codigo: String);
begin
 ObjProduto.ReadConsult(ObjProduto, Codigo);
end;

end.
