<?php

require_once 'vendor/autoload.php';
session_start();
	
var_dump($_REQUEST);
echo "<br>";
var_dump($_GET);

$sClassName = $_REQUEST['controller'] . 'Controller';
$oObject = new $sClassName;
$sAction = $_REQUEST['action'];
if ($sAction === '')
	$oObject->index();
else {
	$oObject->$sAction($_REQUEST);
}

	
	
/*	require 'vendor/autoload.php';
	
	$oCoreController = new Controller();
	
	if (!empty($_REQUEST)) {
		redirecionarUrl();
	} else {
		$oCoreController->paginaInicial();
	}
	
	function redirecionarUrl(): void
	{
		$sControlador = ucfirst($_REQUEST['controller']);
		$sClasse = $sControlador . "Controller";
		if (class_exists($sClasse)) {
			$oInstancia = new $sClasse;
			$sMetodo = $_REQUEST['action'];
			if (method_exists($sClasse, $sMetodo)) {
				$oInstancia->$sMetodo($_REQUEST);
			} else {
				$oInstancia->index();
			}
		} else {
			$oCoreController = new Controller();
			$oCoreController->paginaNaoEncontrada();
		}
	}*/