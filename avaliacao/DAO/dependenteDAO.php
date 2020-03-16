<?php

/**
 * Class dependenteDAO
 * @version 1.0.1
 */
class dependenteDAO {
	
	private $oDBHandler;
	
	/**
	 * dependenteDAO constructor.
	 * @since 1.0.0 - Definição de versionamento da classe
	 */
	public function __construct() {
		$this->oDBHandler = DependencyContainer::getDBHandler();
	}
	
	/**
	 * Persiste um dependente
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function save(array $aDados): void {
		$sQuery = 'INSERT INTO dpe_dependente (dpe_nome, dpe_data_nascimento, dpe_grau_parentesco, flo_id)
					VALUES (?, ?, ?, ?)';
		$this->oDBHandler->execute($sQuery, $aDados);
	}
	
	/**
	 * Buscar um dependente pelo ID do filiado
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByFiliadoID(int $iID): array {
		$sQuery = 'SELECT dd.dpe_id, dd.dpe_nome, dd.dpe_data_nascimento, dd.dpe_grau_parentesco, ff.flo_nome as filiado
 					FROM dpe_dependente dd
					INNER JOIN flo_filiado ff ON dd.flo_id = ff.flo_id
					WHERE dpe_data_remocao IS NULL
					AND dd.flo_id = ?';
		return $this->oDBHandler->query($sQuery, [$iID]);
	}
	
	/**
	 * Busca os dependentes cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findAll(): array {
		$sQuery = 'SELECT dd.dpe_id, dd.dpe_nome, dd.dpe_data_nascimento, dd.dpe_grau_parentesco, ff.flo_nome as filiado
 					FROM dpe_dependente dd
					INNER JOIN flo_filiado ff ON dd.flo_id = ff.flo_id
					WHERE dpe_data_remocao IS NULL';
		return $this->oDBHandler->query($sQuery);
	}
	
	/**
	 * Busca um dependente pelo seu ID
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Dependente
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByID(int $iID): Dependente {
		$sQuery = 'SELECT dd.dpe_id, dd.dpe_nome, dd.dpe_data_nascimento, dd.dpe_grau_parentesco, ff.flo_nome as filiado
 					FROM dpe_dependente dd
					INNER JOIN flo_filiado ff ON dd.flo_id = ff.flo_id
					WHERE dpe_data_remocao IS NULL
					AND dpe_id = ?';
		$aResultado = $this->oDBHandler->queryOne($sQuery, [$iID]);
		return Dependente::createFromArray($aResultado);
	}
	
	/**
	 * Exclui logicamente um dependente
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function delete(int $iID): void {
		$sQuery = 'UPDATE dpe_dependente SET dpe_data_remocao = ? WHERE dpe_id = ?';
		$this->oDBHandler->execute($sQuery, [date('Y-m-d H:i:s'), $iID]);
	}
	
	/**
	 * Atualiza um dependente
	 *
	 * @param array $aDados
	 * @param mixed $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.0.1 - Alterado o tipo do parametro
	 */
	public function replace(array $aDados, $iID): void {
		$sQuery = 'UPDATE dpe_dependente
					SET dpe_nome = ?, dpe_data_nascimento = ?, dpe_grau_parentesco = ?, flo_id = ?
					WHERE dpe_id = ?';
		$aDados = array_merge($aDados, [$iID]);
		$this->oDBHandler->execute($sQuery, $aDados);
	}
	
}