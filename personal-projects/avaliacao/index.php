<?php

include_once __DIR__ . '/Infra/Config.php';

if (empty($_REQUEST) && !$oSessao->hasUsuarioAtivo()) {
	header("Location: login/");
} else {
	if (!empty($_REQUEST)) {
		$sClassName = $_REQUEST['controller'] . 'Controller';
		$sAction = $_REQUEST['action'];
		$iID = $_REQUEST['id'];
		if (!$oSessao->hasUsuarioAtivo() && $sClassName != 'loginController') {
			$oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . CAMINHO_PADRAO_WEB . "login/");
		} else {
			if ($sClassName == 'usuarioController' &&
				!Usuario::isADM($oSessao->getUsuarioLogado()) &&
				$sAction != 'sair'
			) {
				$oSessao->setMensagem('Usuario precisa ter privilegio adminstrativo');
				header("Location: " . CAMINHO_PADRAO_WEB . "login/home");
			} else {
				$oObject = new $sClassName($oGlobais);
				if ($sAction === '')
					$oObject->index();
				else
					$oObject->$sAction($iID);
			}
		}
	} else {
		header("Location: " . CAMINHO_PADRAO_WEB . "login/home");
	}
}
