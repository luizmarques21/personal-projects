<?php
	
/**
 * Class filiadoDAO
 * @version 1.0.0
 */
class filiadoDAO {
	
	private $oDBHandler;
	
	/**
	 * filiadoDAO constructor.
	 * @since 1.0.0 - Definição de versionamento da classe
	 */
	public function __construct() {
		$this->oDBHandler = DependencyContainer::getDBHandler();
	}
	
	/**
	 * Retorna todos os registros encontrados na tabela
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findAll(): array {
		$sQuery = 'SELECT
						ff.flo_id, ff.flo_nome, ff.flo_rg, ff.flo_cpf, ff.flo_data_nascimento,
						ee.ems_nome, cc.cro_nome, ss.sto_nome, ff.flo_data_atualizacao,
       					ff.flo_residencial, ff.flo_celular, ff.flo_data_remocao
					FROM flo_filiado ff
 					INNER JOIN ems_empresa ee ON ff.ems_id=ee.ems_id
 					INNER JOIN cro_cargo cc ON ff.cro_id=cc.cro_id
 					INNER JOIN sto_situacao ss ON ff.sto_id=ss.sto_id
 					WHERE ff.flo_data_remocao IS NULL';
		return $this->oDBHandler->query($sQuery);
	}
	
	/**
	 * Busca um filiado pelo seu ID
	 *
	 * @param int $iID
	 * @return Filiado
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function findByID(int $iID): Filiado {
		$sQuery = 'SELECT
						ff.flo_id, ff.flo_nome, ff.flo_rg, ff.flo_cpf, ff.flo_data_nascimento,
						ee.ems_nome, cc.cro_nome, ss.sto_nome, ff.flo_data_atualizacao,
       					ff.flo_residencial, ff.flo_celular
					FROM flo_filiado ff
 					INNER JOIN ems_empresa ee ON ff.ems_id=ee.ems_id
 					INNER JOIN cro_cargo cc ON ff.cro_id=cc.cro_id
 					INNER JOIN sto_situacao ss ON ff.sto_id=ss.sto_id
 					WHERE flo_data_remocao IS NULL
 					AND flo_id = ?';
		$aFiliado = $this->oDBHandler->queryOne($sQuery, [$iID]);
		return Filiado::createFromArray($aFiliado);
	}
	
	/**
	 * Salva um filiado no banco
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function save(array $aDados): void {
		$sQuery = 'INSERT INTO flo_filiado
    					(flo_nome, flo_cpf, flo_rg, flo_data_nascimento, ems_id, cro_id, sto_id,
    					 flo_data_atualizacao, flo_residencial, flo_celular)
					VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
		if (!$this->oDBHandler->execute($sQuery, $aDados))
			throw new Exception('Erro ao inserir filiado');
	}
	
	/**
	 * Exclui um filiado e seus dependentes no banco
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function delete(int $iID): void {
		$this->oDBHandler->startTransaction();
		$sQuery = 'UPDATE dpe_dependente SET dpe_data_remocao = ? WHERE flo_id = ?';
		$this->oDBHandler->execute($sQuery, [date('Y-m-d H:i:s'), $iID]);
		$sQuery = 'UPDATE flo_filiado SET flo_data_remocao = ? WHERE flo_id = ?';
		$this->oDBHandler->execute($sQuery, [date('Y-m-d H:i:s'), $iID]);
		$this->oDBHandler->endTransaction();
	}
	
	/**
	 * Retorna o ID do ultimo filiado salvo
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return mixed
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getLastID() {
		$sQuery = 'SELECT max(flo_id) FROM flo_filiado';
		$aResultado = $this->oDBHandler->queryOne($sQuery);
		return $aResultado[0];
	}
	
	/**
	 * Atualiza os dados de um filiado no banco
	 *
	 * @param array $aDados
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replace(array $aDados, int $iID): void {
		$aDados = array_merge($aDados, [$iID]);
		$sQuery = 'UPDATE flo_filiado
					SET flo_nome = ?, flo_cpf = ?, flo_rg = ?, flo_data_nascimento = ?, ems_id = ?, cro_id = ?,
						sto_id = ?, flo_data_atualizacao = ?, flo_residencial = ?, flo_celular = ?
					WHERE flo_id = ?';
		$this->oDBHandler->execute($sQuery, $aDados);
	}
	
	/**
	 * Busca um filiado pelo nome
	 *
	 * @param $mValor
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByName($mValor): array {
		$sQuery = 'SELECT
						ff.flo_id, ff.flo_nome, ff.flo_rg, ff.flo_cpf, ff.flo_data_nascimento,
						ee.ems_nome, cc.cro_nome, ss.sto_nome, ff.flo_data_atualizacao,
       					ff.flo_residencial, ff.flo_celular
					FROM flo_filiado ff
 					INNER JOIN ems_empresa ee ON ff.ems_id=ee.ems_id
 					INNER JOIN cro_cargo cc ON ff.cro_id=cc.cro_id
 					INNER JOIN sto_situacao ss ON ff.sto_id=ss.sto_id
 					WHERE flo_data_remocao IS NULL
 					AND flo_nome LIKE ?';
		return $this->oDBHandler->query($sQuery, [$mValor]);
	}
	
	/**
	 * Busca um filiado pelo mês de nascimento
	 *
	 * @param $mValor
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByMesNascimento($mValor): array {
		$sQuery = 'SELECT
						ff.flo_id, ff.flo_nome, ff.flo_rg, ff.flo_cpf, ff.flo_data_nascimento,
						ee.ems_nome, cc.cro_nome, ss.sto_nome, ff.flo_data_atualizacao,
       					ff.flo_residencial, ff.flo_celular
					FROM flo_filiado ff
 					INNER JOIN ems_empresa ee ON ff.ems_id=ee.ems_id
 					INNER JOIN cro_cargo cc ON ff.cro_id=cc.cro_id
 					INNER JOIN sto_situacao ss ON ff.sto_id=ss.sto_id
 					WHERE flo_data_remocao IS NULL
	                AND EXTRACT(MONTH FROM flo_data_nascimento) = ?';
		return $this->oDBHandler->query($sQuery, [$mValor]);
	}
	
}