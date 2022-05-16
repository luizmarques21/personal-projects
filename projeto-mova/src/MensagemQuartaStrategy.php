<?php

namespace Mensagem;

class MensagemQuartaStrategy implements MensagemInterface {

	public function imprimirMensagem(): string {
		return 'Hoje é quarta!';
	}

}