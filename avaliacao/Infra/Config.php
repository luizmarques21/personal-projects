<?php

require_once __DIR__ . '/../vendor/autoload.php';

define('CAMINHO_PADRAO_WEB', 'http://localhost/trainee.luiz/avaliacao/');
define('CAMINHO_PADRAO', '/var/www/html/trainee.luiz/avaliacao/');
date_default_timezone_set('America/Bahia');

$oSessao = DependencyContainer::getSessao();
$oSessao->iniciaSessao();

$oGlobais = new Globals($_GET, $_POST);