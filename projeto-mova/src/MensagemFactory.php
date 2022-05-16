<?php

namespace Mensagem;

class MensagemFactory {

	public static function getMensagemStrategy(\DateTimeImmutable $oData): MensagemInterface {
		if (self::validarDataEspecial($oData)) {
			return new MensagemDiaEspecialStrategy();
		}

		switch ($oData->format('N')) {
			case 1:
				return new MensagemSegundaStrategy();
			case 2:
				return new MensagemTercaStrategy();
			case 3:
				return new MensagemQuartaStrategy();
			case 4:
				return new MensagemQuintaStrategy();
			case 5:
				return new MensagemSextaStrategy();
			case 6:
				return new MensagemSabadoStrategy();
			case 7:
				return new MensagemDomingoStrategy();
		}
	}

	private static function validarDataEspecial(\DateTimeImmutable $oData): bool {
		$aDatasEspeciais = ['01/05', '24/12', '31/12', '08/12', '24/06', '21/04'];
		return in_array($oData->format('d/m'), $aDatasEspeciais);
	}

}