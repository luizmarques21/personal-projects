<?php

/**
 * Class MoobiDataBaseHandler
 * @version 1.0.0
 */
class MoobiDataBaseHandler {
	
	private $rConexao;
	private $oConfig;
	private $bFalha = false;
	private $sNomeBanco;
	private $sHost;
	private $sUsuario;
	private $sSenha;
	private $iPorta;
	
	/**
	 * MoobiDataBaseHandler constructor.
	 * @since 1.0.0
	 */
	public function __construct(JSONConfig $oConfig) {
		$this->oConfig = $oConfig;
		$aConfig = $this->oConfig->loadConfig('DB');
		
		$this->sHost = $aConfig['hostname'];
		$this->iPorta = $aConfig['port'];
		$this->sUsuario = $aConfig['username'];
		$this->sSenha = $aConfig['password'];
		$this->sNomeBanco = $aConfig['database'];
		
		$sDSN = 'mysql:host=' . $this->sHost . ';dbname=' . $this->sNomeBanco . ';port=' . $this->iPorta;
		try {
			$this->rConexao = new PDO($sDSN, $this->sUsuario, $this->sSenha);
			$this->rConexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (PDOException $oErro) {
			echo $oErro->getMessage();
		}
	}
	
	/**
	 * Inicia uma transação com o banco de dados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function startTransaction(): void {
		$this->rConexao->beginTransaction();
	}
	
	/**
	 * Finaliza uma transação com o banco de dados
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function endTransaction(): void {
		if (!$this->bFalha)
			$this->rConexao->commit();
		else
			$this->rConexao->rollBack();
	}
	
	/**
	 * Retorna um booleano caso uma transação tenha dado falha ou não
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function failTransaction(): bool {
		$this->bFalha = true;
		return $this->bFalha;
	}
	
	/**
	 * Retorna apenas a primeira linha de uma query
	 *
	 * @param string $sSQL
	 * @param array $aParams
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function queryOne(string $sSQL, array $aParams) {
		$mSTMT = $this->rConexao->prepare($sSQL);
		$mSTMT = $this->bindParametros($mSTMT, $aParams);
		$mSTMT->execute();
		return $mSTMT->fetch();
	}
	
	/**
	 * Retorna todos os dados de uma query
	 *
	 * @param string $sSQL
	 * @param array|null $aParams
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return array
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function query(string $sSQL, array $aParams = null): array {
		$mSTMT = $this->rConexao->prepare($sSQL);
		if ($aParams)
			$mSTMT = $this->bindParametros($mSTMT, $aParams);
		$mSTMT->execute();
		return $mSTMT->fetchAll();
	}
	
	/**
	 * Executa uma query no banco
	 *
	 * @param string $sSQL
	 * @param array $aParams
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function execute(string $sSQL, array $aParams): bool {
		$mSTMT = $this->rConexao->prepare($sSQL);
		if ($aParams)
			$mSTMT = $this->bindParametros($mSTMT, $aParams);
		return $mSTMT->execute();
	}
	
	/**
	 * Associa os parametros à consulta SQL que irá ser executada
	 *
	 * @param PDOStatement $mStatement
	 * @param array $aParametros
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return PDOStatement
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	private function bindParametros(PDOStatement $mStatement, array $aParametros): PDOStatement {
		$iChave = 1;
		foreach ($aParametros as $aParametro) {
			$mStatement->bindValue($iChave, $aParametro);
			$iChave++;
		}
		return $mStatement;
	}
	
}
