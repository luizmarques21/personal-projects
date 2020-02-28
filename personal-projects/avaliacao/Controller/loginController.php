<?php

/**
 * Class loginController
 * @version 1.0.0
 */
class loginController {
	
	private $oSessao;
	private $oView;
	
	/**
	 * loginController constructor.
	 * @since 1.0.0
	 * implementado o uso do DC
	 */
	public function __construct() {
		$this->oSessao = DependencyContainer::getSessao();
		$this->oView = DependencyContainer::getView();
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
		$this->oView->setTitulo('Sindicato dos Trainees - Login');
		$this->oView->exibeTemplate('loginForm.php');
	}
	
	/**
	 * Exibe a pagina inicial
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * removida chamada a metodo para exibir cabeçalho
	 */
	public function home(): void {
		DependencyContainer::checaUsuarioAtivo();
		$this->oView->setTitulo('Sindicato dos Trainees - Home');
		$sLogado = $this->oSessao->getUsuarioLogado();
		$this->oView->adicionaVariavel('sLogado', $sLogado);
		$this->oView->exibeTemplate('home.php', 'cabecalho.php');
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
		try{
			$oAutenticador = new Autenticador($_POST['usuario'], $_POST['senha']);
			$oUsuario = (new usuarioDAO())->findByUsername($oAutenticador->getUsuario());
			if (!$oAutenticador->validaSenha($oUsuario->getSenha()))
				throw new Exception('Senha invalida');
			$this->oSessao->registraUsuarioLogado($oUsuario->getLogin());
			header("Location: home/");
		} catch(Exception $oEx) {
			$this->oSessao->setMensagem($oEx->getMessage());
			$this->index();
		}
	}
	
}
