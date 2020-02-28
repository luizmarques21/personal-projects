<?php

/**
 * Class View
 * @version 1.0.0
 */
class View {
	
	private $aDados = [];
	
	/**
	 * Exibe o template da pagina
	 *
	 * @param string $sTemplate
	 * @param string $sCabecalho
	 * @return void
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @since 1.0.0 - Definição do versionamento da classe
	 * @since 1.1.0 - Adicionado parametro e metodo para adicionar o cabeçalho
	 */
	public function exibeTemplate(string $sTemplate, string $sCabecalho = null): void {
		extract($this->aDados);
		if (!empty($sCabecalho))
			$this->exibeCabecalho($sCabecalho);
		include_once 'View/' . $sTemplate;
		include_once 'View/rodape.php';
	}
	
	/**
	 * Exibe o cabeçalho da pagina
	 *
	 * @param string $sCabecalho
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function exibeCabecalho(string $sCabecalho) {
		extract($this->aDados);
		include_once 'View/' . $sCabecalho;
	}
	
	/**
	 * Adiciona as variaveis que serão necessarias no template
	 *
	 * @param string $sNomeVariavel
	 * @param $mValorVariavel
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function adicionaVariavel(string $sNomeVariavel, $mValorVariavel) {
		$this->aDados[$sNomeVariavel] = $mValorVariavel;
	}
	
	/**
	 * Define o titulo que irá ser exibido na pagina
	 *
	 * @param string $sTitulo
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return void
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function setTitulo(string $sTitulo) {
		$this->aDados['sTitulo'] = $sTitulo;
	}
	
}
