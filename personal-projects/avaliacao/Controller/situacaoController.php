<?php

/**
 * Class situacaoController
 * @version 1.0.0
 */
class situacaoController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * situacaoController constructor.
	 * @since 1.0.0
	 * implementação do DC
	 */
	public function __construct() {
		$this->oSessao = DependencyContainer::getSessao(); //new Sessao();
		$this->oView = DependencyContainer::getView(); //new View();
	}
	
	/**
	 * Exibe a tela inicial
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * remoção do metodo chamaCabecalho
	 */
	public function index(): void {
		if ($this->oSessao->hasUsuarioAtivo()) {
			$aSituacoes = (new situacaoDAO())->findAll();
			$this->oView->setTitulo('Situações');
			$this->oView->adicionaVariavel('aSituacoes', $aSituacoes);
			$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
			//$this->chamaCabecalho();
			$this->oView->exibeTemplate('situacoes/listarSituacoes.php', 'cabecalho.php');
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
	 * remocao do metodo chamaCabecalho
	 */
	public function cadastrar(): void {
		if ($this->oSessao->hasUsuarioAtivo()) {
			$this->oView->setTitulo('Criar nova Situação');
			$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
			//$this->chamaCabecalho();
			$this->oView->exibeTemplate('situacoes/inserirSituacao.php', 'cabecalho.php');
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Exclui uma situacao
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function excluir(): void {
		if ($this->oSessao->hasUsuarioAtivo()) {
			$oSituacao = (new situacaoDAO())->findByID($_GET['id']);
			$oSituacao->deleteSituacao();
			$this->oSessao->setMensagem('Situacao excluida com sucesso');
			header("Location: " . WEBROOT . "situacao/");
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
	 * remoção do metodo chamaCabecalho
	 */
	public function editar(): void {
		if ($this->oSessao->hasUsuarioAtivo()) {
			$oSituacao = (new situacaoDAO())->findByID($_GET['id']);
			$this->oView->setTitulo('Editar Situacao');
			$this->oView->adicionaVariavel('oSituacao', $oSituacao);
			$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
			//$this->chamaCabecalho();
			$this->oView->exibeTemplate('situacoes/editarSituacao.php', 'cabecalho.php');
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
	 * alterado parametro do header
	 */
	public function postCadastra(): void {
		$oSituacao = new Situacao($_POST['nome_situacao']);
		$oSituacao->saveSituacao();
		$this->oSessao->setMensagem('Situacao cadastrada com sucesso');
		header("Location: " . WEBROOT . "situacao/");
	}
	
	/**
	 * Atualiza os dados cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * alterado parametro do header
	 */
	public function postEdita(): void {
		$oSituacao = new Situacao($_POST['nome_situacao']);
		$oSituacao->replaceSituacao($_POST['id']);
		$this->oSessao->setMensagem('Situação atualizada com sucesso');
		header("Location: " . WEBROOT . "situacao/");
	}
	
	/*private function chamaCabecalho() {
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeCabecalho('cabecalho.php');
	}*/
	
}