<?php

/**
 * Class Usuario
 * @version 1.0.0
 */
class Usuario {
	
	private $iID;
	private $sLogin;
	private $sSenha;
	private $sTipoUsuario;
	private $oDAO;
	
	public function __construct(string $sLogin, string $sSenha, string $sTipoUsuario) {
		$this->sLogin = $sLogin;
		$this->sSenha = $sSenha;
		$this->sTipoUsuario = $sTipoUsuario;
		$this->oDAO = new usuarioDAO();
	}
	
	/**
	 * Cadastra um novo usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function saveUsuario(): void {
		$this->codificaSenha();
		$aDados = $this->createToArray();
		$this->oDAO->save($aDados);
	}
	
	/**
	 * Exclui um usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function deleteUsuario(): void {
		$this->oDAO->delete($this->iID);
	}
	
	/**
	 * Atualiza os dados do usuario
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replaceUsuario(int $iID): void {
		$this->setID($iID);
		$this->atualizaSenha();
		$this->oDAO->replace($this->createToArray(), $iID);
	}
	
	/**
	 * Cria um objeto Usuario a partir de um array
	 *
	 * @param $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Usuario
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public static function createFromArray(array $aDados): Usuario {
		$oUsuario = new Usuario($aDados['usi_login'], $aDados['usi_senha'], $aDados['usi_tipo_usuario']);
		$oUsuario->setID($aDados['usi_id']);
		return $oUsuario;
	}
	
	/**
	 * Retorna o login usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getLogin(): string {
		return $this->sLogin;
	}
	
	/**
	 * Retorna o id
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return int
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getID(): int {
		return $this->iID;
	}
	
	/**
	 * Retorna o tipo do usuario
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getTipo(): string {
		return $this->sTipoUsuario;
	}
	
	/**
	 * Retorna a senha
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return string
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getSenha(): string {
		return $this->sSenha;
	}
	
	/**
	 * Define o id
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function setID(int $iID): void {
		$this->iID = $iID;
	}
	
	/**
	 * Aplica hash na senha
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function codificaSenha(): void {
		$this->sSenha = password_hash($this->sSenha, PASSWORD_DEFAULT);
	}
	
	/**
	 * Retorna um array com os dados do objeto
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function createToArray(): array {
		return array('usi_login'=>$this->sLogin, 'usi_senha'=>$this->sSenha, 'usi_tipo_usuario'=>$this->sTipoUsuario);
	}
	
	/**
	 * Verifica se o usuario deixou a senha em branco na tela de atualização
	 * Em caso positivo, a senha já cadastrada permanece inalterada
	 * Em casa negativo, é aplicado o hash na nova senha para posterior atualização no banco
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function atualizaSenha(): void {
		if (strlen($this->sSenha) <= 0) {
			$oUsuario = $this->oDAO->findByID($this->iID);
			$this->sSenha = $oUsuario->getSenha();
		} else {
			$this->codificaSenha();
		}
	}
	
	/**
	 * Verifica se um usuario é ADM
	 *
	 * @param string $sNome
	 * @return bool
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public static function isADM(string $sNome): bool {
		$sTipo = (new usuarioDAO())->findByUsername($sNome)->getTipo();
		return $sTipo == 'A' ? true : false;
	}
	
}
