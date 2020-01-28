<?php

session_start();

require_once 'vendor/autoload.php';

if (!empty($_REQUEST)) {
	$sClassName = $_REQUEST['controller'] . 'Controller';
	$sAction = $_REQUEST['action'];
	$iID = $_REQUEST['id'];
	$oObject = new $sClassName;
} else {
	echo "Pagina não encontrada";
	exit();
}

if ($sAction === '')
	$oObject->index();
else
	try {
		$oObject->$sAction($iID);
	} catch (Exception $sErro) {
		echo $sErro;
	}
