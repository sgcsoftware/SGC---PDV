unit MiniSoft.Controller.PlanoDeConta;


interface

uses Minisoft.Model.PlanoDeConta;
      type
     TPlanoDeContaController = class
       private
       public
       procedure Inserir(ObjPlanoDeConta : TPlanoDeContaModel);
       procedure Alterar(ObjPlanoDeConta : TPlanoDeContaModel);
       procedure Deletar(ObjPlanoDeConta : TPlanoDeContaModel);
       procedure Ler  (ObjPlanoDeConta : TPlanoDeContaModel ; Codigo : Integer);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TPlanoDeContaController }

procedure TPlanoDeContaController.Alterar(ObjPlanoDeConta: TPlanoDeContaModel);
begin
ObjPlanoDeConta.Update(ObjPlanoDeConta);
end;

constructor TPlanoDeContaController.create;
begin

end;

procedure TPlanoDeContaController.Deletar(ObjPlanoDeConta: TPlanoDeContaModel);
begin
ObjPlanoDeConta.Delete(ObjPlanoDeConta);
end;

destructor TPlanoDeContaController.destroy;
begin

  inherited;
end;

procedure TPlanoDeContaController.Inserir(ObjPlanoDeConta: TPlanoDeContaModel);
begin
ObjPlanoDeConta.insert(ObjPlanoDeConta);
end;

procedure TPlanoDeContaController.Ler(ObjPlanoDeConta: TPlanoDeContaModel;
  Codigo: Integer);
begin
 ObjPlanoDeConta.Read(ObjPlanoDeConta, Codigo);
end;

end.
