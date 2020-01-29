<?php

require_once __DIR__ . '/../vendor/autoload.php';

$oEmpresa = new Empresa($_REQUEST['cnpj'], $_REQUEST['razao_social'], $_REQUEST['nome_fantasia'],
						$_REQUEST['email'], $_REQUEST['telefone']);
$oEmpresa->cadastrarEmpresa();
header("refresh:1;url=../empresa");
