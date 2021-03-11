unit MiniSoft.Controller.HistoricoDeProduto;


interface

uses Minisoft.Model.HistoricoDeProduto;
    type
     THistoricoDeProdutoController = class
      private
      public
       procedure Inserir(ObjHistoricoDeProduto : THistoricoDeProdutoModel);
       procedure Alterar(ObjHistoricoDeProduto : THistoricoDeProdutoModel);
       procedure Deletar(ObjHistoricoDeProduto : THistoricoDeProdutoModel);
       procedure Ler  (ObjHistoricoDeProduto : THistoricoDeProdutoModel ; Codigo : Integer);
       procedure LerR  (ObjHistoricoDeProduto : THistoricoDeProdutoModel ; Codigo : String);
       procedure DeletarR(ObjHistoricoDeProduto : THistoricoDeProdutoModel; FValue : String);
      constructor create;
      destructor destroy; override;
     end;
implementation

{ THistoricoDeProdutoController }

procedure THistoricoDeProdutoController.Alterar(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel);
begin
 ObjHistoricoDeProduto.Update(ObjHistoricoDeProduto);
end;

constructor THistoricoDeProdutoController.create;
begin

end;

procedure THistoricoDeProdutoController.Deletar(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel);
begin
ObjHistoricoDeProduto.Delete(ObjHistoricoDeProduto);
end;

procedure THistoricoDeProdutoController.DeletarR(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel; FValue: String);
begin
 ObjHistoricoDeProduto.DeleteR(ObjHistoricoDeProduto, FValue);
end;

destructor THistoricoDeProdutoController.destroy;
begin

  inherited;
end;

procedure THistoricoDeProdutoController.Inserir(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel);
begin
 ObjHistoricoDeProduto.Insert(ObjHistoricoDeProduto);
end;

procedure THistoricoDeProdutoController.Ler(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel; Codigo: Integer);
begin
 ObjHistoricoDeProduto.Read(ObjHistoricoDeProduto, Codigo);
end;

procedure THistoricoDeProdutoController.LerR(
  ObjHistoricoDeProduto: THistoricoDeProdutoModel; Codigo: String);
begin
    ObjHistoricoDeProduto.ReadR(ObjHistoricoDeProduto, Codigo)
end;

end.
