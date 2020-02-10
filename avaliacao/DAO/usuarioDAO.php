<?php

/**
 * Class usuarioDAO
 * @version 1.0.0
 */
class usuarioDAO {
	
	private $oDBHandler;
	
	/**
	 * usuarioDAO constructor.
	 * @since 1.0.0
	 */
	public function __construct() {
		$this->oDBHandler = new MoobiDataBaseHandler();
	}
	
	/**
	 * Pesquisa um usuario pelo nome
	 *
	 * @param string $sUser
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Usuario
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByUsername(string $sUser): Usuario {
		$sQuery = 'SELECT * FROM usi_usuario WHERE usi_login = ?';
		$aResultado = $this->oDBHandler->queryOne($sQuery, [$sUser]);
		return Usuario::createFromArray($aResultado);
	}
	
	/**
	 * Pesquisa todos os usuarios cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findAll(): array {
		$sQuery = 'SELECT * FROM usi_usuario';
		return $this->oDBHandler->query($sQuery);
	}
	
	/**
	 * Pesquisa um usuario pelo ID
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Usuario
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function findByID(int $iID): Usuario {
		$sQuery = 'SELECT * FROM usi_usuario WHERE usi_id = ?';
		$aUsuario = $this->oDBHandler->queryOne($sQuery, [$iID]);
		return Usuario::createFromArray($aUsuario);
	}
	
	/**
	 * Cadastra um usuario no banco
	 *
	 * @param array $aDados
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function save(array $aDados): bool {
		$sQuery = 'INSERT INTO usi_usuario (usi_login, usi_senha, usi_tipo_usuario) VALUES (?, ?, ?)';
		return $this->oDBHandler->execute($sQuery, $aDados);
	}
	
	/**
	 * Exclui um usuario do banco
	 *
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function delete(int $iID): bool {
		$sQuery = 'DELETE FROM usi_usuario WHERE usi_id = ?';
		return $this->oDBHandler->execute($sQuery, [$iID]);
	}
	
	/**
	 * Atualiza um usuario no banco
	 *
	 * @param array $aDados
	 * @param int $iID
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function replace(array $aDados, int $iID): bool {
		$sQuery = 'UPDATE usi_usuario SET usi_login = ?, usi_senha = ?, usi_tipo_usuario = ? WHERE usi_id = ?';
		$aDados = array_merge($aDados, [$iID]);
		return $this->oDBHandler->execute($sQuery, $aDados);
		
	}
}
