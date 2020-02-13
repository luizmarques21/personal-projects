<?php

require_once __DIR__ . '/vendor/autoload.php';

define('ROOT', '/var/www/html/trainee.luiz/avaliacao/');
define('WEBROOT', 'http://localhost/trainee.luiz/avaliacao/');

JSONConfig::setConfigFile(ROOT . 'Infra/.config.json');

$oSessao = new Sessao();
$oSessao->iniciaSessao();

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
	header("Location: login/");
