<script src="<?php echo CAMINHO_PADRAO_WEB; ?>js/lib/jquery-maskedinput.js"></script>

<form action="../postcadastra/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label for="nome_filiado">Nome</label>
				<input name="nome_filiado" type="text" class="form-control" required><br>
				<label for="cpf_filiado">CPF</label>
				<input id="cpf-filiado" name="cpf_filiado" type="text" class="form-control" required><br>
				<label for="rg_filiado">RG</label>
				<input name="rg_filiado" type="number" class="form-control" required><br>
				<label for="data_nascimento_filiado">Data de Nascimento</label>
				<input name="data_nascimento_filiado" type="date" class="form-control" required><br>
				<label for="empresa_filiado">Empresa</label>
				<select name="empresa_filiado" class="form-control">
					<?php
						$aEmpresas = (new empresaDAO())->findAll();
						foreach ($aEmpresas as $aEmpresa) {
							$oEmpresa = Empresa::createFromArray($aEmpresa);
							echo "<option value=\"{$oEmpresa->getID()}\">{$oEmpresa->getNome()}</option>";
						}
					?>
				</select><br>
				<label for="cargo_filiado">Cargo</label>
				<select name="cargo_filiado" class="form-control">
					<?php
						$aCargos = (new cargoDAO())->findAll();
						foreach ($aCargos as $aCargo) {
							$oCargo = Cargo::createFromArray($aCargo);
							echo "<option value=\"{$oCargo->getID()}\">{$oCargo->getNome()}</option>";
						}
					?>
				</select><br>
				<label for="situacao_filiado">Situação</label>
				<select name="situacao_filiado" class="form-control">
					<?php
						$aSituacoes = (new situacaoDAO())->findAll();
						foreach ($aSituacoes as $aSituacao) {
							$oSituacao = Situacao::createFromArray($aSituacao);
							echo "<option value=\"{$oSituacao->getID()}\">{$oSituacao->getNome()}</option>";
						}
					?>
				</select><br>
				<label for="telefone_filiado">Telefone Residencial</label>
				<input id="telefone" name="telefone_filiado" type="text" class="form-control" required><br>
				<label for="celular_filiado">Telefone Celular</label>
				<input id="celular" name="celular_filiado" type="text" class="form-control" required><br>
                <label for="lista-dependentes" type="text">Dependentes</label>
                <select id="lista-dependentes" class="form-control"></select>
                <button type="button" class="btn btn-light btn-link" id="adiciona-dependente">Adicionar</button>
                <button type="button" class="btn btn-light btn-link" id="remove-dependente">Remover</button>
                <span id="msg"></span>
                <input type="hidden" id="dependente-filiado" name="dependente_filiado">
                <p>
                    <div class="form-group" id="form-dependente">
                        <label for="nome_dependente">Nome do Dependente</label>
                        <input id="nome_dependente" type="text" class="form-control dependente"><br>
                        <label for="data_nascimento_dependente">Data de Nascimento</label>
                        <input id="data_nascimento_dependente" type="date" class="form-control dependente"><br>
                        <label for="parentesco_dependente">Grau de parentesco</label>
                        <input id="parentesco_dependente" type="text" class="form-control dependente"><br>
                        <button type="button" class="btn btn-danger" align="left" id="btn-cancelar">Cancelar</button>
                        <button type="button" class="btn btn-success" align="right" id="btn-salvar">Salvar dependente</button>
                    </div>
                </p>
            </div>
			<br><input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>

<script src="<?php echo CAMINHO_PADRAO_WEB; ?>js/inserir-filiado.js"></script>
