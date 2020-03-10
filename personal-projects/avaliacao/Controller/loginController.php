<?php

/**
 * Class loginController
 * @version 1.3.0
 */
class loginController {
	
	private $oSessao;
	private $oView;
	private $oGlobais;
	
	/**
	 * loginController constructor.
	 * @param Globals $oGlobais
	 * @since 1.0.0 - Definição de versionamento da classe
	 * @since 1.1.0 - Implementado o uso do DC
	 * @since 1.2.0 - Implementado o uso da classe Globals
	 */
	public function __construct(Globals $oGlobais) {
		$this->oSessao = DependencyContainer::getSessao();
		$this->oView = DependencyContainer::getView();
		$this->oGlobais = $oGlobais;
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
	 * @since 1.1.0 - Removida chamada a metodo para exibir cabeçalho
	 * e adicionada verificação de usuario ativo
	 * @since 1.3.0 - Removida checagem de usuario ativo
	 */
	public function home(): void {
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
	 * @since 1.2.0 - Implementação da classe Globals
	 */
	public function validaLogin(): void {
		try{
			$oAutenticador = new Autenticador(
				$this->oGlobais->post('usuario'),
				$this->oGlobais->post('senha')
			);
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
