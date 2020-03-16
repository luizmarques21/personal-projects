<?php

/**
 * Class dependenteController
 * @version 1.2.0
 */
class dependenteController {
	
	private $oView;
	private $oGlobais;
	
	/**
	 * dependenteController constructor.
	 * @since 1.0.0 - Definição de versionamento da classe
	 * @since 1.1.0 - Implementação da classe Globals
	 * @since 1.2.0 - Removida checagem de usuario ativo
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
	 */
	public function index(): void {
		$aDependentes = (new dependenteDAO())->findAll();
		$this->oView->adicionaVariavel('aDependentes', $aDependentes);
		$this->oView->setTitulo('Dependentes');
		$this->oView->exibeTemplate('dependentes/listarDependente.php', 'cabecalho.php');
	}
	
	/**
	 * Exclui um dependente
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementação do objeto Globais
	 */
	public function excluir(): void {
		$iDependenteID = $this->oGlobais->get('id');
		$oDependente = (new dependenteDAO())->findByID($iDependenteID);
		$oDependente->deleteDependente();
		Sessao::setMensagem('Dependente excluido com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "dependente/");
	}
	
	/**
	 * Exibe a tela de cadastro de dependente
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function cadastrar(): void {
		$this->oView->setTitulo('Cadastrar novo dependente');
		$this->oView->exibeTemplate('dependentes/inserirDependente.php', 'cabecalho.php');
	}
	
	/**
	 * Exibe a tela de edição de dependente
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementação do objeto Globais
	 */
	public function editar(): void {
		$iDependenteID = $this->oGlobais->get('id');
		$oDependente = (new dependenteDAO())->findByID($iDependenteID);
		$this->oView->setTitulo('Editar dependente');
		$this->oView->adicionaVariavel('oDependente', $oDependente);
		$this->oView->exibeTemplate('dependentes/editarDependente.php', 'cabecalho.php');
	}
	
	/**
	 * Efetua a persistencia dos dados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementação do objeto Globals
	 */
	public function postCadastra(): void {
		$oDependente = new Dependente(
			$this->oGlobais->post('nome_dependente'),
			$this->oGlobais->post('data_nascimento_dependente'),
			$this->oGlobais->post('parentesco_dependente')
		);
		$mFiliadoID = $this->oGlobais->post('filiado');
		$oDependente->setFiliado($mFiliadoID);
		$oDependente->saveDependente();
		Sessao::setMensagem('Dependente cadastrado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "dependente/");
	}
	
	/**
	 * Atualiza os dados persistidos com os novos dados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementação do objeto Globals
	 */
	public function postEdita(): void {
		$oDependente = new Dependente(
			$this->oGlobais->post('nome_dependente'),
			$this->oGlobais->post('data_nascimento_dependente'),
			$this->oGlobais->post('parentesco_dependente')
		);
		$mFiliadoID = $this->oGlobais->post('filiado');
		$oDependente->setFiliado($mFiliadoID);
		$mDependenteID = $this->oGlobais->post('id');
		$oDependente->replaceDependente($mDependenteID);
		Sessao::setMensagem('Dependente atualizado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "dependente/");
	}
	
}