<?php

/**
 * Class Functions
 * @version 1.0.0
 */
class Functions {
	
	/**
	 * Remove a mascara de um campo telefone
	 *
	 * @param string $sTelefone
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function RemoveMascaraTelefone(string $sTelefone): string {
		$sNovoTelefone = substr($sTelefone, 1, 2);
		$sNovoTelefone .= substr($sTelefone, 4, 4);
		$sNovoTelefone .= substr($sTelefone, 9, 4);
		
		return $sNovoTelefone;
	}
	
	/**
	 * Remove a mascara de um campo celular
	 *
	 * @param string $sCelular
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function RemoveMascaraCelular(string $sCelular): string {
		$sNovoCelular = substr($sCelular, 1, 2);
		$sNovoCelular .= substr($sCelular, 4, 5);
		$sNovoCelular .= substr($sCelular, 10, 4);
		
		return $sNovoCelular;
	}
	
	/**
	 * Remove a mascara de um campo CPF
	 *
	 * @param string $sCPF
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function RemoveMascaraCPF(string $sCPF): string {
		$sNovoCPF = substr($sCPF, 0, 3);
		$sNovoCPF .= substr($sCPF, 4, 3);
		$sNovoCPF .= substr($sCPF, 8, 3);
		$sNovoCPF .= substr($sCPF, 12, 2);
		
		return $sNovoCPF;
	}
	
	/**
	 * Valida um CPF
	 *
	 * @param string $sCPF
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function ValidaCPF(string $sCPF): void {
		if(empty($sCPF)) {
			throw new Exception('CPF invalido');
		}
		
		if (strlen($sCPF) != 11) {
			throw new Exception('CPF invalido');
		} else
			if ($sCPF == '00000000000' ||
				$sCPF == '11111111111' ||
				$sCPF == '22222222222' ||
				$sCPF == '33333333333' ||
				$sCPF == '44444444444' ||
				$sCPF == '55555555555' ||
				$sCPF == '66666666666' ||
				$sCPF == '77777777777' ||
				$sCPF == '88888888888' ||
				$sCPF == '99999999999'
			) {
			throw new Exception('CPF invalido');
		} else {
			for ($iT = 9; $iT < 11; $iT++) {
				for ($iDig = 0, $iChar = 0; $iChar < $iT; $iChar++) {
					$iDig += $sCPF[$iChar] * (($iT + 1) - $iChar);
				}
				$iDig = ((10 * $iDig) % 11) % 10;
				if ($sCPF[$iChar] != $iDig) {
					throw new Exception('CPF invalido');
				}
			}
		}
	}
		
}