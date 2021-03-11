unit Minisoft.Controllerl.Comissao;


interface

uses Minisoft.Model.Comissao;
     type
     TComissaoController = class
       private
       public
       procedure Inserir(ObjComissao : TComissaoModel);
       procedure Alterar(ObjComissao : TComissaoModel);
       procedure Deletar(ObjComissao : TComissaoModel);
       procedure Ler  (ObjComissao : TComissaoModel ; Codigo : Integer);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TComissaoController }

procedure TComissaoController.Alterar(ObjComissao: TComissaoModel);
begin
 ObjComissao.Update(ObjComissao);
end;

constructor TComissaoController.create;
begin

end;

procedure TComissaoController.Deletar(ObjComissao: TComissaoModel);
begin
ObjComissao.Delete(ObjComissao);
end;

destructor TComissaoController.destroy;
begin

  inherited;
end;

procedure TComissaoController.Inserir(ObjComissao: TComissaoModel);
begin
 ObjComissao.Insert(ObjComissao);
end;

procedure TComissaoController.Ler(ObjComissao: TComissaoModel; Codigo: Integer);
begin
ObjComissao.Read(ObjComissao, Codigo);
end;

end.
