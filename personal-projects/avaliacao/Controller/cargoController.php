<?php

/**
 * Class cargoController
 * @version 1.3.0
 */
class cargoController {
	
	private $oView;
	private $oGlobais;
	
	/**
	 * cargoController constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementacao do DC
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
	 * @since 1.2.0 - Implementação do objeto Globais e remoção do objeto Sessao
	 */
	public function excluir(): void {
		$oCargo = (new cargoDAO())->findByID($this->oGlobais->get('id'));
		$oCargo->deleteCargo();
		Sessao::setMensagem('Cargo excluido com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "cargo/");
	}
	
	/**
	 * Exibe a tela de edição
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removida chamada ao metodo chamaCabecalho
	 * @since 1.2.0 - Implementação do objeto Globais
	 */
	public function editar(): void {
		$oCargo = (new cargoDAO())->findByID($this->oGlobais->get('id'));
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
	 * @since 1.2.0 - Implementação do objeto Globais e remoção do objeto Sessao
	 */
	public function postCadastra(): void {
		$oCargo = new Cargo($this->oGlobais->post('nome_cargo'));
		$oCargo->saveCargo();
		Sessao::setMensagem('Cargo cadastrado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "cargo/");
	}
	
	/**
	 * Atualiza os dados cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Alterado o parametro do header
	 * @since 1.2.0 - Implementação do objeto Globais e remoção do objeto Sessao
	 */
	public function postEdita(): void {
		$oCargo = new Cargo($this->oGlobais->post('nome_cargo'));
		$oCargo->replaceCargo($this->oGlobais->post('id'));
		Sessao::setMensagem('Cargo atualizado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "cargo/");
	}
	
}