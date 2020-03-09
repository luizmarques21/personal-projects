<?php

include_once __DIR__ . '/../../Infra/Config.php';
$iFiliadoID = $oGlobais->get('filiadoID');
$aFiliados = (new filiadoDAO())->findAll();

?>

<form action="cadastradependente/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
                <label for="nome_dependente">Nome do Dependente</label>
				<input name="nome_dependente" type="text" class="form-control dependente"><br>
				<label for="data_nascimento_dependente">Data de Nascimento</label>
				<input name="data_nascimento_dependente" type="date" class="form-control"><br>
				<label for="parentesco_dependente">Grau de parentesco</label>
				<input name="parentesco_dependente" type="text" class="form-control"><br>
				<label for="filiado">Filiado</label>
				<select name="filiado" class="form-control">
					<?php
						foreach ($aFiliados as $aFiliado) {
							$sSelect = '';
							$oFiliado = Filiado::createFromArray($aFiliado);
							if ($oFiliado->getID() == $iFiliadoID)
								$sSelect = 'selected';
							echo "<option value=\"{$oFiliado->getID()}\" {$sSelect}>{$oFiliado->getNome()}</option>";
						}
					?>
				</select>
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>
