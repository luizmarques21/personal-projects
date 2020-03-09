<?php

/**
 * Class DependencyContainer
 * @version 1.0.0
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
	
	/**
	 * Checa se há um usuario ativo no sistema
	 * Em caso negativo redireciona para a pagina de login
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function checaUsuarioAtivo(): void {
		if (!self::$oSessao->hasUsuarioAtivo()) {
			self::$oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . CAMINHO_PADRAO_WEB . "login/");
			exit();
		}
	}
	
	/**
	 * Checa se o usuario ativo tem permissoes administrativas
	 * Em caso negativo redireciona para a pagina home
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function checaUsuarioADM(): void {
		$sLogado = self::$oSessao->getUsuarioLogado();
		if (!Usuario::isADM($sLogado)) {
			self::$oSessao->setMensagem('Usuario precisa ter privilegio adminstrativo');
			header("Location: " . CAMINHO_PADRAO_WEB . "login/home");
			exit();
		}
	}
	
}
