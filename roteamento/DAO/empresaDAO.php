<?php

require_once __DIR__ . '/../vendor/autoload.php';

/**
 * Class empresaDAO
 * @version 1.0.0
 */
class empresaDAO {
	
	/**
	 * empresaDAO constructor.
	 * @since 1.0.0
	 */
	public function __construct() {
		$this->oSessao = new Sessao();
	}
	
	/**
	 * Salva os dados de uma empresa na sessão
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function saveEmpresa(array $aDados): void {
		$this->oSessao->save('empresas', $aDados);
	}
	
	/**
	 * Atualiza os dados de uma empresa na sessão
	 *
	 * @param int $iId
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replaceEmpresa(int $iId, array $aDados): void {
		$this->oSessao->replace('empresas', $iId, $aDados);
	}
	
	/**
	 * Localiza uma empresa na sessão pelo seu id
	 *
	 * @param int $iId
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findEmpresa(int $iId): array {
		return $this->oSessao->find('empresas', $iId);
	}
	
	/**
	 * Localiza todas as empresas salvas na sessão
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findAllEmpresas(): array {
		return $this->oSessao->findAll('empresas');
	}
	
	/**
	 * Remove os dados de uma empresa na sessão
	 *
	 * @param int $iId
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function deleteEmpresa(int $iId): void {
		$this->oSessao->delete('empresas', $iId);
	}
	
}