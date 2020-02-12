<?php

class View {
	
	private $aDados;
	
	public function __construct() {
		$this->aDados['sMensagem'] = '';
		$this->aDados['sTitulo'] = '';
	}
	
	public function exibeTemplate(string $sTemplate) {
		extract($this->aDados);
		include_once 'View/' . $sTemplate;
	}
	
	public function adicionaVariavel(string $sNomeVariavel, $mValorVariavel) {
		$this->aDados[$sNomeVariavel] = $mValorVariavel;
	}
	
	public function setTitulo(string $sTitulo) {
		$this->aDados['sTitulo'] = $sTitulo;
	}
	
	public function setMensagem(string $sMensagem) {
		$this->aDados['sMensagem'] = $sMensagem;
	}
	
}
