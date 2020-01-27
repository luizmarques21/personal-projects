<?php

require_once __DIR__ . '/../vendor/autoload.php';

use Roteamento\Model\Empresa;
use Roteamento\DAO\empresaDAO;

class empresaController {
	
	public function view(): void {
		include_once __DIR__ . '/../View/empresaView.php';
	}
	
	private function carregarEmpresaDaRequisicao(array $aDados): Empresa {
			return new Empresa($aDados['cnpj'], $aDados['razaoSocial'], $aDados['nomeFantasia'], $aDados['email']
				, $aDados['telefone']);
		}

		public function cadastrar(array $aDados): void {
			$oEmpresa = $this->carregarEmpresaDaRequisicao($aDados);
			$oEmpresa->cadastrarEmpresa();
		}
		

		public function visualizar(array $aDados): void {
			$oEmpresaDao = new empresaDAO();
			$aEmpresa = $oEmpresaDao->visualizarEmpresa($aDados['id']);
			include_once __DIR__ . '/../View/lista-empresa.php';
		}
		

		public function visualizarTodas(): void {
			include_once __DIR__ . '/../View/lista-empresa.php';
			$oEmpresaDao = new empresaDAO();
			$loEmpresaDao = $oEmpresaDao->visualizarTodasEmpresas();
		}
		

		public function editar(array $aDados) : void {
			$oEmpresa = $this->carregarEmpresaDaRequisicao($aDados);
			$oEmpresa->editarEmpresa($aDados['id']);
		}
		

		public function excluir(array $aDados): void {
			$oEmpresa = $this->carregarEmpresaDaRequisicao($aDados);
			$oEmpresa->excluirEmpresa($aDados['id']);
		}
		
		public function index() {
			include_once __DIR__ . '/../View/lista-empresa.php';
			$oEmpresaDao = new empresaDAO();
			$loEmpresaDao = $oEmpresaDao->visualizarTodasEmpresas();
		}
		
	}