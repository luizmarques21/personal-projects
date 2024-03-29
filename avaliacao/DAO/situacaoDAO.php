<?php

/**
 * Class situacaoDAO
 * @version 1.1.1
 */
class situacaoDAO {
	
	private $oDBHandler;
	
	/**
	 * situacaoDAO constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementação do DC
	 */
	public function __construct() {
		$this->oDBHandler = DependencyContainer::getDBHandler();
	}
	
	/**
	 * Lista todas as situações cadastradas no banco
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.1 - Adicionado parametro na query para filtrar registros removidos
	 */
	public function findAll(): array {
		$sQuery = 'SELECT * FROM sto_situacao WHERE sto_data_remocao IS NULL';
		return $this->oDBHandler->query($sQuery);
	}
	
	/**
	 * Lista uma situação dado o seu ID
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Situacao
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByID(int $iID): Situacao {
		$sQuery = 'SELECT * FROM sto_situacao WHERE sto_id = ?';
		$aResultado = $this->oDBHandler->queryOne($sQuery, [$iID]);
		return Situacao::createFromArray($aResultado);
	}
	
	/**
	 * Insere uma situação no banco
	 *
	 * @param $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function save(array $aDados): bool {
		$sQuery = 'INSERT INTO sto_situacao (sto_nome) VALUES (?)';
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
	/**
	 * Exclui uma situação no banco
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.1 - Alterado metodo para exclusao logica
	 */
	public function delete(int $iID): bool {
		$sQuery = 'UPDATE sto_situacao SET sto_data_remocao = ? WHERE sto_id = ?';
		return $this->oDBHandler->execute($sQuery, [date('Y-m-d H:i:s'), $iID]);
	}
	
	/**
	 * Atualiza uma situação no banco
	 *
	 * @param $aDados
	 * @param $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replace(array $aDados, int $iID) {
		$sQuery = 'UPDATE sto_situacao SET sto_nome = ? WHERE sto_id = ?';
		$aDados = array_merge($aDados, [$iID]);
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
}
