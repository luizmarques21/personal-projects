<?php
	require_once 'vendor/autoload.php';
	
	$oEmpresaDAO = new empresaDAO();
	$aLista = $oEmpresaDAO->findAllEmpresa();
	
	var_dump($aLista);
	
	//require_once 'src/View/cabecalho.php';
?>
<!--
	<div class="row">
		<div class="col-md-12">
			<h2>Empresas</h2>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-4">
			<a href="categorias-criar.php" class="btn btn-info btn-block">Criar Nova Empresa</a>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			</?php if (count($aLista) > 0): ?>
				<table class="table">
					<thead>
					<tr>
						<th>Id</th>
						<th>Nome</th>
						<th class="acao">Editar</th>
						<th class="acao">Excluir</th>
					</tr>
					</thead>
					<tbody>
					</?php foreach ($aLista as $aLinha): ?>
						<tr>
							<td><a href="categorias-detalhe.php?id=</?php echo $aLinha['cts_id'] ?>" class="btn btn-link"></?php echo $aLinha['cts_id'] ?></a></td>
							<td><a href="categorias-detalhe.php?id=</?php echo $aLinha['cts_id'] ?>" class="btn btn-link"></?php echo $aLinha['cts_nome'] ?></a></td>
							<td><a href="categorias-editar.php?id=</?php echo $aLinha['cts_id'] ?>" class="btn btn-info">Editar</a></td>
							<td><a href="categorias-excluir-post.php?id=</?php echo $aLinha['cts_id'] ?>" class="btn btn-danger">Excluir</a></td>
						</tr>
					</?php endforeach ?>
					</tbody>
				</table>
			</?php else: ?>
				<p>Nenhuma empresa cadastrada</p>
			</?php endif; ?>
		</div>
	</div>
</?php require_once 'src/View/rodape.php' ?>


