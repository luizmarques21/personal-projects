<?php
	
namespace Alura\Doctrine\Helper;
	
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\Tools\Setup;

class EntityManagerFactory {
	
	/**
	 * Descreva o método
	 *
	 * @author Luiz Mariel luizmariel@moobitech.com.br
	 * @return EntityManagerInterface
	 * @throws \Doctrine\ORM\ORMException
	 *
	 * @since 1.0.0 - Definição do versionamento da classe
	 */
	public function getEntityManager(): EntityManagerInterface {
		$rootDir = __DIR__ . '/../..';
		$config = Setup::createAnnotationMetadataConfiguration([$rootDir . '/src'], true);
		$connection = ['driver'=>'pdo_sqlite', 'path'=>$rootDir . '/var/data/banco.sqlite'];
		return EntityManager::create($connection, $config);
	}
		
}