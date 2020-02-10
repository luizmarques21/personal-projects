<?php

/**
 * Class Situacao
 * @version 1.0.0
 */
class Situacao {
	
	private $iIDSituacao;
	private $sSituacao;
	private $oDAO;
	
	/**
	 * Situacao constructor.
	 * @param string $sSituacao
	 * @since 1.0.0
	 */
	public function __construct(string $sSituacao) {
		$this->sSituacao = $sSituacao;
		$this->oDAO = new situacaoDAO();
	}
	
	/**
	 * Cadastra uma situação
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function saveSituacao(): void {
		$this->oDAO->save([$this->sSituacao]);
	}
	
	/**
	 * Exclui uma situação
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function deleteSituacao(): void {
		$this->oDAO->delete($this->iIDSituacao);
	}
	
	/**
	 * Atualiza uma situação
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replaceSituacao(int $iID): void {
		$this->setID($iID);
		$this->oDAO->replace([$this->sSituacao], $this->iIDSituacao);
	}
	
	/**
	 * Cria um objeto situação a partir de um array
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Situacao
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function createFromArray(array $aDados): Situacao {
		$oSituacao = new Situacao($aDados['sto_nome']);
		$oSituacao->setID($aDados['sto_id']);
		return $oSituacao;
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
		$this->iIDSituacao = $iID;
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
		return $this->iIDSituacao;
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
		return $this->sSituacao;
	}
	
}
