<?php

/**
 * Class empresaController
 * @version 1.0.0
 */
class empresaController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * empresaController constructor.
	 * @since 1.0.0
	 */
	public function __construct() {
		$this->oSessao = new Sessao();
		$this->oView = new View();
	}
	
	/**
	 * Exibe a tela inicial
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function index(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			$aEmpresas = (new empresaDAO())->findAll();
			$this->oView->setTitulo('Empresas');
			$this->oView->adicionaVariavel('aEmpresas', $aEmpresas);
			$this->chamaCabecalho();
			$this->oView->exibeTemplate('empresas/listarEmpresas.php');
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Exibe a tela de cadastro
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function cadastrar(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			$this->oView->setTitulo('Criar nova empresa');
			$this->chamaCabecalho();
			$this->oView->exibeTemplate('empresas/inserirEmpresa.php');
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Exclui um cargo
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function excluir(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			$oEmpresa = (new empresaDAO())->findByID($_GET['id']);
			$oEmpresa->deleteEmpresa();
			$this->oSessao->setMensagem('Empresa excluida com sucesso');
			header("Location: " . WEBROOT . "empresa/");
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Exibe a tela de edição
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function editar(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			$oEmpresa = (new empresaDAO())->findByID($_GET['id']);
			$this->oView->setTitulo('Editar empresa');
			$this->oView->adicionaVariavel('oEmpresa', $oEmpresa);
			$this->chamaCabecalho();
			$this->oView->exibeTemplate('empresas/editarEmpresa.php');
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Efetua o cadastro dos dados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function postCadastra() {
		$oEmpresa = new Empresa($_POST['nome_empresa']);
		$oEmpresa->saveEmpresa();
		$this->oSessao->setMensagem('Empresa cadastrada com sucesso');
		header("Location: ". WEBROOT . "empresa/");
	}
	
	/**
	 * Atualiza os dados cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function postEdita() {
		$oEmpresa = new Empresa($_POST['nome_empresa']);
		$oEmpresa->replaceEmpresa($_POST['id']);
		$this->oSessao->setMensagem('Empresa atualizada com sucesso');
		header("Location: ../../empresa/");
	}
	
	private function chamaCabecalho() {
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeCabecalho('cabecalho.php');
	}
	
}

