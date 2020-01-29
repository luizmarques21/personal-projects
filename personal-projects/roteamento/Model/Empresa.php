<?php

require_once __DIR__ . '/../vendor/autoload.php';

/**
 * Class Empresa
 * @version 1.0.0
 */
class Empresa {
		
	private $sCnpj;
	private $sRazaoSocial;
	private $sNomeFantasia;
	private $sEmail;
	private $sTelefone;
	private $aEmpresa;
	private $oDAO;
	
	/**
	 * Empresa constructor.
	 * @param $sCnpj
	 * @param $sRazaoSocial
	 * @param $sNomeFantasia
	 * @param $sEmail
	 * @param $sTelefone
	 * @since 1.0.0
	 */
	public function __construct($sCnpj, $sRazaoSocial, $sNomeFantasia, $sEmail, $sTelefone) {
		$this->sCnpj = $sCnpj;
		$this->sRazaoSocial = $sRazaoSocial;
		$this->sNomeFantasia = $sNomeFantasia;
		$this->sEmail = $sEmail;
		$this->sTelefone = $sTelefone;
		$this->oDAO = new empresaDAO();
		$this->aEmpresa = array('cnpj' => $this->sCnpj, 'razao_social' => $this->sRazaoSocial,
			'nome_fantasia' => $this->sNomeFantasia, 'email' => $this->sEmail, 'telefone' => $this->sTelefone);
	}
	
	/**
	 * Cadastra uma nova empresa
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function cadastrarEmpresa(): void {
		$this->oDAO->saveEmpresa($this->aEmpresa);
	}
	
	/**
	 * Edita uma empresa pelo seu ID
	 *
	 * @param int $iId
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function editarEmpresa(int $iId): void {
		$this->oDAO->replaceEmpresa($iId, $this->aEmpresa);
	}
	
}