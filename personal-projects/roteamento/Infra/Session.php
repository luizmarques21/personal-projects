<?php

namespace Roteamento\Infra;
	
class Session {
		
	public function cadastraSessao(string $sTipo, array $aDados) {
		$_SESSION[$sTipo][] = $aDados;
		$sHtml = "Cadastro realizado!";
		echo $sHtml;
	}
	
	public function visualizarUmDadoDaSessao(string $sTipo, int $iId): array {
		if (array_key_exists($iId, $_SESSION[$sTipo])) {
			$aPessoa = $_SESSION[$sTipo][$iId];
			return $aPessoa;
		} else {
			$sHtml = "<script> alert('Dados não encontrados!'); </script>";
			echo $sHtml;
		}
	}
		

	public function visualizarDadosDaSessao(string $sTipo): array {
		return $_SESSION[$sTipo];
	}
	
	public function editaSessao(string $sTipo, int $iId, array $aPessoas): void {
		if (array_key_exists($iId,$_SESSION[$sTipo])) {
			$_SESSION[$sTipo][$iId] = array_replace($_SESSION[$sTipo][$iId], $aPessoas);
			echo "<script> alert('Dados Atualizados!'); </script>";
		} else {
			echo "<script> alert('Dados não encontrados'); </script>";
		}
	}
		

	public function excluirSessao(string $sTipo, int $iId): void {
		if (array_key_exists($iId, $_SESSION[$sTipo])) {
			unset($_SESSION[$sTipo][$iId]);
			$sHtml = "<script> alert('Removido!'); </script>";
		} else {
			$sHtml = "<script> alert('Dados não encontrados!'); </script>";
		}
		echo $sHtml;
	}
}