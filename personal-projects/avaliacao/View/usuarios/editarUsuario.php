<?php include __DIR__ . '/../cabecalho.php'; ?>

<form action="../posteditar/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<input type="hidden" name="id" value="<?php echo $oUsuario->getID(); ?>">
				<label for="login">Login</label>
				<input name="login" type="text" value="<?php echo $oUsuario->getLogin() ?>" class="form-control">
				<label for="senha">Senha</label>
				<input type="password" name="senha" class="form-control" placeholder="Deixe em branco caso não queira atualizar a senha">
				<label for="tipo_usuario">Tipo</label>
				<select name="tipo_usuario" class="custom-select">
					<option <?php if ($oUsuario->getTipo() == "Administrador") echo "selected"?> value="Administrador">Administrador</option>
					<option <?php if ($oUsuario->getTipo() == "Comum") echo "selected" ?> value="Comum">Comum</option>
				</select>
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>

<?php include __DIR__ . '/../rodape.php';