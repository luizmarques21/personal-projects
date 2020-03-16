<?php

/**
 * Class situacaoController
 * @version 1.3.0
 */
class situacaoController {
	
	private $oView;
	private $oGlobais;
	
	/**
	 * situacaoController constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementação do DC
	 * @since 1.2.0 - Implementação do objeto Globais e remoção do objeto Sessao
	 * @since 1.3.0 - Removida checagem de usuario ativo
	 */
	public function __construct(Globals $oGlobais) {
		$this->oView = DependencyContainer::getView();
		$this->oGlobais = $oGlobais;
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
	 * @since 1.2.0 - Remoção do objeto Sessao e implementação do objeto Globais
	 */
	public function excluir(): void {
		$oSituacao = (new situacaoDAO())->findByID($this->oGlobais->get('id'));
		$oSituacao->deleteSituacao();
		Sessao::setMensagem('Situacao excluida com sucesso');
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
	 * @since 1.2.0 - Implementação do objeto Globais
	 */
	public function editar(): void {
		$oSituacao = (new situacaoDAO())->findByID($this->oGlobais->get('id'));
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
	 * @since 1.2.0 - Implementação do objeto Globais e remoção do objeto Sessao
	 */
	public function postCadastra(): void {
		$oSituacao = new Situacao($this->oGlobais->post('nome_situacao'));
		$oSituacao->saveSituacao();
		Sessao::setMensagem('Situacao cadastrada com sucesso');
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
	 * @since 1.2.0 - Implementação do objeto Globais e remoção do objeto Sessao
	 */
	public function postEdita(): void {
		$oSituacao = new Situacao($this->oGlobais->post('nome_situacao'));
		$oSituacao->replaceSituacao($this->oGlobais->post('id'));
		Sessao::setMensagem('Situação atualizada com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "situacao/");
	}
	
}