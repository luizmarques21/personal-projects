<?php

namespace Mensagem;

class MensagemQuintaStrategy implements MensagemInterface {

	public function imprimirMensagem(): string {
		return 'Hoje é quinta!';
	}

}