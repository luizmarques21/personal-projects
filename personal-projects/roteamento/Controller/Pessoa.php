<?php
	
	Class pessoaController{

		public function view(): void {
			include_once 'view/pessoa.php';
		}
		

		private function carregarPessoaDaRequisicao(array $aDados): Pessoa {
			return new Pessoa($aDados['nome'], $aDados['dataNascimento'], $aDados['cpf']);
		}
		

		public function cadastrar(array $aDados): void {
			$oPessoa = $this->carregarPessoaDaRequisicao($aDados);
			$oPessoa->cadastrarPessoa();
		}
		

		public function visualizar(array $aDados): void {
			$oPessoaDao = new PessoaDao();
			$aPessoa = $oPessoaDao->visualizarPessoa($aDados['id']);
			include_once 'view/listarPessoas.php';
		}
		

		public function visualizarTodas(): void {
			$oPessoaDao = new PessoaDao();
			$loPessoaDao = $oPessoaDao->visualizarTodasPessoa();
			include_once 'view/listarPessoas.php';
		}
		

		public function editar(array $aDados): void {
			$oPessoa = $this->carregarPessoaDaRequisicao($aDados);
			$oPessoa->editarPessoa($aDados['id']);
		}
		

		public function excluir(array $aDados): void {
			$oPessoa = $this->carregarPessoaDaRequisicao($aDados);
			$oPessoa->excluirPessoa($aDados['id']);
		}
		
	}