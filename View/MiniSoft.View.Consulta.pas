unit MiniSoft.View.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.ComCtrls, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtDlgs, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  MiniSoft.Funcoes, MiniSoft.Controller.Produtos, MiniSoft.Model.Produtos,
  Conexao, inifiles, uDWConstsData, uRESTDWPoolerDB, Vcl.Buttons;

type
  TfrmConsulta = class(TForm)
    FDCupom: TFDQuery;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    edt_pesquisa: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel9: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    lb_NVenda: TLabel;
    lb_NumeroVenda: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Image1: TImage;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    Panel15: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Edit2: TEdit;
    Panel21: TPanel;
    Panel22: TPanel;
    PopupMenu1: TPopupMenu;
    NFCe1: TMenuItem;
    ConsultaStatusSefaz1: TMenuItem;
    SelecionarImpressora1: TMenuItem;
    Produtos1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    FDQuery1: TFDQuery;
    DSProd: TDataSource;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    codigoProd: TLabel;
    FDProd: TFDQuery;
    SpeedButton2: TSpeedButton;
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edt_pesquisaChange(Sender: TObject);
    procedure edt_pesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel9Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaImagem;
  public
    { Public declarations }
    procedure selecionaProduto(Codigo : String);
    procedure AlteraProduto;

  end;

var
  frmConsulta: TfrmConsulta;
  NomeProduto, ImagemProduto : String;
implementation

{$R *.dfm}

procedure TfrmConsulta.AlteraProduto;
var
q1 : TFDQuery;
f : TFuncoesGerais;
begin
  q1 := TFDQuery.Create(nil);
  q1.Connection := dm.Con;

   f := TFuncoesGerais.create;
   try
     with q1 do
     begin
       close;
       sql.Clear;
       sql.Add('update TB_PRODUTOS set');
       sql.Add('PRO_QUANTIDADE = :PRO_QUANTIDADE');
       sql.Add(',PRO_PRECOVENDA = :PRO_PRECOVENDA');
       sql.Add('where pro_codigo = :pro_codigo');
       ParamByName('pro_codigo').AsInteger := strtoint(codigoProd.Caption);
       ParamByName('PRO_QUANTIDADE').AsFloat := f.RetDec(edit1.Text);
       ParamByName('PRO_PRECOVENDA').AsFloat := f.RetDec(edit2.Text);
       ExecSQL;
     end;
   finally
     FreeandNil(q1);
     FreeandNil(f);
   end;

end;

procedure TfrmConsulta.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TfrmConsulta.CarregaImagem;
var
caminho : String;
ler : TiniFile;
begin

    try
     ler := TIniFile.Create(ExtractFilePath(Application.exeName) + '\conf.ini');
    if ler.ReadString('imagem','CaminhoProdutos  ','') = ''  then
       begin
        if ImagemProduto <> '' then
        begin
        OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\img\Produtos\'+ImagemProduto  ;
        Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        end
        else
        begin
        OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Logo.png';
        Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        end

       end
       else
       begin
        if ImagemProduto <> '' then
        begin
         Caminho := ler.ReadString('imagem','CaminhoProdutos  ','') ;
         OpenPictureDialog1.FileName := Caminho+'\'+ImagemProduto ;
         Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        end
        else
        begin
         OpenPictureDialog1.FileName := ExtractFilePath(Application.ExeName) + '\Logo.png';
         Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
        end;
       end
    except

    end;




end;


procedure TfrmConsulta.DBGrid2DblClick(Sender: TObject);
begin
 selecionaProduto(FDProd.FieldByName('pro_codigo').AsString);
end;

procedure TfrmConsulta.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
   selecionaProduto(FDProd.FieldByName('pro_codigo').AsString);
end;

procedure TfrmConsulta.Edit1Exit(Sender: TObject);
var
f : TFuncoesGerais;
begin
   f := TFuncoesGerais.create;
   try
     edit1.Text := formatfloat('###,###,##0.000', f.RetDec(edit1.Text));
     AlteraProduto;
   finally
     FreeandNil(f);
   end;
end;

procedure TfrmConsulta.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_RETURN then
   edt_pesquisa.SetFocus;
end;

procedure TfrmConsulta.Edit2Exit(Sender: TObject);
var
f : TFuncoesGerais;
begin
   f := TFuncoesGerais.create;
   try
     edit2.Text := formatfloat('###,###,##0.00', f.RetDec(edit2.Text));
     AlteraProduto;
   finally
     FreeandNil(f);
   end;
end;

procedure TfrmConsulta.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_RETURN then
   edit1.SetFocus;
end;

procedure TfrmConsulta.edt_pesquisaChange(Sender: TObject);
var
funcoes : TFuncoesGerais;
p : String;
begin
funcoes := TFuncoesGerais.create;
panel9.Caption := edt_pesquisa.Text;


 try
   p := Copy(edt_pesquisa.Text , Pos('*', edt_pesquisa.Text) + 1, Length(edt_pesquisa.Text));

   Timer1.Enabled := false;
 if edt_pesquisa.Text = '' then
   begin
     dbgrid2.Visible := false;
      panel9.Caption := 'Passe o Leitor!';
   end
   else
   begin
     dbgrid2.Visible := true;
     dbgrid2.Width := Screen.Width;
     dbgrid2.Height := panel8.Height;
     if funcoes.SoLetra(p) = true then
        begin
           with FDProd do
           begin
             close;
             sql.Clear;
             sql.Add('select pro_codigo,PRO_REFERENCIA, pro_codigobarra, pro_descricao, pro_unidade, pro_quantidade, pro_precovenda, PRO_QUANTIDADEREAL from tb_produtos where pro_codigo like'+QuotedStr('%'+p+'%'));
             open;
             if IsEmpty then
             begin
               with FDProd do
               begin
                close;
                sql.Clear;
                sql.Add('select pro_codigo,PRO_REFERENCIA, pro_codigobarra, pro_descricao, pro_unidade, pro_quantidade, pro_precovenda, PRO_QUANTIDADEREAL from tb_produtos where pro_codigobarra ='+QuotedStr(p));
                open;
                end;
             end;
           end;
        end
        else
         begin
          with FDProd do
           begin
             close;
             sql.Clear;
             sql.Add('select pro_codigo,PRO_REFERENCIA, pro_codigobarra, pro_descricao, pro_unidade, pro_quantidade, pro_precovenda, PRO_QUANTIDADEREAL from tb_produtos where pro_descricao like'+QuotedStr('%'+p+'%'));
             sql.Add('order by pro_descricao');
             open;
             if IsEmpty then
             begin
             close;
             sql.Clear;
             sql.Add('select pro_codigo,PRO_REFERENCIA, pro_codigobarra, pro_descricao, pro_unidade, pro_quantidade, pro_precovenda, PRO_QUANTIDADEREAL from tb_produtos where PRO_REFERENCIA like'+QuotedStr('%'+p+'%'));
             sql.Add('order by pro_descricao');
             open;
             end;
          end;
        end;
        TNumericField(FDProd.FieldByName('pro_codigo')).DisplayFormat := '00000';
        TNumericField(FDProd.FieldByName('pro_precovenda')).DisplayFormat := '###,###,##0.00';
        TNumericField(FDProd.FieldByName('pro_quantidade')).DisplayFormat := '###,###,##0.00';
        TNumericField(FDProd.FieldByName('PRO_QUANTIDADEREAL')).DisplayFormat := '###,###,##0.00';
   end;

  finally
  FreeandNil(funcoes);

 end;


end;


procedure TfrmConsulta.edt_pesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = VK_DOWN) and (DBGrid2.Visible = True) then
 begin
  dbgrid2.SetFocus;
  DBGrid2.SelectedIndex := DBGrid2.SelectedIndex  ;
 end;



  if key = vk_return then
   begin
    try
     if edt_pesquisa.Text = '' then
     begin
       abort;
     end;
     selecionaProduto(edt_pesquisa.Text);
    finally

     DBGrid2.Visible := false;

    end;

   end;
end;

procedure TfrmConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_INSERT then
     edit2.SetFocus;
end;

procedure TfrmConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  begin
    Key := #0; // Suprime o som padrão
     end;
  if key = #27 then
  begin
    Close;

  end;
end;

procedure TfrmConsulta.Panel9Click(Sender: TObject);
begin
edt_pesquisa.SetFocus;
end;

procedure TfrmConsulta.selecionaProduto(Codigo: String);
var
ProdM : TProdutoModel;
ProdC : TProdutoController;
begin
    NomeProduto := '';
    ProdM := TProdutoModel.create;
    ProdC := TProdutoController.create;
    try
      ProdC.LerConsulta(ProdM,Codigo);
      with ProdM do
      begin
        NomeProduto := PRO_DESCRICAO;
        edit2.Text := formatfloat('###,###,##0.000', PRO_PRECOVENDA);
        edit1.Text := formatfloat('###,###,##0.00', PRO_QUANTIDADE);
        codigoProd.Caption := inttostr(PRO_CODIGO);
        ImagemProduto := PRO_IMAGEMPROD;
        CarregaImagem;
      end;
    finally
      FreeandNil(ProdM);
      FreeandNil(ProdC);
      dbgrid2.Visible := false;
      edt_pesquisa.Clear;
      edt_pesquisa.SetFocus;
      Panel9.Caption := NomeProduto;
    end;
end;



procedure TfrmConsulta.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

end.
