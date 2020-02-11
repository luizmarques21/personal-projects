<?php

class View {
	
	public function exibe($sTemplate, $aDados = null) {
		require_once 'View/' . $sTemplate . '.php';
	}
	
}
