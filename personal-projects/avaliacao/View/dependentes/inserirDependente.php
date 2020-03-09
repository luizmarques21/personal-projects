<form action="../postcadastra/" method="post">
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
						$aFiliados = (new filiadoDAO())->findAll();
						foreach ($aFiliados as $aFiliado) {
							$oFiliado = Filiado::createFromArray($aFiliado);
							echo "<option value=\"{$oFiliado->getID()}\">{$oFiliado->getNome()}</option>";
						}
					?>
				</select>
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>