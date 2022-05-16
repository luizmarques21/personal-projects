<?php

namespace Mensagem;

class MensagemSextaStrategy implements MensagemInterface {

	public function imprimirMensagem(): string {
		return 'Hoje é sexta!';
	}

}