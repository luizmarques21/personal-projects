<?php
	
	class PessoaDao {
		
		public function __construct() {
			$this->oSessao = new Sessao();
		}
		
		public function inserirPessoa(array $aDados): void {
			$this->oSessao->cadastraSessao('pessoas', $aDados);
		}
		

		public function editarPessoa(int $iId, array $aDados): void {
			$this->oSessao->editaSessao('pessoas', $iId, $aDados);
		}
		

		public function visualizarPessoa($iId): array {
			return $this->oSessao->visualizarUmDadoDaSessao('pessoas', $iId);
		}
		

		public function visualizarTodasPessoa(): Collection {
			$aPessoas = $this->oSessao->visualizarDadosDaSessao('pessoas');
			$loPessoa = new Collection();
			foreach ($aPessoas as $aPessoa) {
				$oPessoa = new Pessoa($aPessoa['nome'], $aPessoa['data_nascimento'], $aPessoa['cpf']);
				$oPessoa->setIdade($aPessoa['idade']);
				$loPessoa->addItem($oPessoa);
			}
			return $loPessoa;
		}
		

		public function excluirPessoa($iId): void {
			$this->oSessao->excluirSessao('pessoas', $iId);
		}
		
	}