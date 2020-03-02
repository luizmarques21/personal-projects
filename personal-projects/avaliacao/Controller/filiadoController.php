<?php

class filiadoController {
	
	private $oSessao;
	private $oView;
	
	public function __construct() {
		$this->oSessao = DependencyContainer::getSessao();
		$this->oView = DependencyContainer::getView();
		DependencyContainer::checaUsuarioAtivo();
	}
	
	public function index(): void {
		$aFiliados = (new filiadoDAO())->findAll();
		$this->oView->setTitulo('Filiados');
		$this->oView->adicionaVariavel('aFiliados', $aFiliados);
		$this->oView->exibeTemplate('filiados/listarFiliados.php', 'cabecalho.php');
	}
	
	public function cadastrar(): void {
		$this->oView->setTitulo('Cadastrar novo filiado');
		$this->oView->exibeTemplate('filiados/inserirFiliado.php', 'cabecalho.php');
	}
	
}