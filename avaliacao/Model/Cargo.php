<?php

/**
 * Class Cargo
 * @version 1.0.0
 */
class Cargo {
	
	private $iIDCargo;
	private $sCargo;
	private $oDAO;
	
	/**
	 * Cargo constructor.
	 * @param $sCargo
	 * @since 1.0.0
	 */
	public function __construct(string $sCargo) {
		$this->sCargo = $sCargo;
		$this->oDAO = new cargoDAO();
	}
	
	/**
	 * Cadastra um cargo
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function saveCargo(): void {
		$this->oDAO->save([$this->sCargo]);
	}
	
	/**
	 * Exclui um cargo
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function deleteCargo(): void {
		$this->oDAO->delete($this->iIDCargo);
	}
	
	/**
	 * Atualiza um cargo
	 *
	 * @param $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replaceCargo(int $iID): void {
		$this->setID($iID);
		$this->oDAO->replace([$this->sCargo], $this->iIDCargo);
	}
	
	/**
	 * Cria um cargo a partir de um array
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Cargo
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function createFromArray(array $aDados): Cargo {
		$oCargo = new Cargo($aDados['cro_nome']);
		$oCargo->setID($aDados['cro_id']);
		return $oCargo;
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
		$this->iIDCargo = $iID;
	}
	
	/**
	 * Retorna o valor do ID
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return int
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getID(): int {
		return $this->iIDCargo;
	}
	
	/**
	 * Retorna o cargo
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getNome(): string {
		return $this->sCargo;
	}
	
}
