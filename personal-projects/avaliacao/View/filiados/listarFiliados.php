<div class="row">
	<div class="col-md-4">
		<a href="cadastrar/" class="btn btn-info btn-block">Criar Novo Filiado</a>
	</div>
</div>

<div class="row">
	<div class="col-md-auto">
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
                    <th></th>
                    <th></th>
                    <th></th>
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
                            <button type="button" class="btn btn-info btn-group-sm" data-toggle="modal" data-target="#meumodal">
                                Dependentes
                            </button>
                        </td>
						<td align="right">
							<a href="editar/<?php echo $oFiliado->getID() ?>" class="btn btn-info btn-group-sm" >Editar</a>
						</td>
                        <td align="right">
                            <a href="excluir/<?php echo $oFiliado->getID() ?>" class="btn btn-danger btn-group-sm">Excluir</a>
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

<div id="meumodal" class="modal fade" role="dialog" data->
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Título do modal</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
            <?php
                //include_once ROOT . 'View/dependentes/listarDependenteModal.php'
                //(new View())->exibeTemplate('dependentes/listarDependenteModal')
                (new cargoController())->index();
            ?>
        </div>
        
        <!-- Rodapé do modal-->
        <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
            <button type="button" class="btn btn-primary">Salvar Alterações</button>
        </div>
    </div>
</div>