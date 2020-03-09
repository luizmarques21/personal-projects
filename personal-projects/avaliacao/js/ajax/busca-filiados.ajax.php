<?php

include_once __DIR__ . '/../../Infra/Config.php';

$sFiltro = $oGlobais->post('filtro');
$sValor = $oGlobais->post('valor');

switch($sFiltro) {
	case 'nome':
		$sValor = '%' . $sValor . '%';
		$aFiliados = (new filiadoDAO())->findByName($sValor);
		break;
	case 'mes':
		$aFiliados = (new filiadoDAO())->findByMesNascimento($sValor);
		break;
}

if (!empty($aFiliados)) {
	foreach ($aFiliados as $aFiliado) {
		$oFiliado = Filiado::createFromArray($aFiliado); ?>
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
<?php
	}
} else {
	echo '<tr><td colspan="6">Nenhum filiado encontrado</td></tr>';
}