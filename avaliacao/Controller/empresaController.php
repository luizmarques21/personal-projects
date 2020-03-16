<?php

/**
 * Class empresaController
 * @version 1.3.0
 */
class empresaController {
	
	private $oView;
	private $oGlobais;
	
	/**
	 * empresaController constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementado o uso do DC
	 * @since 1.2.0 - Implementação do objeto Globais
	 * @since 1.3.0 - Removida checagem de usuario ativo
	 */
	public function __construct(Globals $oGlobals) {
		$this->oView = DependencyContainer::getView();
		$this->oGlobais = $oGlobals;
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
	 * @since 1.2.0 - Remoção do objeto Sessao
	 */
	public function index(): void {
		$aEmpresas = (new empresaDAO())->findAll();
		$this->oView->setTitulo('Empresas');
		$this->oView->adicionaVariavel('aEmpresas', $aEmpresas);
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
	 * @since 1.2.0 - Implementado o objeto Globais
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function excluir(): void {
		$oEmpresa = (new empresaDAO())->findByID($this->oGlobais->get('id'));
		$oEmpresa->deleteEmpresa();
		Sessao::setMensagem('Empresa excluida com sucesso');
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
	 * @since 1.2.0 - Implementado o objeto Globais
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function editar(): void {
		$oEmpresa = (new empresaDAO())->findByID($this->oGlobais->get('id'));
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
	 * @since 1.2.0 - Removido o objeto Sessao e implementado o objeto Globais
	 */
	public function postCadastra() {
		$oEmpresa = new Empresa($this->oGlobais->post('nome_empresa'));
		$oEmpresa->saveEmpresa();
		Sessao::setMensagem('Empresa cadastrada com sucesso');
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
	 * @since 1.2.0 - Removido o objeto Sessao e implementado o objeto Globais
	 */
	public function postEdita() {
		$oEmpresa = new Empresa($this->oGlobais->post('nome_empresa'));
		$oEmpresa->replaceEmpresa($this->oGlobais->post('id'));
		Sessao::setMensagem('Empresa atualizada com sucesso');
		header("Location: ". CAMINHO_PADRAO_WEB . "empresa/");
	}
	
}

