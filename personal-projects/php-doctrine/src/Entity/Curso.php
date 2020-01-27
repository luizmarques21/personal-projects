<?php
	
namespace Alura\Doctrine\Entity;

use Doctrine\Common\Collections\ArrayCollection;

/**
 * Class Curso
 * @Entity
 * @package Alura\Doctrine\Entity
 * @version 1.0.0
 */
class Curso	{
	
	/**
	 * @Id
	 * @GeneratedValue
	 * @Column(type="integer")
	 *
	 */
	private $id;
	/**
	 * @Column(type="string")
	 */
	private $nome;
	/**
	 * @ManyToMany(targetEntity="Aluno", inversedBy="cursos")
	 */
	private $alunos;
	
	public function __construct() {
		$this->alunos = new ArrayCollection();
	}
	
	public function getId()
	{
		return $this->id;
	}

	public function getNome()
	{
		return $this->nome;
	}
	
	public function setNome($nome): void
	{
		$this->nome = $nome;
	}

	public function getAlunos()
	{
		return $this->alunos;
	}
	
	public function addAluno(Aluno $aluno)
	{
		if ($this->alunos->contains($aluno)) {
			return $this;
		}
		
		$this->alunos->add($aluno);
		$aluno->addCurso($this);
		
		return $this;
	}
		
}