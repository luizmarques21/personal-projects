<form action="../postedita/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<input type="hidden" name="id" value="<?php echo $oFiliado->getID() ?>">
				<label for="nome_filiado">Nome</label>
				<input name="nome_filiado" type="text" class="form-control" value="<?php echo $oFiliado->getNome() ?>"><br>
				<label for="cpf_filiado">CPF</label>
				<input name="cpf_filiado" type="text" class="form-control" value="<?php echo $oFiliado->getCPF() ?>"><br>
				<label for="rg_filiado">RG</label>
				<input name="rg_filiado" type="text" class="form-control" value="<?php echo $oFiliado->getRG() ?>"><br>
				<label for="data_nascimento_filiado">Data de Nascimento</label>
				<input name="data_nascimento_filiado" type="date" class="form-control" value="<?php echo $oFiliado->getDataNascimento() ?>"><br>
				<label for="empresa_filiado">Empresa</label>
				<select name="empresa_filiado" class="form-control">
					<?php
						$aEmpresas = (new empresaDAO())->findAll();
						foreach ($aEmpresas as $aEmpresa) {
							$sSelected = '';
							$oEmpresa = Empresa::createFromArray($aEmpresa);
							if ($oEmpresa->getNome() == $oFiliado->getEmpresa())
								$sSelected = 'selected';
							echo "<option value=\"{$oEmpresa->getID()}\" {$sSelected}>{$oEmpresa->getNome()}</option>";
						}
					?>
				</select><br>
				<label for="cargo_filiado">Cargo</label>
				<select name="cargo_filiado" class="form-control">
					<?php
						$aCargos = (new cargoDAO())->findAll();
						foreach ($aCargos as $aCargo) {
							$sSelected = '';
							$oCargo = Cargo::createFromArray($aCargo);
							if ($oCargo->getNome() == $oFiliado->getCargo())
								$sSelected = 'selected';
							echo "<option value=\"{$oCargo->getID()}\" {$sSelected}>{$oCargo->getNome()}</option>";
						}
					?>
				</select><br>
				<label for="situacao_filiado">Situação</label>
				<select name="situacao_filiado" class="form-control">
					<?php
						$aSituacoes = (new situacaoDAO())->findAll();
						foreach ($aSituacoes as $aSituacao) {
							$sSelected = '';
							$oSituacao = Situacao::createFromArray($aSituacao);
							if ($oSituacao->getNome() == $oFiliado->getSituacao())
								$sSelected = 'selected';
							echo "<option value=\"{$oSituacao->getID()}\" {$sSelected}>{$oSituacao->getNome()}</option>";
						}
					?>
				</select><br>
				<label for="telefone_filiado">Telefone Residencial</label>
				<input name="telefone_filiado" type="text" class="form-control" value="<?php echo $oFiliado->getTelResidencial() ?>"><br>
				<label for="celular_filiado">Telefone Celular</label>
				<input name="celular_filiado" type="text" class="form-control" value="<?php echo $oFiliado->getTelCelular() ?>"><br>
			</div>
			<br><input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>
