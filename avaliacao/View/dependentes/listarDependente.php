<div class="row">
    <div class="col-md-4">
        <a href="cadastrar/" class="btn btn-info btn-block">Criar Novo Dependente</a>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
		<?php if (count($aDependentes) > 0): ?>
            <table class="table table-sm">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Data de Nascimento</th>
                    <th>Parentesco</th>
                    <th>Filiado</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
				<?php foreach ($aDependentes as $aDependente): ?>
					<?php $oDependente = Dependente::createFromArray($aDependente) ?>
                    <tr>
                        <td><?php echo $oDependente->getID(); ?></td>
                        <td><?php echo $oDependente->getNome(); ?></td>
                        <td><?php echo $oDependente->getDataNascimento('d/m/Y'); ?></td>
                        <td><?php echo $oDependente->getParentesco(); ?></td>
                        <td><?php echo $oDependente->getFiliado(); ?></td>
                        <td align="right">
                            <a href="editar/<?php echo $oDependente->getID() ?>" class="btn btn-info ml-auto">Editar</a>
                            <a href="excluir/<?php echo $oDependente->getID() ?>" class="btn btn-danger ml-auto">Excluir</a>
                        </td>
                    </tr>
				<?php endforeach ?>
                </tbody>
            </table>
		<?php else: ?>
            <p>Nenhum dependente cadastrado</p>
		<?php endif; ?>
    </div>
</div>