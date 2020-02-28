<?php

/**
 * Class usuarioController
 * @version 1.1.0
 */
class usuarioController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * usuarioController constructor.
	 * @since 1.0.0 - Definição de versionamento da classe
	 * @since 1.1.0 - Implementado uso do DC
	 */
	public function __construct() {
		DependencyContainer::checaUsuarioAtivo();
		$this->oSessao = DependencyContainer::getSessao();
		$this->oView =  DependencyContainer::getView();
	}
	
	/**
	 * Exibe a tela inicial
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removido metodo chamaCabecalho e
	 * alterada a verificação do privilegio de usuario
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function index(): void {
		DependencyContainer::checaUsuarioADM();
		$aUsuarios = (new usuarioDAO())->findAll();
		$this->oView->setTitulo('Usuarios');
		$this->oView->adicionaVariavel('aUsuarios', $aUsuarios);
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeTemplate('usuarios/listarUsuarios.php', 'cabecalho.php');
	}
	
	/**
	 * Exibe a tela de cadastro de usuario
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Remocao do metodo chamaCabecalho e
	 * alterada a verificação do privilegio do usuario
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function cadastrar(): void {
		DependencyContainer::checaUsuarioADM();
		$this->oView->setTitulo('Criar novo usuario');
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeTemplate('usuarios/inserirUsuario.php', 'cabecalho.php');
	}
	
	/**
	 * Exclui um usuario
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Alterada a verificação do privilegio do usuario
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function excluir(): void {
		DependencyContainer::checaUsuarioADM();
		$oUsuario = (new usuarioDAO())->findByID($_GET['id']);
		$oUsuario->deleteUsuario();
		$this->oSessao->setMensagem('Usuario excluido com sucesso');
		header("Location: " . WEBROOT . "usuario/");
	}
	
	/**
	 * Exibe a tela de edição do usuario
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removido metodo chamaCabecalho e
	 * alterada a verificação do privilegio do usuario
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function editar(): void {
		DependencyContainer::checaUsuarioADM();
		$oUsuario = (new usuarioDAO())->findByID($_GET['id']);
		$this->oView->setTitulo('Editar Usuario');
		$this->oView->adicionaVariavel('oUsuario', $oUsuario);
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeTemplate('usuarios/editarUsuario.php', 'cabecalho.php');
	}
	
	/**
	 * Efetua o logoff do usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function sair(): void {
		$this->oSessao->deslogaUsuario();
		header("Location: ../login");
	}
	
	/**
	 * Recebe os dados do usuario e efetua o cadastro
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function postCadastrar(): void {
		$oUsuario = new Usuario($_POST['login'], $_POST['senha'], $_POST['tipo_usuario']);
		$oUsuario->saveUsuario();
		$this->oSessao->setMensagem('Usuario cadastrado com sucesso!');
		header("Location: " . WEBROOT . "usuario/");
	}
	
	/**
	 * Recebe os dados do usuario e efetua a atualização
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function postEditar(): void {
		$oUsuario = new Usuario($_POST['login'], $_POST['senha'], $_POST['tipo_usuario']);
		$oUsuario->replaceUsuario($_POST['id']);
		$this->oSessao->setMensagem('Usuario atualizado com sucesso!');
		header("Location: " . WEBROOT . "usuario/");
	}
	
}