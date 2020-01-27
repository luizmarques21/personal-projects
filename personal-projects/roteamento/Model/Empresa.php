<?php

namespace Roteamento\Model;

use Roteamento\DAO\empresaDAO as EmpresaDAO;

class Empresa {
		
	private $sCnpj;
	private $sRazaoSocial;
	private $sNomeFantasia;
	private $sEmail;
	private $sTelefone;
		
	public function __construct($sCnpj, $sRazaoSocial, $sNomeFantasia, $sEmail, $sTelefone) {
		$this->sCnpj = $sCnpj;
		$this->sRazaoSocial = $sRazaoSocial;
		$this->sNomeFantasia = $sNomeFantasia;
		$this->sEmail = $sEmail;
		$this->sTelefone = $sTelefone;
	}
		

	public function getCnpj(): string {
		return $this->sCnpj;
	}
		

	public function getRazaoSocial(): string {
		return $this->sRazaoSocial;
	}
	

	public function getNomeFantasia(): string {
		return $this->sNomeFantasia;
	}
		

	public function getEmail(): string {
		return $this->sEmail;
	}
		

	public function getTelefone(): string {
		return $this->sTelefone;
	}
		

	public function cadastrarEmpresa(): void {
		$aEmpresas = array('cnpj' => $this->sCnpj, 'razao social' => $this->sRazaoSocial,
			'nome fantasia' => $this->sNomeFantasia, 'email' => $this->sEmail, 'telefone' => $this->sTelefone);
		$oEmpresaDao = new empresaDAO();
		$oEmpresaDao->inserirEmpresa($aEmpresas);
	}
	

	public function editarEmpresa(int $iId): void {
		$aEmpresas = array('cnpj' => $this->sCnpj, 'razao social' => $this->sRazaoSocial,
			'nome fantasia' => $this->sNomeFantasia, 'email' => $this->sEmail, 'telefone' => $this->sTelefone);
		$oEmpresaDao = new empresaDAO();
		$oEmpresaDao->editarEmpresa($iId, $aEmpresas);
	}
	

	public function excluirEmpresa(int $iId): void {
		$oEmpresaDao = new empresaDAO();
		$oEmpresaDao->excluirEmpresa($iId);
	}
	
}