<?php

class Filiado {
	
	private $iID;
	private $sNomeFiliado;
	private $sCPF;
	private $sRG;
	private $tDataNascimento;
	private $mEmpresa;
	private $mCargo;
	private $mSituacao;
	private $tDataAtualizacao;
	private $sTelResidencial;
	private $sTelCelular;
	private $oDAO;
	
	public function __construct(
		$sNomeFiliado, $sCPF, $sRG, $tDataNascimento, $mEmpresa,
	    $mCargo, $mSituacao, $tDataAtualizacao, $sTelResidencial, $sTelCelular
	) {
		$this->sNomeFiliado = $sNomeFiliado;
		$this->sCPF = $sCPF;
		$this->sRG = $sRG;
		$this->tDataNascimento = new DateTimeImmutable($tDataNascimento);
		$this->mEmpresa = $mEmpresa;
		$this->mCargo = $mCargo;
		$this->mSituacao = $mSituacao;
		$this->tDataAtualizacao = new DateTimeImmutable($tDataAtualizacao);
		$this->sTelResidencial = $sTelResidencial;
		$this->sTelCelular = $sTelCelular;
		$this->oDAO = new filiadoDAO();
	}
	
	public static function createFromArray(array $aDados) {
		$oFiliado = new Filiado(
			$aDados['flo_nome'], $aDados['flo_cpf'], $aDados['flo_rg'], $aDados['flo_data_nascimento'],
			$aDados['ems_nome'], $aDados['cro_nome'], $aDados['sto_nome'], $aDados['flo_data_atualizacao'],
			$aDados['flo_residencial'], $aDados['flo_celular']
		);
		$oFiliado->setID($aDados['flo_id']);
		return $oFiliado;
	}
	
	private function setID($iID) {
		$this->iID = $iID;
	}
	
	public function getID() {
		return $this->iID;
	}
	
	public function getNome() {
		return $this->sNomeFiliado;
	}
	
	public function getCPF() {
		return $this->sCPF;
	}
	
	public function getRG() {
		return $this->sRG;
	}
	
	public function getDataNascimento() {
		return $this->tDataNascimento->format('d/m/Y');
	}
	
	public function getEmpresa() {
		return $this->mEmpresa;
	}
	
	public function getCargo() {
		return $this->mCargo;
	}
	
	public function getSituacao() {
		return $this->mSituacao;
	}
	
	public function getDataAtualizacao() {
		return $this->tDataAtualizacao->format('d/m/Y');
	}
	
	public function getTelResidencial() {
		return $this->sTelResidencial;
	}
	
	public function getTelCelular() {
		return $this->sTelCelular;
	}
	
	
}