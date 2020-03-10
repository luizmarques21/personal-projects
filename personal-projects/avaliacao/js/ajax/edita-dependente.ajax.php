<?php

include_once __DIR__ . '/../../Infra/Config.php';

$iDependenteID = $oGlobais->post('dependenteID');
$oDependente = (new dependenteDAO())->findByID($iDependenteID);

?>

<form action="editadependente/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<input type="hidden" name="id-dependente" value="<?php echo $oDependente->getID() ?>">
				<label for="nome_dependente">Nome do Dependente</label>
				<input name="nome_dependente" type="text" class="form-control dependente" value="<?php echo $oDependente->getNome() ?>" required><br>
				<label for="data_nascimento_dependente">Data de Nascimento</label>
				<input name="data_nascimento_dependente" type="date" class="form-control" value="<?php echo $oDependente->getDataNascimento() ?>" required><br>
				<label for="parentesco_dependente">Grau de parentesco</label>
				<input name="parentesco_dependente" type="text" class="form-control" value="<?php echo $oDependente->getParentesco() ?>" required><br>
				<label for="filiado">Filiado</label>
				<select name="filiado" class="form-control">
					<?php
						$aFiliados = (new filiadoDAO())->findAll();
						foreach ($aFiliados as $aFiliado) {
							$sSelected = '';
							$oFiliado = Filiado::createFromArray($aFiliado);
							if ($oFiliado->getNome() == $oDependente->getFiliado())
								$sSelected = 'selected';
							echo "<option value=\"{$oFiliado->getID()}\" {$sSelected}>{$oFiliado->getNome()}</option>";
						}
					?>
				</select>
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>
