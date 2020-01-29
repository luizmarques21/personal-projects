<?php

require_once __DIR__ . '/../vendor/autoload.php';

/**
 * Class empresaController
 * @version 1.0.0
 */
class empresaController {
	
	private $oDAO;
	
	/**
	 * empresaController constructor.
	 * @since 1.0.0
	 */
	public function __construct() {
		$this->oDAO = new empresaDAO();
	}
	
	/**
	 * Exibe todas as empresas cadastradas caso não tenha sido passada nenhuma ação
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function index(): void {
		$aEmpresas = $this->oDAO->findAllEmpresas();
		include_once __DIR__ . '/../View/listarEmpresas.php';
		if (empty($aEmpresas))
			echo '<p><a href="cadastrar">Cadastrar nova empresa</a>';
	}
	
	/**
	 * Abre a tela de cadastro de empresa
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function cadastrar(): void {
		include_once __DIR__ . '/../View/inserirEmpresas.php';
	}
	
	/**
	 * Exclui uma empresa
	 *
	 * @param $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function excluir($iID): void {
		$this->oDAO->deleteEmpresa($iID);
	}
	
	/**
	 * Abre a tela de edição de uma empresa
	 *
	 * @param $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function editar($iID): void {
		include_once __DIR__ . '/../View/editarEmpresa.php';
	}
	
}