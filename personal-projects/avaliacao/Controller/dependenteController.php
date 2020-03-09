<?php

/**
 * Class dependenteController
 * @version 1.0.0
 */
class dependenteController {
	
	private $oView;
	
	/**
	 * dependenteController constructor.
	 * @since 1.0.0 - Definição de versionamento da classe
	 */
	public function __construct() {
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
	 */
	public function excluir(): void {
		$oDependente = (new dependenteDAO())->findByID($_GET['id']);
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
	 */
	public function editar(): void {
		$oDependente = (new dependenteDAO())->findByID($_GET['id']);
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
	 */
	public function postCadastra(): void {
		$oDependente = new Dependente(
			$_POST['nome_dependente'],
			$_POST['data_nascimento_dependente'],
			$_POST['parentesco_dependente']
		);
		$oDependente->setFiliado($_POST['filiado']);
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
	 */
	public function postEdita(): void {
		$oDependente = new Dependente(
			$_POST['nome_dependente'],
			$_POST['data_nascimento_dependente'],
			$_POST['parentesco_dependente']
		);
		$oDependente->setFiliado($_POST['filiado']);
		$oDependente->replaceDependente($_POST['id']);
		Sessao::setMensagem('Dependente atualizado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "dependente/");
	}
	
}