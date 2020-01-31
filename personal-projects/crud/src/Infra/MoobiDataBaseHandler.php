<?php

/**
 * Class MoobiDataBaseHandler
 * @version 1.0.0
 */
class MoobiDataBaseHandler {
	
	private $rConexao;
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
	public function __construct() {
		$rConfig = file_get_contents('config1.json');
		var_dump($rConfig);
		//$rConfig = $rConfig->loadConfig('DB');
		
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
			//echo 'Falha na conexão com o banco de dados';
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
	 * @return bool
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function queryOne(string $sSQL, array $aParams): bool {
		$mSTMT = $this->rConexao->prepare($sSQL);
		$iChave = 1;
		foreach ($aParams as $aParam) {
			$mSTMT->bindValue($iChave, $aParam);
			$iChave++;
		}
		$mSTMT->execute();
		$mResult = $mSTMT->fetch();
		return $mResult;
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
		$iChave = 1;
		foreach ($aParams as $aParam) {
			$mSTMT->bindValue($iChave, $aParam);
			$iChave++;
		}
		$mSTMT->execute();
		$aResult = $mSTMT->fetchAll();
		return $aResult;
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
		$iChave = 1;
		if ($aParams)
			foreach ($aParams as $aParam) {
				$mSTMT->bindValue($iChave, $aParam);
				$iChave++;
			}
		return $mSTMT->execute();
	}
	
}
