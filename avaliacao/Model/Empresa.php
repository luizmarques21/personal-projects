<?php

/**
 * Class Empresa
 * @version 1.0.0
 */
class Empresa {
	
	private $iIDEmpresa;
	private $sNomeEmpresa;
	private $oDAO;
	
	/**
	 * Empresa constructor.
	 * @param $sNomeEmpresa
	 * @since 1.0.0
	 */
	public function __construct(string $sNomeEmpresa) {
		$this->sNomeEmpresa = $sNomeEmpresa;
		$this->oDAO = new empresaDAO();
	}
	
	/**
	 * Cadastra uma empresa
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function saveEmpresa(): void {
		$this->oDAO->save([$this->sNomeEmpresa]);
	}
	
	/**
	 * Exclui uma empresa
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function deleteEmpresa(): void {
		$this->oDAO->delete($this->iIDEmpresa);
	}
	
	/**
	 * Atualiza uma empresa
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replaceEmpresa(int $iID): void {
		$this->setID($iID);
		$this->oDAO->replace([$this->sNomeEmpresa], $this->iIDEmpresa);
	}
	
	/**
	 * Cria um objeto empresa a partir de um array
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Empresa
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function createFromArray(array $aDados): Empresa {
		$oEmpresa = new Empresa($aDados['ems_nome']);
		$oEmpresa->setID($aDados['ems_id']);
		return $oEmpresa;
	}
	
	/**
	 * Define o ID
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function setID(int $iID): void {
		$this->iIDEmpresa = $iID;
	}
	
	/**
	 * Retorna o ID
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return int
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getID(): int {
		return $this->iIDEmpresa;
	}
	
	/**
	 * Retorna o nome
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getNome(): string {
		return $this->sNomeEmpresa;
	}
}
