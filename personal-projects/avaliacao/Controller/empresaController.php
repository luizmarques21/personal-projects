<?php

/**
 * Class empresaController
 * @version 1.1.0
 */
class empresaController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * empresaController constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementado o uso do DC
	 */
	public function __construct() {
		$this->oSessao = DependencyContainer::getSessao();
		$this->oView = DependencyContainer::getView();
		DependencyContainer::checaUsuarioAtivo();
	}
	
	/**
	 * Exibe a tela inicial
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removida chamada ao metodo chamaCabecalho e
	 * alterada a verificação de usuario ativo
	 */
	public function index(): void {
		$aEmpresas = (new empresaDAO())->findAll();
		$this->oView->setTitulo('Empresas');
		$this->oView->adicionaVariavel('aEmpresas', $aEmpresas);
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeTemplate('empresas/listarEmpresas.php', 'cabecalho.php');
	}
	
	/**
	 * Exibe a tela de cadastro
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removida chamada ao metodo chamaCabecalho
	 */
	public function cadastrar(): void {
		$this->oView->setTitulo('Criar nova empresa');
		$this->oView->exibeTemplate('empresas/inserirEmpresa.php', 'cabecalho.php');
	}
	
	/**
	 * Exclui um cargo
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removida verificação de usuario ativo
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function excluir(): void {
		$oEmpresa = (new empresaDAO())->findByID($_GET['id']);
		$oEmpresa->deleteEmpresa();
		$this->oSessao->setMensagem('Empresa excluida com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "empresa/");
	}
	
	/**
	 * Exibe a tela de edição
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removida chamada ao metodo chamaCabeçalho
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function editar(): void {
		$oEmpresa = (new empresaDAO())->findByID($_GET['id']);
		$this->oView->setTitulo('Editar empresa');
		$this->oView->adicionaVariavel('oEmpresa', $oEmpresa);
		$this->oView->exibeTemplate('empresas/editarEmpresa.php', 'cabecalho.php');
	}
	
	/**
	 * Efetua o cadastro dos dados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Alterado o parametro do header
	 */
	public function postCadastra() {
		$oEmpresa = new Empresa($_POST['nome_empresa']);
		$oEmpresa->saveEmpresa();
		$this->oSessao->setMensagem('Empresa cadastrada com sucesso');
		header("Location: ". CAMINHO_PADRAO_WEB . "empresa/");
	}
	
	/**
	 * Atualiza os dados cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Alterado o parametro do header
	 */
	public function postEdita() {
		$oEmpresa = new Empresa($_POST['nome_empresa']);
		$oEmpresa->replaceEmpresa($_POST['id']);
		$this->oSessao->setMensagem('Empresa atualizada com sucesso');
		header("Location: ". CAMINHO_PADRAO_WEB . "empresa/");
	}
	
}

