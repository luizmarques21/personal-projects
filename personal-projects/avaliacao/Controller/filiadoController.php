<?php

class filiadoController {
	
	private $oSessao;
	private $oView;
	
	public function __construct() {
		$this->oSessao = new Sessao();
		$this->oView = new View();
	}
	
	public function index(): void {
		if ($this->oSessao->getUsuarioAtivo()) {
			$aFiliados = (new filiadoDAO())->findAll();
			$this->oView->setTitulo('Filiados');
			$this->oView->adicionaVariavel('aFiliados', $aFiliados);
			$this->chamaCabecalho();
			$this->oView->exibeTemplate('filiados/listarFiliados.php');
		} else {
			$this->oSessao->setMensagem('Usuario precisa estar logado');
			header("Location: " . WEBROOT . "login/");
		}
	}
	
	private function chamaCabecalho() {
		$this->oView->adicionaVariavel('sLogado', $this->oSessao->getUsuarioLogado());
		$this->oView->exibeCabecalho('cabecalho.php');
	}
	
}