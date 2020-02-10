<?php

/**
 * Class cargoController
 * @version 1.0.0
 */
class cargoController {
	
	private $oSessao;
	
	/**
	 * cargoController constructor.
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
		$sTitulo = 'Cargos';
		$aCargos = (new cargoDAO())->findAll();
		include __DIR__ . '/../View/cargos/listarCargos.php';
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
		$sTitulo = 'Criar novo cargo';
		include __DIR__ . '/../View/cargos/inserirCargo.php';
	}
	
	/**
	 * Exclui um cargo
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function excluir(): void {
		$oCargo = (new cargoDAO())->findByID($_GET['id']);
		$oCargo->deleteCargo();
		$this->oSessao->setMensagem('Cargo excluido com sucesso');
		header("Location: ../../cargo/");
	}
	
	/**
	 * Exibe a tela de edição
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function editar(): void {
		$oCargo = (new cargoDAO())->findByID($_GET['id']);
		$sTitulo = 'Editar Cargo';
		include __DIR__ . '/../View/cargos/editarCargo.php';
	}
	
	/**
	 * Efetua o cadastro dos dados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function postCadastra(): void {
		$oCargo = new Cargo($_POST['nome_cargo']);
		$oCargo->saveCargo();
		$this->oSessao->setMensagem('Cargo cadastrado com sucesso');
		header("Location: ../../cargo/");
	}
	
	/**
	 * Atualiza os dados cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function postEdita(): void {
		$oCargo = new Cargo($_POST['nome_cargo']);
		$oCargo->replaceCargo($_POST['id']);
		$this->oSessao->setMensagem('Cargo atualizado com sucesso');
		header("Location: ../../cargo/");
	}
	
}