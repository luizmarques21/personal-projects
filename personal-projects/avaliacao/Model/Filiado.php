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
	private $aDependentes;
	private $oDAO;
	
	public function __construct(
		$sNomeFiliado,
		$sCPF,
		$sRG,
		$tDataNascimento,
		$mEmpresa,
	    $mCargo,
		$mSituacao,
		$sTelResidencial,
		$sTelCelular
	) {
		$this->sNomeFiliado = $sNomeFiliado;
		$this->sCPF = $sCPF;
		$this->sRG = $sRG;
		$this->tDataNascimento = new DateTimeImmutable($tDataNascimento);
		$this->mEmpresa = $mEmpresa;
		$this->mCargo = $mCargo;
		$this->mSituacao = $mSituacao;
		$this->sTelResidencial = $sTelResidencial;
		$this->sTelCelular = $sTelCelular;
		$this->oDAO = new filiadoDAO();
	}
	
	public static function createFromArray(array $aDados) {
		$oFiliado = new Filiado(
			$aDados['flo_nome'],
			$aDados['flo_cpf'],
			$aDados['flo_rg'],
			$aDados['flo_data_nascimento'],
			$aDados['ems_nome'],
			$aDados['cro_nome'],
			$aDados['sto_nome'],
			$aDados['flo_residencial'],
			$aDados['flo_celular']
		);
		$oFiliado->setID($aDados['flo_id'] ?? null);
		$oFiliado->setDataAtualizacao($aDados['flo_data_atualizacao']);
		return $oFiliado;
	}
	
	private function setID($iID) {
		$this->iID = $iID;
	}
	
	public function setDataAtualizacao($tDataAtualizacao) {
		if (!is_object($tDataAtualizacao))
			$tDataAtualizacao = new DateTimeImmutable($tDataAtualizacao);
		$this->tDataAtualizacao = $tDataAtualizacao;
	}
	
	public function setDependentes($aDependentes) {
		$this->aDependentes = $aDependentes;
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
	
	public function getDataNascimento($sFormato = '') {
		if ($sFormato != '')
			return $this->tDataNascimento->format($sFormato);
		else
			return $this->tDataNascimento->format('Y-m-d');
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
		return $this->tDataAtualizacao->format('d/m/Y H:i');
	}
	
	public function getTelResidencial() {
		return $this->sTelResidencial;
	}
	
	public function getTelCelular() {
		return $this->sTelCelular;
	}
	
	public function saveFiliado() {
		$aDados = $this->createToArray();
		try {
			$this->oDAO->save($aDados);
			$iFiliadoID = $this->oDAO->getLastID();
			
			if (!empty($this->aDependentes)) {
				foreach ($this->aDependentes as $aDependente) {
					$oDependente = new Dependente(
						$aDependente->nome,
						$aDependente->dataNascimento,
						$aDependente->parentesco
					);
					$oDependente->setFiliado($iFiliadoID);
					$oDependente->saveDependente();
				}
			}
		} catch (Exception $e) {
			echo $e->getMessage();
		}
	}
	
	public function deleteFiliado() {
		$this->oDAO->delete($this->iID);
	}
	
	private function createToArray() {
		return array(
			'flo_nome' => $this->sNomeFiliado,
			'flo_cpf' => $this->sCPF,
			'flo_rg' => $this->sRG,
			'flo_data_nascimento' => $this->tDataNascimento->format('Y-m-d H:i:s'),
			'emp_id' => $this->mEmpresa,
			'cro_id' => $this->mCargo,
			'sto_id' => $this->mSituacao,
			'flo_data_atualizacao' => $this->tDataAtualizacao->format('Y-m-d H:i:s') ?? date('Y-m-d H:i:s'),
			'flo_telefone' => $this->sTelResidencial,
			'flo_celular' => $this->sTelCelular
		);
	}
	
	public function replaceFiliado($iID) {
		$this->setID($iID);
		$this->oDAO->replace($this->createToArray(), $iID);
	}
	
}