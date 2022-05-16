<?php

namespace Mensagem;

class MensagemTercaStrategy implements MensagemInterface {

	public function imprimirMensagem(): string {
		return 'Hoje é terça!';
	}

}