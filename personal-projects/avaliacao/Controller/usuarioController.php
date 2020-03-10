<?php

/**
 * Class usuarioController
 * @version 1.4.0
 */
class usuarioController {
	
	private $oSessao;
	private $oView;
	private $oGlobais;
	
	/**
	 * usuarioController constructor.
	 * @since 1.0.0 - Definição de versionamento da classe
	 * @since 1.1.0 - Implementado uso do DC
	 * @since 1.2.0 - Implementação do objeto Globais
	 * @since 1.3.0 - Removida checagem de usuario ativo
	 */
	public function __construct(Globals $oGlobais) {
		$this->oSessao = DependencyContainer::getSessao();
		$this->oView =  DependencyContainer::getView();
		$this->oGlobais = $oGlobais;
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
	 * @since 1.2.0 - Remoção do objeto Sessao
	 * @since 1.3.0 - Removida checagem de permissao de usuario
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function index(): void {
		$aUsuarios = (new usuarioDAO())->findAll();
		$this->oView->setTitulo('Usuarios');
		$this->oView->adicionaVariavel('aUsuarios', $aUsuarios);
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
	 * @since 1.2.0 - Remoção do objeto Sessao
	 * @since 1.3.0 - Removida checagem de permissao de ususario
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function cadastrar(): void {
		$this->oView->setTitulo('Criar novo usuario');
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
	 * @since 1.2.0 - Remoção do objeto Sessao e implementação do objeto Globais
	 * @since 1.3.0 - Removida checagem de permissao de usuario
	 * @since 1.4.0 - Implementada logica para verificar se o usuario que vai ser excluido
	 * é o mesmo que está logado no sistema
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function excluir(): void {
		try {
			$oUsuario = (new usuarioDAO())->findByID($this->oGlobais->get('id'));
			$oUsuario->isUsuarioAtivo($this->oSessao->getUsuarioLogado());
			$oUsuario->deleteUsuario();
			Sessao::setMensagem('Usuario excluido com sucesso');
		} catch (Exception $oException) {
			Sessao::setMensagem($oException->getMessage());
		} finally {
			header("Location: " . CAMINHO_PADRAO_WEB . "usuario/");
		}
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
	 * @since 1.2.0 - Remoção do objeto Sessao e implementação do objeto Globais
	 * @since 1.3.0 - Removida checagem de permissao de usuario
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function editar(): void {
		$oUsuario = (new usuarioDAO())->findByID($this->oGlobais->get('id'));
		$this->oView->setTitulo('Editar Usuario');
		$this->oView->adicionaVariavel('oUsuario', $oUsuario);
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
	 * @since 1.2.0 - Remoção do objeto Sessao e implementação do objeto Globais
	 */
	public function postCadastrar(): void {
		$oUsuario = new Usuario(
			$this->oGlobais->post('login'),
			$this->oGlobais->post('senha'),
			$this->oGlobais->post('tipo_usuario')
		);
		$oUsuario->saveUsuario();
		Sessao::setMensagem('Usuario cadastrado com sucesso!');
		header("Location: " . CAMINHO_PADRAO_WEB . "usuario/");
	}
	
	/**
	 * Recebe os dados do usuario e efetua a atualização
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.2.0 - Remoção do objeto Sessao e implementação do objeto Globais
	 */
	public function postEditar(): void {
		$oUsuario = new Usuario(
			$this->oGlobais->post('login'),
			$this->oGlobais->post('senha'),
			$this->oGlobais->post('tipo_usuario')
		);
		$oUsuario->replaceUsuario($this->oGlobais->post('id'));
		Sessao::setMensagem('Usuario atualizado com sucesso!');
		header("Location: " . CAMINHO_PADRAO_WEB . "usuario/");
	}
	
}