<?php

include_once __DIR__ . '/Infra/Config.php';

if (!empty($_REQUEST)) {
	$sClassName = $_REQUEST['controller'] . 'Controller';
	$sAction = $_REQUEST['action'];
	$iID = $_REQUEST['id'];
	$oObject = new $sClassName($oGlobais);
	if ($sAction === '')
		$oObject->index();
	else
		$oObject->$sAction($iID);
} else {
	if ($oSessao->hasUsuarioAtivo()) {
		header("Location: " . CAMINHO_PADRAO_WEB . "login/home");
	} else {
		header("Location: login/");
	}
}

