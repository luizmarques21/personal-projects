<?php

namespace Mensagem;

class MensagemDomingoStrategy implements MensagemInterface {

	public function imprimirMensagem(): string {
		return 'Hoje é domingo!';
	}

}