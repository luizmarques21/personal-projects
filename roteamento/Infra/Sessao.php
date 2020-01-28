<?php

/**
 * Class Sessao
 * @version 1.0.0
 */
class Sessao {
	
	/**
	 * Localiza um dado pelo seu ID e tipo
	 *
	 * @param string $sTipo
	 * @param int $iId
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function find(string $sTipo, int $iId): array {
		$this->validarSessao();
		if (array_key_exists($iId, $_SESSION[$sTipo])) {
			$aPessoa = $_SESSION[$sTipo][$iId];
		} else {
			throw new \RuntimeException("Dado não localizado");
		}
		return $aPessoa;
	}
	
	/**
	 * Retorna todos os dados da sessão pelo tipo de dado
	 *
	 * @param string $sTipo
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findAll(string $sTipo): array {
		$this->validarSessao();
		return $_SESSION[$sTipo];
	}
	
	/**
	 * Insere um novo dado na sessão
	 *
	 * @param string $sTipo
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function save(string $sTipo, array $aDados): void {
		$this->validarSessao();
		$_SESSION[$sTipo][] = $aDados;
		echo "<h4>Cadastro realizado!</h4>";
	}
	
	/**
	 * Atualiza um dado na sessão
	 *
	 * @param string $sTipo
	 * @param int $iId
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replace(string $sTipo, int $iId, array $aDados): void {
		$this->validarSessao();
		$_SESSION[$sTipo][$iId] = array_replace($_SESSION[$sTipo][$iId], $aDados);
		echo "<h4>Alteração efetuada com sucesso!</h4>";
	}
	
	/**
	 * Remove um dado da sessão
	 *
	 * @param string $sTipo
	 * @param int $iId
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function delete(string $sTipo, int $iId): void {
		$this->validarSessao();
		if (array_key_exists($iId, $_SESSION[$sTipo])) {
			echo "<h4>Exclusão efetuada com sucesso!</h4>";
			unset($_SESSION[$sTipo][$iId]);
		} else {
			echo "<h4>Dado não localizado!</h4>";
		}
		header("refresh:1;url=../");
	}
	
	/**
	 * Valida se a sessão atual está ativa
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function validarSessao(): void {
		if (session_status() === PHP_SESSION_NONE)
			session_start();
		elseif (session_status() !== PHP_SESSION_ACTIVE)
			throw new \RuntimeException("Não há dados cadastrados");
	}
	
}