<?php

class filiadoController {
	
	private $oSessao;
	private $oView;
	private $oGlobals;
	
	public function __construct(Globals $oGlobals) {
		$this->oSessao = DependencyContainer::getSessao();
		$this->oView = DependencyContainer::getView();
		DependencyContainer::checaUsuarioAtivo();
		$this->oGlobals = $oGlobals;
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
	
	public function excluir() {
		$iFiliadoID = $this->oGlobals->get('id');
		$oFiliado = (new filiadoDAO())->findByID($iFiliadoID);
		$oFiliado->deleteFiliado();
		$this->oSessao->setMensagem('Filiado excluido com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
	public function editar() {
		$iFiliadoID = $this->oGlobals->get('id');
		$oFiliado = (new filiadoDAO())->findByID($iFiliadoID);
		$this->oView->setTitulo('Editar filiado');
		$this->oView->adicionaVariavel('oFiliado', $oFiliado);
		$this->oView->exibeTemplate('filiados/editarFiliado.php', 'cabecalho.php');
	}
	
	public function postCadastra() {
		$oFiliado = new Filiado(
			$this->oGlobals->post('nome_filiado'),
			$this->oGlobals->post('cpf_filiado'),
			$this->oGlobals->post('rg_filiado'),
			$this->oGlobals->post('data_nascimento_filiado'),
			$this->oGlobals->post('empresa_filiado'),
			$this->oGlobals->post('cargo_filiado'),
			$this->oGlobals->post('situacao_filiado'),
			$this->oGlobals->post('telefone_filiado'),
			$this->oGlobals->post('celular_filiado')
		);
		$oFiliado->setDataAtualizacao(new DateTimeImmutable());
		
		if (!empty($this->oGlobals->post('dependente_filiado'))) {
			$aDependentes = json_decode($this->oGlobals->post('dependente_filiado'));
			$oFiliado->setDependentes($aDependentes);
		}
		
		try {
			$oFiliado->saveFiliado();
			$this->oSessao->setMensagem('Filiado cadastrado com sucesso');
		} catch (Exception $oException){
			$this->oSessao->setMensagem($oException->getMessage());
		} finally {
			header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
		}
		
	}
	
	public function postEdita() {
		$oFiliado = new Filiado(
			$this->oGlobals->post('nome_filiado'),
			$this->oGlobals->post('cpf_filiado'),
			$this->oGlobals->post('rg_filiado'),
			$this->oGlobals->post('data_nascimento_filiado'),
			$this->oGlobals->post('empresa_filiado'),
			$this->oGlobals->post('cargo_filiado'),
			$this->oGlobals->post('situacao_filiado'),
			$this->oGlobals->post('telefone_filiado'),
			$this->oGlobals->post('celular_filiado')
		);
		$oFiliado->setDataAtualizacao(new DateTimeImmutable());
		$oFiliado->replaceFiliado($this->oGlobals->post('id'));
		Sessao::setMensagem('Filiado atualizado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
	public function cadastraDependente() {
		$oDependente = new Dependente(
			$this->oGlobals->post('nome_dependente'),
			$this->oGlobals->post('data_nascimento_dependente'),
			$this->oGlobals->post('parentesco_dependente')
		);
		$oDependente->setFiliado($this->oGlobals->post('filiado'));
		$oDependente->saveDependente();
		Sessao::setMensagem('Dependente cadastrado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
	public function excluiDependente($iID) {
		$oDependente = (new dependenteDAO())->findByID($iID);
		$oDependente->deleteDependente();
		Sessao::setMensagem('Dependente excluido com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
	public function editadependente() {
		$oDependente = new Dependente(
			$this->oGlobals->post('nome_dependente'),
			$this->oGlobals->post('data_nascimento_dependente'),
			$this->oGlobals->post('parentesco_dependente')
		);
		$oDependente->setFiliado($this->oGlobals->post('filiado'));
		$oDependente->replaceDependente($this->oGlobals->post('id-dependente'));
		Sessao::setMensagem('Dependente atualizado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
}