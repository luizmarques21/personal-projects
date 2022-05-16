<?php

namespace Mensagem;

class MensagemSabadoStrategy implements MensagemInterface {

	public function imprimirMensagem(): string {
		return 'Hoje é sábadow!';
	}

}