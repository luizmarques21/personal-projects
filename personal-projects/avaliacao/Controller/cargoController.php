<?php

/**
 * Class cargoController
 * @version 1.0.0
 */
class cargoController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * cargoController constructor.
	 * @since 1.0.0
	 * implementacao do DC
	 */
	public function __construct() {
		$this->oSessao = DependencyContainer::getSessao(); new Sessao();
		$this->oView = DependencyContainer::getView(); new View();
	}
	
	/**
	 * Exibe a tela inicial
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * removida chamada ao metodo chamaCabecalho
	 */
	public function index(): void {
		if ($this->oSessao->hasUsuarioAtivo()) {
			$aCargos = (new cargoDAO())->findAll();
			$this->oView->setTitulo('Cargos');
			$this->oView->adicionaVariavel('aCargos', $aCargos);
			$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
			//$this->chamaCabecalho();
			$this->oView->exibeTemplate('cargos/listarCargos.php', 'cabecalho.php');
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
	 * removida chamado ao metodo chamaCabecalho
	 */
	public function cadastrar(): void {
		if ($this->oSessao->hasUsuarioAtivo()) {
			$this->oView->setTitulo('Criar novo cargo');
			$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
			//$this->chamaCabecalho();
			$this->oView->exibeTemplate('cargos/inserirCargo.php', 'cabecalho.php');
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
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
		if ($this->oSessao->hasUsuarioAtivo()) {
			$oCargo = (new cargoDAO())->findByID($_GET['id']);
			$oCargo->deleteCargo();
			$this->oSessao->setMensagem('Cargo excluido com sucesso');
			header("Location: " . WEBROOT . "cargo/");
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Exibe a tela de edição
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * removida chamada ao metodo chamaCabecalho
	 */
	public function editar(): void {
		if ($this->oSessao->hasUsuarioAtivo()) {
			$oCargo = (new cargoDAO())->findByID($_GET['id']);
			$this->oView->setTitulo('Editar cargo');
			$this->oView->adicionaVariavel('oCargo', $oCargo);
			$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
			//$this->chamaCabecalho();
			$this->oView->exibeTemplate('cargos/editarCargo.php', 'cabecalho.php');
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
	 * alterado o parametro do header
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
	 * alterado o parametro do header
	 */
	public function postEdita(): void {
		$oCargo = new Cargo($_POST['nome_cargo']);
		$oCargo->replaceCargo($_POST['id']);
		$this->oSessao->setMensagem('Cargo atualizado com sucesso');
		header("Location: " . WEBROOT . "cargo/");
	}
	
	/*private function chamaCabecalho() {
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeCabecalho('cabecalho.php');
	}*/
	
}