<?php

/**
 * Class JSONConfig
 * @version 1.0.0
 */
class JSONConfig {
	
	private $aConfig;
	
	/**
	 * JSONConfig constructor.
	 * @param $sPath
	 * @since 1.0.0
	 */
	public function __construct(string $sPath) {
		$sConfigFile = file_get_contents($sPath);
		$this->aConfig = json_decode($sConfigFile, true);
	}
	
	/**
	 * Carrega as informações de configuração do arquivo json num vetor
	 *
	 * @param $sConfig
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function loadConfig(string $sConfig): array {
		return $this->aConfig[$sConfig];
	}
	
}