<?php

namespace Alura\Cursos\Entity;

/**
 * @Entity
 * @Table(name="usuarios")
 */
class Usuario
{
    /**
     * @Id
     * @GeneratedValue
     * @Column(type="integer")
     */
    private $id;
    /**
     * @Column(type="string")
     */
    private $email;
    /**
     * @Column(type="string")
     */
    private $senha;

    public function senhaEstaCorreta(string $senhaPura): bool
    {
        $senhaPura = md5($senhaPura);
        if ($senhaPura == $this->senha)
        	return true;
        else
        	return false;
    }
}
