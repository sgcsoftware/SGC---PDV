unit MiniSoft.Controller.Caixa;


interface

uses Minisoft.Model.Caixa;
    type
    TCaixaController = class
      private
      public
       procedure Inserir(Objcaixa : TCaixaModel);
       procedure Alterar(Objcaixa : TCaixaModel);
       procedure Deletar(Objcaixa : TCaixaModel);
       procedure Ler  (Objcaixa : TCaixaModel ; Codigo : Integer);
      constructor create;
      destructor destroy; override;
    end;
implementation

{ TCaixaController }

procedure TCaixaController.Alterar(Objcaixa: TCaixaModel);
begin
Objcaixa.Update(Objcaixa);
end;

constructor TCaixaController.create;
begin

end;

procedure TCaixaController.Deletar(Objcaixa: TCaixaModel);
begin
Objcaixa.Delete(Objcaixa);
end;

destructor TCaixaController.destroy;
begin

  inherited;
end;

procedure TCaixaController.Inserir(Objcaixa: TCaixaModel);
begin
Objcaixa.Insert(Objcaixa);
end;

procedure TCaixaController.Ler(Objcaixa: TCaixaModel; Codigo: Integer);
begin
Objcaixa.Read(Objcaixa, Codigo);
end;

end.
