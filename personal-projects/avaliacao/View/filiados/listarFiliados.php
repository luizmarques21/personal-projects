<div class="row">
	<div class="col-md-2">
		<a href="cadastrar/" class="btn btn-info btn-block">Criar Novo Filiado</a>
	</div>
    <div class="col-sm-6 ml-auto input-group">
        <span class="input-group-text">Buscar por:</span>
        <select class="form-control" id="filtro-busca">
            <option value="nome">Nome</option>
            <option value="mes">Mês de Nascimento</option>
        </select>
        <input type="text" class="form-control" id="valor-busca-nome">
        <select class="form-control" id="valor-busca-mes">
            <option value="01">Janeiro</option>
            <option value="02">Fevereiro</option>
            <option value="03">Março</option>
            <option value="04">Abril</option>
            <option value="05">Maio</option>
            <option value="06">Junho</option>
            <option value="07">Julho</option>
            <option value="08">Agosto</option>
            <option value="09">Setembro</option>
            <option value="10">Outubro</option>
            <option value="11">Novembro</option>
            <option value="12">Dezembro</option>
        </select>
        <button type="button" class="btn btn-light" id="btn-busca">Buscar</button>
        <a href="" class="btn btn-light">Limpar</a>
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
				<tbody id="table-resultado">
				<?php foreach ($aFiliados as $aFiliado): ?>
					<?php $oFiliado = Filiado::createFromArray($aFiliado) ?>
					<tr>
						<td><?php echo $oFiliado->getID(); ?></td>
                        <td><?php echo $oFiliado->getNome(); ?></td>
                        <td><?php echo $oFiliado->getCPF(); ?></td>
                        <td><?php echo $oFiliado->getRG(); ?></td>
                        <td><?php echo $oFiliado->getDataNascimento('d/m/Y'); ?></td>
                        <td><?php echo $oFiliado->getEmpresa(); ?></td>
                        <td><?php echo $oFiliado->getCargo(); ?></td>
                        <td><?php echo $oFiliado->getSituacao(); ?></td>
                        <td><?php echo $oFiliado->getTelResidencial(); ?></td>
                        <td><?php echo $oFiliado->getTelCelular(); ?></td>
                        <td><?php echo $oFiliado->getDataAtualizacao(); ?></td>
                        <td align="right">
                            <button type="button" class="btn btn-info btn-group-sm btn-dependente" data-toggle="modal"
                                    data-target="#meumodal" data-id="<?php echo $oFiliado->getID(); ?>">
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
			<p>Nenhum filiado cadastrado</p>
		<?php endif; ?>
	</div>
</div>

<div id="meumodal" class="modal fade" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Dependentes</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="box-conteudo-modal"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>

<script src="<?php echo CAMINHO_PADRAO_WEB; ?>js/listar-filiado.js"></script>
<script src="<?php echo CAMINHO_PADRAO_WEB; ?>js/busca-filiado.js"></script>