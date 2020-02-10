<?php

require_once __DIR__ . '/vendor/autoload.php';

define('ROOT', 'http://localhost/trainee.luiz/avaliacao/');

if (session_status() !== PHP_SESSION_ACTIVE)
	session_start();
else
	header("Location: login", true, 302);

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
