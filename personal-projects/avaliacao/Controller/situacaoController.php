<?php

/**
 * Class situacaoController
 * @version 1.1.0
 */
class situacaoController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * situacaoController constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementação do DC
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
	 * @since 1.1.0 - Remoção do metodo chamaCabecalho
	 */
	public function index(): void {
		$aSituacoes = (new situacaoDAO())->findAll();
		$this->oView->setTitulo('Situações');
		$this->oView->adicionaVariavel('aSituacoes', $aSituacoes);
		$this->oView->exibeTemplate('situacoes/listarSituacoes.php', 'cabecalho.php');
	}
	
	/**
	 * Exibe a tela de cadastro
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Remocao do metodo chamaCabecalho
	 */
	public function cadastrar(): void {
		$this->oView->setTitulo('Criar nova Situação');
		$this->oView->exibeTemplate('situacoes/inserirSituacao.php', 'cabecalho.php');
	}
	
	/**
	 * Exclui uma situacao
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Remoção de verificação de usuario ativo
	 */
	public function excluir(): void {
		$oSituacao = (new situacaoDAO())->findByID($_GET['id']);
		$oSituacao->deleteSituacao();
		$this->oSessao->setMensagem('Situacao excluida com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "situacao/");
	}
	
	/**
	 * Exibe a tela de edição
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Remoção do metodo chamaCabecalho
	 */
	public function editar(): void {
		$oSituacao = (new situacaoDAO())->findByID($_GET['id']);
		$this->oView->setTitulo('Editar Situacao');
		$this->oView->adicionaVariavel('oSituacao', $oSituacao);
		$this->oView->exibeTemplate('situacoes/editarSituacao.php', 'cabecalho.php');
	}
	
	/**
	 * Efetua o cadastro dos dados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Alterado parametro do header
	 */
	public function postCadastra(): void {
		$oSituacao = new Situacao($_POST['nome_situacao']);
		$oSituacao->saveSituacao();
		$this->oSessao->setMensagem('Situacao cadastrada com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "situacao/");
	}
	
	/**
	 * Atualiza os dados cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Alterado parametro do header
	 */
	public function postEdita(): void {
		$oSituacao = new Situacao($_POST['nome_situacao']);
		$oSituacao->replaceSituacao($_POST['id']);
		$this->oSessao->setMensagem('Situação atualizada com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "situacao/");
	}
	
}