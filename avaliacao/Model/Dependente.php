<?php
	
	
/**
 * Class Dependente
 * @version 1.0.1
 */
class Dependente {
	
	private $iID;
	private $sNomeDependente;
	private $tDataNascimento;
	private $sParentesco;
	private $mFiliado;
	private $oDAO;
	
	/**
	 * Dependente constructor.
	 * @param string $sNomeDependente
	 * @param string $tDataNascimento
	 * @param string $sParentesco
	 * @throws Exception
	 * @since 1.0.0 - Definição de versionamento da classe
	 */
	public function __construct(string $sNomeDependente, string $tDataNascimento, string $sParentesco) {
		$this->sNomeDependente = $sNomeDependente;
		$this->tDataNascimento = new DateTimeImmutable($tDataNascimento);
		$this->sParentesco = $sParentesco;
		$this->oDAO = new dependenteDAO();
	}
	
	/**
	 * Define o ID do filiado
	 *
	 * @param string|int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function setFiliado($iID): void {
		$this->mFiliado = $iID;
	}
	
	/**
	 * Define o ID
	 *
	 * @param string $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function setID(string $iID): void {
		$this->iID = $iID;
	}
	
	/**
	 * Persiste um dependente
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function saveDependente(): void {
		$aDados = $this->createToArray();
		$this->oDAO->save($aDados);
	}
	
	/**
	 * Cria um array com os dados do objeto
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function createToArray(): array {
		return [
			'dpe_nome' => $this->sNomeDependente,
			'dpe_data_nascimento' => $this->tDataNascimento->format('Y-m-d H:i:s'),
			'dpe_grau_parentesco' => $this->sParentesco,
			'flo_id' => $this->mFiliado
		];
	}
	
	/**
	 * Cria um objeto a partir de um dependente
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Dependente
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function createFromArray(array $aDados): Dependente {
		$oDependente = new Dependente(
			$aDados['dpe_nome'],
			$aDados['dpe_data_nascimento'],
			$aDados['dpe_grau_parentesco']
		);
		$oDependente->setID($aDados['dpe_id'] ?? null);
		$oDependente->setFiliado($aDados['filiado']);
		return $oDependente;
	}
	
	/**
	 * Retorna o ID
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return mixed
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getID() {
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
		return $this->sNomeDependente;
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
	 * Retorna o nome ou o ID do filiado
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return mixed
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getFiliado() {
		return $this->mFiliado;
	}
	
	/**
	 * Retorna o parentesco do dependente
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getParentesco(): string {
		return $this->sParentesco;
	}
	
	/**
	 * Exclui um dependente
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function deleteDependente(): void {
		$this->oDAO->delete($this->iID);
	}
	
	/**
	 * Atualizao os dados de um dependente
	 *
	 * @param mixed $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.0.1 - Alterado o tipo do parametro
	 */
	public function replaceDependente($iID): void {
		$this->setID($iID);
		$this->oDAO->replace($this->createToArray(), $iID);
	}
	
}