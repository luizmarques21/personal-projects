<?php

/**
 * Class empresaDAO
 * @version 1.1.1
 */
class empresaDAO {
	
	private $oDBHandler;
	
	/**
	 * empresaDAO constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementado o uso do DC
	 */
	public function __construct() {
		$this->oDBHandler = DependencyContainer::getDBHandler();
	}
	
	/**
	 * Lista todas as empresas cadastradas
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.1 - Adicionado parametro na query para filtrar registros removidos
	 */
	public function findAll(): array {
		$sQuery = 'SELECT * FROM ems_empresa WHERE ems_data_remocao IS NULL';
		return $this->oDBHandler->query($sQuery);
	}
	
	/**
	 * Lista uma empresa dado o seu ID
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Empresa
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByID(int $iID): Empresa {
		$sQuery = 'SELECT * FROM ems_empresa WHERE ems_id = ?';
		$aResultado = $this->oDBHandler->queryOne($sQuery, [$iID]);
		return Empresa::createFromArray($aResultado);
	}
	
	/**
	 * Insere uma empresa no banco
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function save(array $aDados): bool {
		$sQuery = 'INSERT INTO ems_empresa (ems_nome) VALUES (?)';
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
	/**
	 * Exclui uma empresa no banco
	 *
	 * @param $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.1 - Alterado metodo para exclusao logica
	 */
	public function delete(int $iID): bool {
		$sQuery = 'UPDATE ems_empresa SET ems_data_remocao = ? WHERE ems_id = ?';
		return $this->oDBHandler->execute($sQuery, [date('Y-m-d H:i:s'), $iID]);
	}
	
	/**
	 * Atualiza os dados de uma empresa
	 *
	 * @param $aDados
	 * @param $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replace(array $aDados, int $iID): bool {
		$sQuery = 'UPDATE ems_empresa SET ems_nome = ? WHERE ems_id = ?';
		$aDados = array_merge($aDados, [$iID]);
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
}
