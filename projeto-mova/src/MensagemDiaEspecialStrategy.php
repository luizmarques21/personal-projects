<?php

namespace Mensagem;

class MensagemDiaEspecialStrategy implements MensagemInterface {

	public function imprimirMensagem(): string {
		return 'Hoje é um dia especial!';
	}

}