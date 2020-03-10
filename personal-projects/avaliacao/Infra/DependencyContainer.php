<?php

/**
 * Class DependencyContainer
 * @version 1.1.0
 */
class DependencyContainer {
	
	public static $oDBHandler;
	public static $oView;
	public static $oSessao;
	
	/**
	 * Retorna um objeto DBHandler
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return MoobiDataBaseHandler
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function getDBHandler(): MoobiDataBaseHandler {
		if (!isset(self::$oDBHandler)) {
			JSONConfig::setConfigFile(CAMINHO_PADRAO . 'Infra/.config.json');
			self::$oDBHandler = new MoobiDataBaseHandler(JSONConfig::getInstance());
		}
		return self::$oDBHandler;
	}
	
	/**
	 * Retorna um objeto View
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return View
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function getView(): View {
		if (!isset(self::$oView)) {
			self::$oView = new View();
		}
		return self::$oView;
	}
	
	/**
	 * Retorna um objeto Sessao
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Sessao
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function getSessao(): Sessao {
		if (!isset(self::$oSessao)) {
			self::$oSessao = new Sessao();
		}
		return self::$oSessao;
	}
	
}
