<?php

require_once 'vendor/autoload.php';

use Mensagem\MensagemFactory;

$tData = new DateTimeImmutable();
$oStrategy = MensagemFactory::getMensagemStrategy($tData);
echo $oStrategy->imprimirMensagem();