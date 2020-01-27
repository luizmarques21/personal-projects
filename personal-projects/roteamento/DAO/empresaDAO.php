<?php

namespace Roteamento\DAO;

use Roteamento\Infra\Session;
use Roteamento\Infra\Collection;
use Roteamento\Model\Empresa;
	
	class empresaDAO {
		
		public function __construct() {
			$this->oSessao = new Session();
		}
		

		public function inserirEmpresa(array $aDados) {
			$this->oSessao->cadastraSessao('empresas', $aDados);
		}
		

		public function editarEmpresa(int $iId, array $aDados): void {
			$this->oSessao->editaSessao('empresas', $iId, $aDados);
		}
		

		public function visualizarEmpresa(int $iId): array {
			return $this->oSessao->visualizarUmDadoDaSessao('empresas', $iId);
		}
		

		public function visualizarTodasEmpresas(): Collection {
			$aEmpresas = $this->oSessao->visualizarDadosDaSessao('empresas');
			$loEmpresa = new Collection();
			foreach ($aEmpresas as $aEmpresa) {
				$oEmpresa = new Empresa($aEmpresa['cnpj'], $aEmpresa['razao social'], $aEmpresa['nome fantasia']
					, $aEmpresa['email'], $aEmpresa['telefone']);
				$loEmpresa->addItem($oEmpresa);
			}
			return $loEmpresa;
		}
		

		public function excluirEmpresa(int $iId): void {
			$this->oSessao->excluirSessao('empresas', $iId);
		}
		
	}