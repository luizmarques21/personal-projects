<?php

/**
 * Class JSONConfig
 * @version 1.1.0
 */
class JSONConfig {
	
	private $aConfig;
	public static $oConfig;
	public static $sConfigFile;
	
	/**
	 * JSONConfig constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Metodo alterado para padrão singleton
	 */
	private function __construct() {
		//
	}
	
	/**
	 * Carrega as informações de configuração do arquivo json num vetor
	 *
	 * @param $sConfig
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Decodificação do arquivo json
	 */
	public function loadConfig(string $sConfig): array {
		$this->aConfig = json_decode(self::$sConfigFile, true);
		return $this->aConfig[$sConfig];
	}
	
	/**
	 * Define o arquivo de configurações
	 *
	 * @param string $sPath
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.1.0 - Definição do versionamento da classe
	 */
	public static function setConfigFile(string $sPath): void {
		self::$sConfigFile = file_get_contents($sPath);
	}
	
	/**
	 * Retorna a instancia do objeto
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return JSONConfig
	 *
	 * @since 1.1.0 - Definição do versionamento da classe
	 */
	public static function getInstance(): JSONConfig {
		if (!isset(self::$oConfig))
			self::$oConfig = new JSONConfig();
		return self::$oConfig;
	}
	
}