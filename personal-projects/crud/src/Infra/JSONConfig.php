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
		var_dump($sPath);
		$sConfigFile = file_get_contents($sPath);
		var_dump($sConfigFile);
		$this->aConfig = json_decode($sConfigFile, true);
		var_dump($this->aConfig);
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