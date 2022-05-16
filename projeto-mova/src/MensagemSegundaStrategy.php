<?php

namespace Mensagem;

class MensagemSegundaStrategy implements MensagemInterface {

	public function imprimirMensagem(): string {
		return 'Hoje é segunda!';
	}

}