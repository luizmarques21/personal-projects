<?php
	
	
class filiadoDAO {
	
	private $oDBHandler;
	
	public function __construct() {
		$this->oDBHandler = new MoobiDataBaseHandler(JSONConfig::getInstance());
	}
	
	public function findAll() {
		$sQuery = 'SELECT
						ff.flo_id, ff.flo_nome, ff.flo_rg, ff.flo_cpf, ff.flo_data_nascimento,
						ee.ems_nome, cc.cro_nome, ss.sto_nome, ff.flo_data_atualizacao,
       					ff.flo_residencial, ff.flo_celular
					FROM flo_filiado ff
 					INNER JOIN ems_empresa ee ON ff.ems_id=ee.ems_id
 					INNER JOIN cro_cargo cc ON ff.cro_id=cc.cro_id
 					INNER JOIN sto_situacao ss ON ff.sto_id=ss.sto_id ';
		return $this->oDBHandler->query($sQuery);
	}
	
}