<?php
	
	
class filiadoDAO {
	
	private $oDBHandler;
	
	public function __construct() {
		$this->oDBHandler = DependencyContainer::getDBHandler();
	}
	
	public function findAll() {
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
	
	public function findByID($iID) {
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
	
	public function save($aDados) {
		$sQuery = 'INSERT INTO flo_filiado
    					(flo_nome, flo_cpf, flo_rg, flo_data_nascimento, ems_id, cro_id, sto_id,
    					 flo_data_atualizacao, flo_residencial, flo_celular)
					VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
		if (!$this->oDBHandler->execute($sQuery, $aDados))
			throw new Exception('Erro ao inserir filiado');
	}
	
	public function delete($iID) {
		$this->oDBHandler->startTransaction();
		$sQuery = 'UPDATE dpe_dependente SET dpe_data_remocao = ? WHERE flo_id = ?';
		$this->oDBHandler->execute($sQuery, [date('Y-m-d H:i:s'), $iID]);
		$sQuery = 'UPDATE flo_filiado SET flo_data_remocao = ? WHERE flo_id = ?';
		$this->oDBHandler->execute($sQuery, [date('Y-m-d H:i:s'), $iID]);
		$this->oDBHandler->endTransaction();
	}
	
	public function getLastID() {
		$sQuery = 'SELECT max(flo_id) FROM flo_filiado';
		$aResultado = $this->oDBHandler->queryOne($sQuery);
		return $aResultado[0];
	}
	
	public function replace($aDados, $iID) {
		$aDados = array_merge($aDados, [$iID]);
		$sQuery = 'UPDATE flo_filiado
					SET flo_nome = ?, flo_cpf = ?, flo_rg = ?, flo_data_nascimento = ?, ems_id = ?, cro_id = ?,
						sto_id = ?, flo_data_atualizacao = ?, flo_residencial = ?, flo_celular = ?
					WHERE flo_id = ?';
		$this->oDBHandler->execute($sQuery, $aDados);
	}
	
	public function findByName($mValor) {
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
	
	public function findByMesNascimento($mValor) {
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