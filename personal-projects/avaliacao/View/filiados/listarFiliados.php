<div class="row">
	<div class="col-md-4">
		<a href="cadastrar/" class="btn btn-info btn-block">Criar Novo Filiado</a>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		<?php if (count($aFiliados) > 0): ?>
			<table class="table table-sm">
				<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
                    <th>CPF</th>
                    <th>RG</th>
                    <th>Data de Nascimento</th>
                    <th>Empresa</th>
                    <th>Cargo</th>
                    <th>Situação</th>
                    <th>Telefone Residencial</th>
                    <th>Telefone Celular</th>
                    <th>Ultima atualização</th>
				</tr>
				</thead>
				<tbody>
				<?php foreach ($aFiliados as $aFiliado): ?>
					<?php $oFiliado = Filiado::createFromArray($aFiliado) ?>
					<tr>
						<td><?php echo $oFiliado->getID(); ?></td>
                        <td><?php echo $oFiliado->getNome(); ?></td>
                        <td><?php echo $oFiliado->getCPF(); ?></td>
                        <td><?php echo $oFiliado->getRG(); ?></td>
                        <td><?php echo $oFiliado->getDataNascimento(); ?></td>
                        <td><?php echo $oFiliado->getEmpresa(); ?></td>
                        <td><?php echo $oFiliado->getCargo(); ?></td>
                        <td><?php echo $oFiliado->getSituacao(); ?></td>
                        <td><?php echo $oFiliado->getTelResidencial(); ?></td>
                        <td><?php echo $oFiliado->getTelCelular(); ?></td>
                        <td><?php echo $oFiliado->getDataAtualizacao(); ?></td>
						<td align="right">
							<a href="editar/<?php echo $oFiliado->getID() ?>" class="btn btn-info ml-auto" >Editar</a>
							<a href="excluir/<?php echo $oFiliado->getID() ?>" class="btn btn-danger ml-auto">Excluir</a>
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
