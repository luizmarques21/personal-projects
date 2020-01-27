<?php
	
class Pessoa{
		
	private $sNome;
	private $tDataNascimento;
	private $iIdade;
	private $sCpf;
	
	public function __construct($sNome, $tDataNascimento, $sCpf) {
		$this->sNome = $sNome;
		$this->tDataNascimento = $tDataNascimento;
		$this->sCpf = $sCpf;
	}
	

	public function getNome():string {
		return $this->sNome;
	}

	public function getDataNascimento(): string {
		return $this->tDataNascimento;
	}

	public function getIdade(): int {
		return $this->iIdade;
	}
	
	public function setIdade(int $iIdade): void {
		$this->iIdade = $iIdade;
	}
	
	public function getCpf(): string {
		return $this->sCpf;
	}
		

	public function cadastrarPessoa(): void {
		$this->calculaIdade();
		$aPessoas = array('nome' => $this->sNome, 'data_nascimento' => $this->tDataNascimento,
			'idade' => $this->iIdade, 'cpf' => $this->sCpf);
		$oPessoaDao = new PessoaDao();
		$oPessoaDao->inserirPessoa($aPessoas);
	}
		

	public function editarPessoa(int $iId): void {
		$this->calculaIdade();
		$aPessoas = array('nome'=> $this->sNome, 'data_nascimento'=>$this->tDataNascimento,
			'idade'=>$this->iIdade, 'cpf'=>$this->sCpf);
		$oPessoaDao = new PessoaDao();
		$oPessoaDao->editarPessoa($iId, $aPessoas);
	}
		

	public function excluirPessoa(int $iId): void {
		$oPessoaDao = new PessoaDao();
		$oPessoaDao->excluirPessoa($iId);
	}
		

	public function calculaIdade(): void {
		$tData = $this->tDataNascimento;
		list($iAno, $iMes, $iDia) = explode('/', $tData);
		$tHoje = mktime(0, 0, 0, date('m'), date('d'), date('Y'));
		$tNascimento = mktime(0, 0, 0, $iMes, $iDia, $iAno);
		$this->iIdade = floor((((($tHoje - $tNascimento) / 60) / 60) / 24) / 365.25);
	}
		
}