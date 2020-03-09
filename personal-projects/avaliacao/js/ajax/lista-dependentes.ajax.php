<?php

include_once __DIR__ . '/../../Infra/Config.php';

$iFiliadoID = $oGlobais->post('filiadoID');
$aDependentes = (new dependenteDAO())->findByFiliadoID($iFiliadoID);

?>

<div class="row">
    <div class="col-md-4">
	    <button class="btn btn-info btn-block" id="btn-cadastra" data-id="<?php echo $iFiliadoID; ?>">Criar Novo Dependente</button>
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
                            <button class="btn btn-info ml-auto" id="btn-edita" data-id="<?php echo $oDependente->getID() ?>">Editar</button>
                            <a href="excluidependente/<?php echo $oDependente->getID() ?>" class="btn btn-danger ml-auto">Excluir</a>
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
