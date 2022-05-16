<?php

namespace Tests;

use Mensagem\MensagemDiaEspecialStrategy;
use Mensagem\MensagemFactory;
use Mensagem\MensagemQuintaStrategy;
use Mensagem\MensagemSegundaStrategy;
use PHPUnit\Framework\TestCase;

class MensagemTest extends TestCase {

	public function testDiaEspecial(\DateTimeImmutable $oData): void {
		$oStrategy = MensagemFactory::getMensagemStrategy($oData);
		$this->assertTrue($oStrategy instanceof MensagemDiaEspecialStrategy);
	}

	public function testDiaSegunda(\DateTimeImmutable $oData): void {
		$oStrategy = MensagemFactory::getMensagemStrategy($oData);
		$this->assertTrue($oStrategy instanceof MensagemSegundaStrategy);
	}

	public function testDiaQuinta(\DateTimeImmutable $oData): void {
		$oStrategy = MensagemFactory::getMensagemStrategy($oData);
		$this->assertTrue($oStrategy instanceof MensagemQuintaStrategy);
	}

}