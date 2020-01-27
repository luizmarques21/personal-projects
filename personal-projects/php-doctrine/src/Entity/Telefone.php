<?php

namespace Alura\Doctrine\Entity;

/**
 * Class Telefone
 * @Entity
 * @package Alura\Doctrine\Entity
 * @version 1.0.0
 */
class Telefone {
	
	/**
	 * @var
	 * @Id
	 * @GeneratedValue
	 * @Column(type="integer")
	 */
	private $id;
	/**
	 * @var
	 * @Column(type="string")
	 */
	private $numero;
	/**
	 * @var
	 * @ManyToOne(targetEntity="Aluno")
	 */
	private $aluno;
	
	public function getId()
	{
		return $this->id;
	}
	
	public function getNumero()
	{
		return $this->numero;
	}
	
	public function setNumero($numero): void
	{
		$this->numero = $numero;
	}
	
	public function getAluno()
	{
		return $this->aluno;
	}
	
	public function setAluno($aluno): void
	{
		$this->aluno = $aluno;
	}
	
	
	
}