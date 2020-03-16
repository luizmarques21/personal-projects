<?php

/**
 * Class filiadoController
 * @version 1.0.0
 */
class filiadoController {
	
	private $oView;
	private $oGlobals;
	
	/**
	 * filiadoController constructor.
	 * @param Globals $oGlobals
	 * @since 1.0.0 - Definição de versionamento da classe
	 */
	public function __construct(Globals $oGlobals) {
		$this->oView = DependencyContainer::getView();
		$this->oGlobals = $oGlobals;
	}
	
	/**
	 * Exibe a tela inicial
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function index(): void {
		$aFiliados = (new filiadoDAO())->findAll();
		$this->oView->setTitulo('Filiados');
		$this->oView->adicionaVariavel('aFiliados', $aFiliados);
		$this->oView->exibeTemplate('filiados/listarFiliados.php', 'cabecalho.php');
	}
	
	/**
	 * Exibe a tela de cadastro
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function cadastrar(): void {
		$this->oView->setTitulo('Cadastrar novo filiado');
		$this->oView->exibeTemplate('filiados/inserirFiliado.php', 'cabecalho.php');
	}
	
	/**
	 * Exclui um filiado
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function excluir(): void {
		$iFiliadoID = $this->oGlobals->get('id');
		$oFiliado = (new filiadoDAO())->findByID($iFiliadoID);
		$oFiliado->deleteFiliado();
		Sessao::setMensagem('Filiado excluido com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
	/**
	 * Exibe a tela de edição
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function editar(): void {
		$iFiliadoID = $this->oGlobals->get('id');
		$oFiliado = (new filiadoDAO())->findByID($iFiliadoID);
		$this->oView->setTitulo('Editar filiado');
		$this->oView->adicionaVariavel('oFiliado', $oFiliado);
		$this->oView->exibeTemplate('filiados/editarFiliado.php', 'cabecalho.php');
	}
	
	/**
	 * Efetua o cadastro do novo filiado
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function postCadastra(): void {
		try {
			$oFiliado = $this->criaFiliado();
			
			$oFiliado->setDataAtualizacao(new DateTimeImmutable());
			
			if (!empty($this->oGlobals->post('dependente_filiado'))) {
				$aDependentes = json_decode($this->oGlobals->post('dependente_filiado'));
				$oFiliado->setDependentes($aDependentes);
			}
			
			$oFiliado->saveFiliado();
			Sessao::setMensagem('Filiado cadastrado com sucesso');
		} catch (Exception $oException){
			Sessao::setMensagem($oException->getMessage());
		} finally {
			header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
		}
		
	}
	
	/**
	 * Atualiza os dados do filiado
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function postEdita(): void {
		try {
			$oFiliado = $this->criaFiliado();
			
			$oFiliado->setDataAtualizacao(new DateTimeImmutable());
			$oFiliado->replaceFiliado($this->oGlobals->post('id'));
			Sessao::setMensagem('Filiado atualizado com sucesso');
		} catch (Exception $oException){
			Sessao::setMensagem($oException->getMessage());
		} finally {
			header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
		}
	}
	
	/**
	 * Cadastra um novo dependente ligado ao filiado
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function cadastraDependente(): void {
		$oDependente = new Dependente(
			$this->oGlobals->post('nome_dependente'),
			$this->oGlobals->post('data_nascimento_dependente'),
			$this->oGlobals->post('parentesco_dependente')
		);
		$oFiliado = (new filiadoDAO())->findByID($this->oGlobals->post('filiado'));
		$oFiliado->adicionaDependente($oDependente);
		Sessao::setMensagem('Dependente cadastrado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
	/**
	 * Exclui um dependente ligado ao filiado
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function excluiDependente(int $iID): void {
		$oDependente = (new dependenteDAO())->findByID($iID);
		$aFiliado = (new filiadoDAO())->findByName($oDependente->getFiliado());
		$oFiliado = Filiado::createFromArray($aFiliado[0]);
		$oFiliado->excluiDependente($oDependente);
		Sessao::setMensagem('Dependente excluido com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
	/**
	 * Atualiza os dados de um dependente ligado ao filiado
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function editadependente(): void {
		$oDependente = new Dependente(
			$this->oGlobals->post('nome_dependente'),
			$this->oGlobals->post('data_nascimento_dependente'),
			$this->oGlobals->post('parentesco_dependente')
		);
		$oFiliado = (new filiadoDAO())->findByID($this->oGlobals->post('filiado'));
		$oFiliado->atualizaDependente($oDependente, $this->oGlobals->post('id-dependente'));
		Sessao::setMensagem('Dependente atualizado com sucesso');
		header("Location: " . CAMINHO_PADRAO_WEB . "filiado/");
	}
	
	/**
	 * Cria um Filiado com os dados recebidos do formulario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Filiado
	 * @throws Exception
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function criaFiliado(): Filiado {
		$sTelefone = Functions::RemoveMascaraTelefone($this->oGlobals->post('telefone_filiado'));
		$sCelular = Functions::RemoveMascaraCelular($this->oGlobals->post('celular_filiado'));
		$sCPF = Functions::RemoveMascaraCPF($this->oGlobals->post('cpf_filiado'));
		Functions::ValidaCPF($sCPF);
		
		$oFiliado = new Filiado(
			$this->oGlobals->post('nome_filiado'),
			$sCPF,
			$this->oGlobals->post('rg_filiado'),
			$this->oGlobals->post('data_nascimento_filiado'),
			$this->oGlobals->post('empresa_filiado'),
			$this->oGlobals->post('cargo_filiado'),
			$this->oGlobals->post('situacao_filiado'),
			$sTelefone,
			$sCelular
		);
		
		return $oFiliado;
	}
	
}