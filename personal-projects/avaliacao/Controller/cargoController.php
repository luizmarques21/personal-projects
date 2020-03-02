<?php

/**
 * Class cargoController
 * @version 1.1.0
 */
class cargoController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * cargoController constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementacao do DC
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
	 * @since 1.1.0 - Removida chamada ao metodo chamaCabecalho
	 */
	public function index(): void {
		$aCargos = (new cargoDAO())->findAll();
		$this->oView->setTitulo('Cargos');
		$this->oView->adicionaVariavel('aCargos', $aCargos);
		$this->oView->exibeTemplate('cargos/listarCargos.php', 'cabecalho.php');
	}
	
	/**
	 * Exibe a tela de cadastro
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removida chamado ao metodo chamaCabecalho
	 */
	public function cadastrar(): void {
		$this->oView->setTitulo('Criar novo cargo');
		$this->oView->exibeTemplate('cargos/inserirCargo.php', 'cabecalho.php');
	}
	
	/**
	 * Exclui um cargo
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Remoção de verificação de usuario ativo
	 */
	public function excluir(): void {
		$oCargo = (new cargoDAO())->findByID($_GET['id']);
		$oCargo->deleteCargo();
		$this->oSessao->setMensagem('Cargo excluido com sucesso');
		header("Location: " . WEBROOT . "cargo/");
	}
	
	/**
	 * Exibe a tela de edição
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removida chamada ao metodo chamaCabecalho
	 */
	public function editar(): void {
		$oCargo = (new cargoDAO())->findByID($_GET['id']);
		$this->oView->setTitulo('Editar cargo');
		$this->oView->adicionaVariavel('oCargo', $oCargo);
		$this->oView->exibeTemplate('cargos/editarCargo.php', 'cabecalho.php');
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
	public function postCadastra(): void {
		$oCargo = new Cargo($_POST['nome_cargo']);
		$oCargo->saveCargo();
		$this->oSessao->setMensagem('Cargo cadastrado com sucesso');
		header("Location: " . WEBROOT . "cargo/");
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
	public function postEdita(): void {
		$oCargo = new Cargo($_POST['nome_cargo']);
		$oCargo->replaceCargo($_POST['id']);
		$this->oSessao->setMensagem('Cargo atualizado com sucesso');
		header("Location: " . WEBROOT . "cargo/");
	}
	
}