<?php

/**
 * Class usuarioController
 * @version 1.0.0
 */
class usuarioController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * usuarioController constructor.
	 * @since 1.0.0
	 */
	public function __construct() {
		$this->oSessao = new Sessao();
		$this->oView =  new View();
	}
	
	/**
	 * Exibe a tela inicial
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function index(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			if (Usuario::isADM($this->oSessao->getUsuarioLogado())) {
				$aUsuarios = (new usuarioDAO())->findAll();
				$this->oView->setTitulo('Usuarios');
				$this->oView->adicionaVariavel('aUsuarios', $aUsuarios);
				$this->chamaCabecalho();
				$this->oView->exibeTemplate('usuarios/listarUsuarios.php');
			} else {
				$this->oSessao->setMensagem('Usuario precisa ter privilegio adminstrativo');
				header("Location: " . WEBROOT . "login/home/");
			}
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Exibe a tela de cadastro de usuario
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function cadastrar(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			if (Usuario::isADM($this->oSessao->getUsuarioLogado())) {
				$this->oView->setTitulo('Criar novo usuario');
				$this->chamaCabecalho();
				$this->oView->exibeTemplate('usuarios/inserirUsuario.php');
			} else {
				$this->oSessao->setMensagem('Usuario precisa ter privilegio adminstrativo');
				header("Location: " . WEBROOT . "login/home/");
			}
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Exclui um usuario
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function excluir(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			if (Usuario::isADM($this->oSessao->getUsuarioLogado())) {
				$oUsuario = (new usuarioDAO())->findByID($_GET['id']);
				$oUsuario->deleteUsuario();
				$this->oSessao->setMensagem('Usuario excluido com sucesso');
				header("Location: " . WEBROOT . "usuario/");
			} else {
				$this->oSessao->setMensagem('Usuario precisa ter privilegio adminstrativo');
				header("Location: " . WEBROOT . "login/home/");
			}
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	/**
	 * Exibe a tela de edição do usuario
	 *
	 * @return void
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function editar(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			if (Usuario::isADM($this->oSessao->getUsuarioLogado())) {
				$oUsuario = (new usuarioDAO())->findByID($_GET['id']);
				$this->oView->setTitulo('Editar Usuario');
				$this->oView->adicionaVariavel('oUsuario', $oUsuario);
				$this->chamaCabecalho();
				$this->oView->exibeTemplate('usuarios/editarUsuario.php');
			} else {
				$this->oSessao->setMensagem('Usuario precisa ter privilegio adminstrativo');
				header("Location: " . WEBROOT . "login/home/");
			}
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
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
	
	private function chamaCabecalho() {
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeCabecalho('cabecalho.php');
	}
	
}