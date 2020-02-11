<?php

/**
 * Class Sessao
 * @version 1.0.0
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
		if (session_status() !== PHP_SESSION_ACTIVE)
			session_start();
		if (!isset($_SESSION['mensagem']))
			$_SESSION['mensagem'] = '';
		if (!isset($_SESSION['logado']))
			$_SESSION['logado'] = '';
	}
	
	/**
	 * Registra os dados do usuario logado na sessão
	 *
	 * @param $sNome
	 * @param $sTipo
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
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
	 */
	public function deslogaUsuario(): void {
		unset($_SESSION['logado']);
		$this->clearMensagem();
	}
	
	/**
	 * Define qual a mensagem que será exibida ao usuario
	 *
	 * @param string $sMensagem
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function setMensagem(string $sMensagem): void {
		$_SESSION['mensagem'] = $sMensagem;
	}
	
	/**
	 * Retorna a mensagem que será exibida
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getMensagem(): string {
		return $_SESSION['mensagem'];
	}
	
	/**
	 * Limpa a mensagem que está salva na sessão
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function clearMensagem(): void {
		unset($_SESSION['mensagem']);
	}
	
}
