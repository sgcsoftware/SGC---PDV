unit MiniSoft.Controller.Nfce;

interface

uses MiniSoft.Model.Nfce;
     type
     TNfceController = class
       private
       public
       procedure Inserir(ObjNfce : TNfceModel);
       constructor create;
       destructor destroy; override;
     end;
implementation

{ TNfceController }

constructor TNfceController.create;
begin

end;

destructor TNfceController.destroy;
begin

  inherited;
end;

procedure TNfceController.Inserir(ObjNfce: TNfceModel);
begin
ObjNfce.Insert(ObjNfce);
end;

end.
