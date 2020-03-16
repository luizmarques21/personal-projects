<?php

/**
 * Class Globals
 * @version 1.0.1
 */
class Globals {
	
	private $aGET = [];
	private $aPOST = [];
	
	/**
	 * Globals constructor.
	 * @param array $aGET
	 * @param array $aPOST
	 * @since 1.0.0 - Definição de versionamento da classe
	 */
	public function __construct(array $aGET, array $aPOST) {
		$this->aGET = $aGET;
		$this->aPOST = $aPOST;
	}
	
	/**
	 * Retorna o valor de indice na global GET
	 *
	 * @param string $sIndice
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return mixed|null
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.0.1 - Alterada verificação do indice
	 */
	public function get(string $sIndice) {
		if (isset($this->aGET[$sIndice])) {
			return $this->aGET[$sIndice];
		}
		
		return null;
	}
	
	/**
	 * Retorna o valor de um indice na global POST
	 *
	 * @param string $sIndice
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return mixed|null
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.0.1 - Alteração da verificação do indice
	 */
	public function post(string $sIndice) {
		if (isset($this->aPOST[$sIndice])) {
			return $this->aPOST[$sIndice];
		}
		
		return null;
	}
	
}