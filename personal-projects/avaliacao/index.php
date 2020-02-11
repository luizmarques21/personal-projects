<?php

require_once __DIR__ . '/vendor/autoload.php';

define('ROOT', $_SERVER['HTTP_REFERER'] . '/avaliacao/');
JSONConfig::setConfigFile(ROOT . 'Infra/.config.json');

$oSessao = new Sessao();
try {
	$oSessao->iniciaSessao();
} catch (Exception $sErro) {
	header("Location: login", true, 302);
}

if (!empty($_REQUEST)) {
	$sClassName = $_REQUEST['controller'] . 'Controller';
	$sAction = $_REQUEST['action'];
	$iID = $_REQUEST['id'];
	$oObject = new $sClassName;
	if ($sAction === '')
		$oObject->index();
	else
		$oObject->$sAction($iID);
} else
	header("Location: login", true, 302);
