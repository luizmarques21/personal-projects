<?php

/**
 * Class cargoDAO
 * @version 1.0.0
 */
class cargoDAO {
	
	private $oDBHandler;
	
	/**
	 * cargoDAO constructor.
	 * @since 1.0.0
	 */
	public function __construct() {
		$this->oDBHandler = new MoobiDataBaseHandler(JSONConfig::getInstance());
	}
	
	/**
	 * Lista todos os cargos cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findAll(): array {
		$sQuery = 'SELECT * FROM cro_cargo';
		return $this->oDBHandler->query($sQuery);
	}
	
	/**
	 * Retorna um cargo dado o seu ID
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Cargo
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByID(int $iID): Cargo {
		$sQuery = 'SELECT * FROM cro_cargo WHERE cro_id = ?';
		$aResultado = $this->oDBHandler->queryOne($sQuery, [$iID]);
		return Cargo::createFromArray($aResultado);
	}
	
	/**
	 * Insere um cargo no banco
	 *
	 * @param $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function save(array $aDados): bool {
		$sQuery = 'INSERT INTO cro_cargo (cro_nome) VALUES (?)';
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
	/**
	 * Exclui um cargo do banco
	 *
	 * @param $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function delete(int $iID): bool {
		$sQuery = 'DELETE FROM cro_cargo WHERE cro_id = ?';
		return $this->oDBHandler->execute($sQuery, [$iID]);
	}
	
	/**
	 * Atualiza um cargo no banco
	 *
	 * @param array $aDados
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replace(array $aDados, int $iID): bool {
		$sQuery = 'UPDATE cro_cargo SET cro_nome = ? WHERE cro_id = ?';
		$aDados = array_merge($aDados, [$iID]);
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
}
