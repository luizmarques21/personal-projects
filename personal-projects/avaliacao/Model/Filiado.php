<?php

/**
 * Class Filiado
 * @version 1.0.0
 */
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
	
	/**
	 * Filiado constructor.
	 * @param $sNomeFiliado
	 * @param $sCPF
	 * @param $sRG
	 * @param $tDataNascimento
	 * @param $mEmpresa
	 * @param $mCargo
	 * @param $mSituacao
	 * @param $sTelResidencial
	 * @param $sTelCelular
	 * @throws Exception
	 * @since 1.0.0 - Definição de versionamento da classe
	 */
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
	
	/**
	 * Cria um Filiado a partir de um array
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Filiado
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function createFromArray(array $aDados): Filiado {
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
	
	/**
	 * Define o ID
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function setID(int $iID): void {
		$this->iID = $iID;
	}
	
	/**
	 * Define a data da ultima atualizacao
	 *
	 * @param DateTimeImmutable|string $tDataAtualizacao
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function setDataAtualizacao($tDataAtualizacao): void {
		if (!is_object($tDataAtualizacao))
			$tDataAtualizacao = new DateTimeImmutable($tDataAtualizacao);
		$this->tDataAtualizacao = $tDataAtualizacao;
	}
	
	/**
	 * Define os dependentes de um filiado
	 *
	 * @param array $aDependentes
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function setDependentes(array $aDependentes): void {
		$this->aDependentes = $aDependentes;
	}
	
	/**
	 * Retorna o ID
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return int
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getID(): int {
		return $this->iID;
	}
	
	/**
	 * Retorna o nome
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getNome(): string {
		return $this->sNomeFiliado;
	}
	
	/**
	 * Retorna o CPF
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getCPF(): string {
		return $this->sCPF;
	}
	
	/**
	 * Retorna o RG
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getRG(): string {
		return $this->sRG;
	}
	
	/**
	 * Retorna a data de nascimento
	 *
	 * @param string $sFormato
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getDataNascimento(string $sFormato = ''): string {
		if ($sFormato != '')
			return $this->tDataNascimento->format($sFormato);
		else
			return $this->tDataNascimento->format('Y-m-d');
	}
	
	/**
	 * Retorna a empresa
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string|int
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getEmpresa() {
		return $this->mEmpresa;
	}
	
	/**
	 * Retorna o Cargo
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string|int
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getCargo() {
		return $this->mCargo;
	}
	
	/**
	 * Retorna a situação
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string|int
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getSituacao() {
		return $this->mSituacao;
	}
	
	/**
	 * Retorna a data de atualizacao
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getDataAtualizacao(): string {
		return $this->tDataAtualizacao->format('d/m/Y H:i');
	}
	
	/**
	 * Retorna o telefone
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getTelResidencial(): string {
		return $this->sTelResidencial;
	}
	
	/**
	 * Retorna o celular
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getTelCelular(): string {
		return $this->sTelCelular;
	}
	
	/**
	 * Salva um filiado e seus dependentes no banco
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function saveFiliado(): void {
		$aDados = $this->createToArray();
		try {
			$this->oDAO->save($aDados);
			$iFiliadoID = $this->oDAO->getLastID();
			$this->setID($iFiliadoID);
			
			if (!empty($this->aDependentes)) {
				foreach ($this->aDependentes as $aDependente) {
					$oDependente = new Dependente(
						$aDependente->nome,
						$aDependente->dataNascimento,
						$aDependente->parentesco
					);
					$this->adicionaDependente($oDependente);
					/*$oDependente->setFiliado($iFiliadoID);
					$oDependente->saveDependente();*/
				}
			}
		} catch (Exception $oException) {
			echo $oException->getMessage();
		}
	}
	
	/**
	 * Remove logicamente um filiado do banco
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function deleteFiliado(): void {
		$this->oDAO->delete($this->iID);
	}
	
	/**
	 * Cria um array a partir dos dados do Filiado
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function createToArray(): array {
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
	
	/**
	 * Atualiza os dados do filiado no banco
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replaceFiliado(int $iID): void {
		$this->setID($iID);
		$this->oDAO->replace($this->createToArray(), $iID);
	}
	
	/**
	 * Adiciona um dependente ligado ao filiado
	 *
	 * @param Dependente $oDependente
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function adicionaDependente(Dependente $oDependente): void {
		$oDependente->setFiliado($this->iID);
		$oDependente->saveDependente();
	}
	
	/**
	 * Exclui um dependente ligado ao filiado
	 *
	 * @param Dependente $oDependente
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function excluiDependente(Dependente $oDependente): void {
		$oDependente->deleteDependente();
	}
	
	/**
	 * Atualiza os dados de um dependente ligado ao filiado
	 *
	 * @param Dependente $oDependente
	 * @param int|string $mID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function atualizaDependente(Dependente $oDependente, $mID): void {
		$oDependente->setFiliado($this->iID);
		$oDependente->replaceDependente($mID);
	}
	
}