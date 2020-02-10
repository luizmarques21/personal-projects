<?php include __DIR__ . '/../cabecalho.php'; ?>

<div class="row">
	<div class="col-md-4">
		<a href="cadastrar/" class="btn btn-info btn-block">Criar Nova Empresa</a>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		<?php if (count($aEmpresas) > 0): ?>
			<table class="table">
				<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($aEmpresas as $aEmpresa): ?>
					<?php $oEmpresa = Empresa::createFromArray($aEmpresa) ?>
					<tr>
						<td><?php echo $oEmpresa->getID(); ?></td>
						<td><?php echo $oEmpresa->getNome(); ?></td>
						<td align="right">
                            <a href="editar/<?php echo $oEmpresa->getID() ?>" class="btn btn-info ml-auto" >Editar</a>
						    <a href="excluir/<?php echo $oEmpresa->getID() ?>" class="btn btn-danger ml-auto">Excluir</a>
                        </td>
					</tr>
				<?php endforeach ?>
				</tbody>
			</table>
		<?php else: ?>
			<p>Nenhuma empresa cadastrada</p>
		<?php endif; ?>
	</div>
</div>

<?php include __DIR__ . '/../rodape.php'; ?>