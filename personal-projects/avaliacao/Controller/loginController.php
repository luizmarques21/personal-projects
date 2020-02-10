<?php

/**
 * Class loginController
 * @version 1.0.0
 */
class loginController {
	
	private $oSessao;
	
	/**
	 * loginController constructor.
	 * @since 1.0.0
	 */
	public function __construct() {
		$this->oSessao = new Sessao();
	}
	
	/**
	 * Exibe a tela de login
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function index(): void {
		$sTitulo = 'Sindicato dos Trainees - Login';
		include __DIR__ . '/../View/loginForm.php';
	}
	
	/**
	 * Exibe a pagina inicial
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function home(): void {
		$sTitulo = 'Sindicato dos trainees - Home';
		$sLogado = $this->oSessao->getUsuarioLogado();
		include __DIR__ . '/../View/home.php';
	}
	
	/**
	 * Verifica se o login informado é valido
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function validaLogin(): void {
		$oLogin = new Login($_POST['usuario'], $_POST['senha']);
		$oUsuario = (new usuarioDAO())->findByUsername($oLogin->getUsuario());
		$bSenhaValida = $oUsuario->validaSenha($oLogin->getSenha());
		if (!is_null($oUsuario->getLogin()) && $bSenhaValida == true) {
			$this->oSessao->registraUsuarioLogado($oUsuario->getLogin(), $oUsuario->getTipo());
			$this->oSessao->clearMensagem();
			header("Location: home");
		} else {
			$this->oSessao->setMensagem('Usuario e/ou senha invalidos');
			header("Location: ../");
		}
	}
	
}
