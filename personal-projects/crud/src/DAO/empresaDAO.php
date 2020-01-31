<?php
	
class empresaDAO {

	private $oDBHandler;
	
	public function __construct() {
		$this->oDBHandler = new MoobiDataBaseHandler();
	}
	
	public function saveEmpresa($aDados) {
		$sQuery = "INSERT INTO ema_empresa (ema_nome, ema_email, ema_cnpj, ema_cep, ema_estado,
											ema_cidade, ema_bairro, ema_logradouro, ema_telefone)
					VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
	public function deleteEmpresa($iID) {
		$sQuery = "DELETE FROM ema_empresa WHERE ema_id = ?";
		return $this->oDBHandler->execute($sQuery, [$iID]);
	}
	
	public function replaceEmpresa($aDados) {
		$sQuery = "UPDATE ema_empresa SET ema_nome = ?, ema_email = ?, ema_cnpj = ?, ema_cep = ?, ema_estado = ?,
											ema_cidade = ?, ema_bairro = ?, ema_logradouro = ?, ema_telefone = ?";
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
	public function findAllEmpresa() {
		$sQuery = "SELECT * FROM ema_empresa";
		return $this->oDBHandler->query($sQuery);
	}
	
	public function findByID($iID) {
		$sQuery = "SELECT * FROM ema_empresa WHERE ema_id = ?";
		return $this->oDBHandler->queryOne($sQuery, $iID);
	}
	
}