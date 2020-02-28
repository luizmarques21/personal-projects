<div class="row">
	<div class="col-md-4">
		<a href="cadastrar/" class="btn btn-info btn-block">Criar Novo Cargo</a>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		<?php if (count($aCargos) > 0): ?>
			<table class="table">
				<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
                    <th></th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($aCargos as $aCargo): ?>
					<?php $oCargo = Cargo::createFromArray($aCargo) ?>
					<tr>
						<td><?php echo $oCargo->getID(); ?></td>
						<td><?php echo $oCargo->getNome(); ?></td>
						<td align="right">
							<a href="editar/<?php echo $oCargo->getID() ?>" class="btn btn-info ml-auto" >Editar</a>
							<a href="excluir/<?php echo $oCargo->getID() ?>" class="btn btn-danger ml-auto">Excluir</a>
						</td>
					</tr>
				<?php endforeach ?>
				</tbody>
			</table>
		<?php else: ?>
			<p>Nenhum cargo cadastrado</p>
		<?php endif; ?>
	</div>
</div>
