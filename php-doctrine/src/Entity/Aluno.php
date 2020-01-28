<?php

namespace Alura\Doctrine\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;

/**
 * Class Aluno
 * @Entity(repositoryClass="Alura\Doctrine\Repository\AlunoRepository")
 * @package Alura\Doctrine\Entity
 * @version 1.0.0
 */
class Aluno {
	
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
	private $nome;
	/**
	 * @var
	 * @OneToMany(targetEntity="Telefone", mappedBy="aluno", cascade={"remove", "persist"}, fetch="EAGER")
	 */
	private $telefones;
	/**
	 * @ManyToMany(targetEntity="Curso", mappedBy="alunos")
	 */
	private $cursos;
	
	public function __construct() {
		$this->telefones = new ArrayCollection();
		$this->cursos = new ArrayCollection();
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
	
	public function addTelefone(Telefone $telefone)
	{
		$this->telefones->add($telefone);
		$telefone->setAluno($this);
		
		return $this;
	}
	
	public function getTelefones(): Collection
	{
		return $this->telefones;
	}
	
	/**
	 * Descreva o método
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return Curso[]
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getCursos(): Collection
	{
		return $this->cursos;
	}
	
	public function addCurso(Curso $curso): self
	{
		if ($this->cursos->contains($curso)) {
			return $this;
		}
		
		$this->cursos->add($curso);
		$curso->addAluno($this);
		
		return $this;
	}
		
}