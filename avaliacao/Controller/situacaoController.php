<?php

/**
 * Class situacaoController
 * @version 1.0.0
 */
class situacaoController {
	
	private $oSessao;
	
	/**
	 * situacaoController constructor.
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
		$sTitulo = 'Situações';
		$aSituacoes = (new situacaoDAO())->findAll();
		include __DIR__ . '/../View/situacoes/listarSituacoes.php';
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
		$sTitulo = 'Criar nova Situacao';
		include __DIR__ . '/../View/situacoes/inserirSituacao.php';
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
		$oSituacao = (new situacaoDAO())->findByID($_GET['id']);
		$oSituacao->deleteSituacao();
		$this->oSessao->setMensagem('Situacao excluida com sucesso');
		header("Location: ../../situacao/");
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
		$oSituacao = (new situacaoDAO())->findByID($_GET['id']);
		$sTitulo = 'Editar Situacao';
		include __DIR__ . '/../View/situacoes/editarSituacao.php';
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
		$oSituacao = new Situacao($_POST['nome_situacao']);
		$oSituacao->saveSituacao();
		$this->oSessao->setMensagem('Situacao cadastrada com sucesso');
		header("Location: ../../situacao/");
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
		$oSituacao = new Situacao($_POST['nome_situacao']);
		$oSituacao->replaceSituacao($_POST['id']);
		$this->oSessao->setMensagem('Situação atualizada com sucesso');
		header("Location: ../../situacao/");
	}
	
}