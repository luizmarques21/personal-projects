<?php

/**
 * Class Sessao
 * @version 1.0.0
 */
class Sessao {
	
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
	public function registraUsuarioLogado(string $sNome, string $sTipo): void {
		$_SESSION['logado']['nome'] = $sNome;
		$_SESSION['logado']['tipo'] = $sTipo;
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
		return $_SESSION['logado']['nome'];
	}
	
	/**
	 * Retorna se o usuario logado é administrador
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function isADM(): bool {
		if ($_SESSION['logado']['tipo'] == 'Administrador')
			return true;
		else
			return false;
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
		header("Location: /login");
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
