unit MiniSoft.Controller.ParcelasAReceber;


interface

uses Minisoft.Model.ParcelasAReceber;
     type
     TContasAReceberController = class
       private
       public
       procedure Inserir(ObjContasAReceberModel : TContasAReceberModel);
       procedure Alterar(ObjContasAReceberModel : TContasAReceberModel);
       procedure Deletar(ObjContasAReceberModel : TContasAReceberModel);
       procedure ler  (ObjContasAReceberModel : TContasAReceberModel ; Codigo : Integer);
       constructor create;
       destructor destroy; override;
     end;

implementation

{ TContasAReceberController }

procedure TContasAReceberController.Alterar(
  ObjContasAReceberModel: TContasAReceberModel);
begin
ObjContasAReceberModel.Update(ObjContasAReceberModel);
end;

constructor TContasAReceberController.create;
begin

end;

procedure TContasAReceberController.Deletar(
  ObjContasAReceberModel: TContasAReceberModel);
begin
ObjContasAReceberModel.Delete(ObjContasAReceberModel);
end;

destructor TContasAReceberController.destroy;
begin

  inherited;
end;

procedure TContasAReceberController.Inserir(
  ObjContasAReceberModel: TContasAReceberModel);
begin
ObjContasAReceberModel.Insert(ObjContasAReceberModel);
end;

procedure TContasAReceberController.ler(
  ObjContasAReceberModel: TContasAReceberModel; Codigo: Integer);
begin
ObjContasAReceberModel.Red(ObjContasAReceberModel, Codigo);
end;

end.
