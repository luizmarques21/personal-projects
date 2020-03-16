<?php

/**
 * Class usuarioDAO
 * @version 1.1.1
 */
class usuarioDAO {
	
	private $oDBHandler;
	
	/**
	 * usuarioDAO constructor.
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Implementado o uso do DC
	 */
	public function __construct() {
		$this->oDBHandler = DependencyContainer::getDBHandler();
	}
	
	/**
	 * Pesquisa um usuario pelo nome
	 *
	 * @param string $sUser
	 * @return Usuario
	 *
	 * @throws Exception
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 */
	public function findByUsername(string $sUser): Usuario {
		$sQuery = 'SELECT * FROM usi_usuario WHERE usi_login = ? AND usi_data_remocao IS NULL';
		$aResultado = $this->oDBHandler->queryOne($sQuery, [$sUser]);
		if (is_bool($aResultado))
			throw new Exception('Usuario não encontrado');
		return Usuario::createFromArray($aResultado);
	}
	
	/**
	 * Pesquisa todos os usuarios cadastrados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.1 - Adicionado parametro na query para filtrar registros removidos
	 */
	public function findAll(): array {
		$sQuery = 'SELECT * FROM usi_usuario WHERE usi_data_remocao IS NULL';
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
		$sQuery = 'SELECT * FROM usi_usuario WHERE usi_id = ? AND usi_data_remocao IS NULL';
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
	 * @since 1.1.1 - Alterado metodo para exclusao logica
	 */
	public function delete(int $iID): bool {
		$sQuery = 'UPDATE usi_usuario SET usi_data_remocao = ? WHERE usi_id = ?';
		return $this->oDBHandler->execute($sQuery, [date('Y-m-d H:i:s'), $iID]);
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
