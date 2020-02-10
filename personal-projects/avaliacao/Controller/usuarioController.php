<?php

/**
 * Class usuarioController
 * @version 1.0.0
 */
class usuarioController {
	
	private $oSessao;
	
	/**
	 * usuarioController constructor.
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
		$sTitulo = 'Usuarios';
		$aUsuarios = (new usuarioDAO())->findAll();
		include __DIR__ . '/../View/usuarios/listarUsuarios.php';
	}
	
	/**
	 * Exibe a tela de cadastro de usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function cadastrar(): void {
		$sTitulo = 'Criar novo usuario';
		include __DIR__ . '/../View/usuarios/inserirUsuario.php';
	}
	
	/**
	 * Exclui um usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function excluir(): void {
		$oUsuario = (new usuarioDAO())->findByID($_GET['id']);
		$oUsuario->deleteUsuario();
		$this->oSessao->setMensagem('Usuario excluido com sucesso');
		header("Location: ../../usuario/");
	}
	
	/**
	 * Exibe a tela de edição do usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function editar(): void {
		$oUsuario = (new usuarioDAO())->findByID($_GET['id']);
		$sTitulo = 'Editar Usuario';
		include __DIR__ . '/../View/usuarios/editarUsuario.php';
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
		header("Location: ../../usuario/");
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
		header("Location: ../../usuario/");
	}
	
}