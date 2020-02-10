<?php

/**
 * Class empresaController
 * @version 1.0.0
 */
class empresaController {
	
	private $oSessao;
	
	/**
	 * empresaController constructor.
	 * @since 1.0.0
	 */
	public function __construct() {
		$this->oSessao = new Sessao();
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
		$sTitulo = 'Empresas';
		$aEmpresas = (new empresaDAO())->findAll();
		include __DIR__ . '/../View/empresas/listarEmpresas.php';
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
		$sTitulo = 'Criar nova empresa';
		include __DIR__ . '/../View/empresas/inserirEmpresa.php';
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
		$oEmpresa = (new empresaDAO())->findByID($_GET['id']);
		$oEmpresa->deleteEmpresa();
		$this->oSessao->setMensagem('Empresa excluida com sucesso');
		header("Location: ../../empresa/");
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
		$oEmpresa = (new empresaDAO())->findByID($_GET['id']);
		$sTitulo = 'Editar empresa';
		include __DIR__ . '/../View/empresas/editarEmpresa.php';
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
		header("Location: ../../empresa/");
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
	
}

