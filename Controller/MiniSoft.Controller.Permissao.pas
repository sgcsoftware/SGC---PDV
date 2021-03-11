unit MiniSoft.Controller.Permissao;

interface


uses Minisoft.Model.Permissao;
     type
     TPermissaoController = class
       private
       public
       procedure Inserir(ObjPermissao : TPermissaoModel);
       procedure Alterar(ObjPermissao : TPermissaoModel);
       procedure Deletar(ObjPermissao : TPermissaoModel);
       procedure Ler  (ObjPermissao : TPermissaoModel ; Codigo : Integer; CodigoU: Integer; loginU: String);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TPermissaoController }

procedure TPermissaoController.Alterar(ObjPermissao: TPermissaoModel);
begin
ObjPermissao.Update(ObjPermissao);
end;

constructor TPermissaoController.create;
begin

end;

procedure TPermissaoController.Deletar(ObjPermissao: TPermissaoModel);
begin
ObjPermissao.Delete(ObjPermissao);
end;

destructor TPermissaoController.destroy;
begin

  inherited;
end;

procedure TPermissaoController.Inserir(ObjPermissao: TPermissaoModel);
begin
ObjPermissao.Insert(ObjPermissao);
end;

procedure TPermissaoController.Ler(ObjPermissao : TPermissaoModel ; Codigo : Integer; CodigoU: Integer; loginU: String);
begin
 ObjPermissao.Read(ObjPermissao, Codigo, CodigoU, loginU);
end;

end.
