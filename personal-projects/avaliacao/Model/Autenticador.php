<?php

/**
 * Class Login
 * @version 1.0.0
 */
class Autenticador {
	
	private $sUsuario;
	private $sSenha;
	
	/**
	 * Login constructor.
	 * @param $sUsuario
	 * @param $sSenha
	 * @since 1.0.0
	 */
	public function __construct(string $sUsuario, string $sSenha) {
		$this->sUsuario = $sUsuario;
		$this->sSenha = $sSenha;
	}
	
	/**
	 * Retorna o nome de usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getUsuario(): string {
		return $this->sUsuario;
	}
	
	/**
	 * Retorna a senha de login
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getSenha(): string {
		return $this->sSenha;
	}
	
	/**
	 * Verifica se a senha informada é igual a senha do usuario
	 *
	 * @param string $sSenha
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function validaSenha(string $sSenha): bool {
		return password_verify($sSenha, $this->sSenha);
	}
	
}
