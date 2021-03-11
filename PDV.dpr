program PDV;

uses
  Vcl.Forms,
  Windows,
  MiniSoft.View.Principal in 'View\MiniSoft.View.Principal.pas' {frmPrincipal},
  MiniSoft.View.Finalizar in 'View\MiniSoft.View.Finalizar.pas' {frmFinalizar},
  Conexao in 'Conexao\Conexao.pas' {Dm: TDataModule},
  MiniSoft.Funcoes in 'Funcoes\MiniSoft.Funcoes.pas',
  MiniSoft.Model.NfceItens in 'Model\MiniSoft.Model.NfceItens.pas',
  MiniSoft.Controller.NfceItens in 'Controller\MiniSoft.Controller.NfceItens.pas',
  MiniSoft.View.Login in 'View\MiniSoft.View.Login.pas' {frmLogin},
  MiniSoft.Model.Usuarios in 'Model\MiniSoft.Model.Usuarios.pas',
  MiniSoft.Model.Sentinela in 'Model\MiniSoft.Model.Sentinela.pas',
  MiniSoft.Controller.Usuarios in 'Controller\MiniSoft.Controller.Usuarios.pas',
  MiniSoft.Model.Permissao in 'Model\MiniSoft.Model.Permissao.pas',
  MiniSoft.Controller.Permissao in 'Controller\MiniSoft.Controller.Permissao.pas',
  MiniSoft.Model.Principal in 'Model\MiniSoft.Model.Principal.pas',
  MiniSoft.Model.Nfce in 'Model\MiniSoft.Model.Nfce.pas',
  MiniSoft.Controller.Nfce in 'Controller\MiniSoft.Controller.Nfce.pas',
  MiniSoft.Model.Produtos in 'Model\MiniSoft.Model.Produtos.pas',
  MiniSoft.Controller.Produtos in 'Controller\MiniSoft.Controller.Produtos.pas',
  MiniSoft.View.AlteraProduto in 'View\MiniSoft.View.AlteraProduto.pas' {frmAlteraProduto},
  MiniSoft.View.Produtos in 'View\MiniSoft.View.Produtos.pas' {frmProdutos},
  MiniSoft.View.NFCe in 'View\MiniSoft.View.NFCe.pas' {frmNFCe},
  MiniSoft.Model.HistoricoDeProduto in 'Model\MiniSoft.Model.HistoricoDeProduto.pas',
  MiniSoft.Controller.HistoricoDeProduto in 'Controller\MiniSoft.Controller.HistoricoDeProduto.pas',
  MiniSoft.View.ParcelasCrediario in 'View\MiniSoft.View.ParcelasCrediario.pas' {frmParcelasCrediario},
  MiniSoft.Model.ParcelasVendas in 'Model\MiniSoft.Model.ParcelasVendas.pas',
  MiniSoft.Controller.ParcelasVendas in 'Controller\MiniSoft.Controller.ParcelasVendas.pas',
  MiniSoft.View.Prevenda in 'View\MiniSoft.View.Prevenda.pas' {frmPrevenda},
  MiniSoft.Model.MovimentacaoDeVendas in 'Model\MiniSoft.Model.MovimentacaoDeVendas.pas',
  MiniSoft.Controller.MovimentacaoDeVendas in 'Controller\MiniSoft.Controller.MovimentacaoDeVendas.pas',
  MiniSoft.Model.ClientesContaAPagar in 'Model\MiniSoft.Model.ClientesContaAPagar.pas',
  MiniSoft.Controller.ClientesContaAPagar in 'Controller\MiniSoft.Controller.ClientesContaAPagar.pas',
  MiniSoft.Model.ParcelasAReceber in 'Model\MiniSoft.Model.ParcelasAReceber.pas',
  MiniSoft.Controller.ParcelasAReceber in 'Controller\MiniSoft.Controller.ParcelasAReceber.pas',
  MiniSoft.Model.Caixa in 'Model\MiniSoft.Model.Caixa.pas',
  MiniSoft.Controller.Caixa in 'Controller\MiniSoft.Controller.Caixa.pas',
  MiniSoft.Model.PlanoDeConta in 'Model\MiniSoft.Model.PlanoDeConta.pas',
  MiniSoft.Controller.PlanoDeConta in 'Controller\MiniSoft.Controller.PlanoDeConta.pas',
  MiniSoft.View.Consulta in 'View\MiniSoft.View.Consulta.pas' {frmConsulta},
  MiniSoft.View.ParcelasCheque in 'View\MiniSoft.View.ParcelasCheque.pas' {frmParcelamentoCheque},
  MiniSoft.Atualiza in 'View\MiniSoft.Atualiza.pas' {frmAtualiza},
  MiniSoft.View.InutilizaNFCe in 'View\MiniSoft.View.InutilizaNFCe.pas' {frmInutilizaNFCE},
  MiniSoft.View.Aparencia in 'View\MiniSoft.View.Aparencia.pas' {frmApresentacao},
  MiniSoft.Model.ABREFECHACAIXA in 'Model\MiniSoft.Model.ABREFECHACAIXA.pas',
  MiniSoft.View.AberturaDeCaixa in 'View\MiniSoft.View.AberturaDeCaixa.pas' {frmAberturaDeCaixa},
  MiniSoft.Controller.ABREFECHACAIXA in 'Controller\MiniSoft.Controller.ABREFECHACAIXA.pas',
  MiniSoft.View.FechaCaixa in 'View\MiniSoft.View.FechaCaixa.pas' {frmAbreFechaCaixa},
  Minisoft.Model.Comissao in 'Model\Minisoft.Model.Comissao.pas',
  Minisoft.Controllerl.Comissao in 'Controller\Minisoft.Controllerl.Comissao.pas',
  MiniSoft.View.IdentificaVendedor in 'View\MiniSoft.View.IdentificaVendedor.pas' {frmIdentificaVendedor},
  MiniSoft.View.SenhaAdmin in 'View\MiniSoft.View.SenhaAdmin.pas' {frmSenhaAdmin},
  MiniSoft.View.RelatoriodeVendas in 'View\MiniSoft.View.RelatoriodeVendas.pas' {FrmRelatorioDeVendas},
  ConfigFile.Model in 'Model\ConfigFile.Model.pas',
  Funcao.GenericEnum in 'Model\Funcao.GenericEnum.pas',
  MiniSoft.View.ConfTEF in 'View\MiniSoft.View.ConfTEF.pas' {frmConfTEF},
  MiniSoft.View.OnExibeMenu in 'View\MiniSoft.View.OnExibeMenu.pas' {frmOnExibeMenu},
  MiniSoft.View.onObtemMenu in 'View\MiniSoft.View.onObtemMenu.pas' {frmOnObtemMenu},
  MiniSoft.View.SelecionaImpressora in 'View\MiniSoft.View.SelecionaImpressora.pas' {FrmSelecionaImpressora},
  MiniSoft.View.ProdutosCupom in 'View\MiniSoft.View.ProdutosCupom.pas' {frmProdutoCupom},
  MiniSoft.View.DeletaProduto in 'View\MiniSoft.View.DeletaProduto.pas' {FrmDeletaProduto},
  MiniSoft.View.ResumoDeVendas in 'View\MiniSoft.View.ResumoDeVendas.pas' {FrmResumoDeVendas},
  MiniSoft.View.ConfNFCe in 'View\MiniSoft.View.ConfNFCe.pas' {FrmConfNfe};

{$R *.res}

Var
MutexHandle: THandle;
hwind:HWND;
 begin
 MutexHandle := CreateMutex(nil, TRUE, 'PDV');
 if MutexHandle <> 0 then
 begin
 if GetLastError = ERROR_ALREADY_EXISTS then
 begin
 MessageBox(0, 'Este programa já está em execução!','', mb_IconHand);
 CloseHandle(MutexHandle);
 hwind:=0;
 repeat
 hwind:=Windows.FindWindowEx(0,hwind,'TApplication','My sampleapp');
 until (hwind<>Application.Handle);
  if (hwind<>0) then
 begin
 Windows.ShowWindow(hwind,SW_SHOWNORMAL);
 Windows.SetForegroundWindow(hwind);
 end;
 Halt;
 end
 end;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFrmConfNfe, FrmConfNfe);
  Application.Run;
end.
