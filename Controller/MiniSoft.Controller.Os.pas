unit MiniSoft.Controller.Os;

interface

uses MiniSoft.Model.Os;
     type
     TControllerOs = class
       private
       public
       procedure Inserir(ObjOs : TModelOs);
       procedure Alterar(ObjOs : TModelOs);
       procedure Deletar(ObjOs : TModelOs);
       procedure ler  (ObjOs : TModelOs ; Codigo : Integer);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TControllerOs }

procedure TControllerOs.Alterar(ObjOs: TModelOs);
begin
 ObjOs.Update(ObjOs);
end;

constructor TControllerOs.create;
begin

end;

procedure TControllerOs.Deletar(ObjOs: TModelOs);
begin
 ObjOs.Delete(ObjOs);
end;

destructor TControllerOs.destroy;
begin

  inherited;
end;

procedure TControllerOs.Inserir(ObjOs: TModelOs);
begin
  ObjOs.Insert(ObjOs);
end;

procedure TControllerOs.ler(ObjOs: TModelOs; Codigo: Integer);
begin
  ObjOs.Read(ObjOs, Codigo);
end;

end.
