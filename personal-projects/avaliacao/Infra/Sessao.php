<?php

/**
 * Class Sessao
 * @version 1.1.0
 */
class Sessao {
	
	/**
	 * Inicializa a sessão
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function iniciaSessao(): void {
		if (session_status() !== PHP_SESSION_ACTIVE) {
			session_start();
		}
		if (!isset($_SESSION['mensagem']))
			$_SESSION['mensagem'] = '';
		if (!isset($_SESSION['logado']))
			$_SESSION['logado'] = '';
	}
	
	/**
	 * Registra os dados do usuario logado na sessão
	 *
	 * @param string $sNome
	 * @return void
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Metodo renomeado
	 */
	public function registraUsuarioLogado(string $sNome): void {
		$_SESSION['logado'] = $sNome;
	}
	
	/**
	 * Retorna o nome do usuario logado
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Metodo renomeado
	 */
	public function getUsuarioLogado(): string {
		return $_SESSION['logado'];
	}
	
	/**
	 * Limpa os dados da sessão
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Removido redirecionamento de pagina
	 */
	public function deslogaUsuario(): void {
		unset($_SESSION['logado']);
	}
	
	/**
	 * Retorna se há um usuario ativo no sistema e cadastrado na sessão
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Metodo renomeado
	 */
	public function hasUsuarioAtivo(): bool {
		return (strlen($_SESSION['logado']) > 0);
	}
	
	/**
	 * Retorna a mensagem salva na sessão
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Alterado o tipo do metodo
	 */
	public static function getMensagem(): string {
		return $_SESSION['mensagem'];
	}
	
	/**
	 * Define a mensagem a ser salva na sessão
	 *
	 * @param string $sMensagem
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Alterado o tipo do metodo
	 */
	public static function setMensagem(string $sMensagem): void {
		$_SESSION['mensagem'] = $sMensagem;
	}

}
