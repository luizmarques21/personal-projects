<form action="../postcadastrar/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label for="login">Login</label>
				<input name="login" type="text" class="form-control" placeholder="Usuario" maxlength="100" required>
				<label for="senha">Senha</label>
				<input name="senha" type="password" class="form-control" placeholder="Senha" maxlength="60" required>
				<label for="tipo_usuario">Tipo</label>
				<select name="tipo_usuario" class="custom-select">
					<option value="A">Administrador</option>
					<option value="C">Comum</option>
				</select>
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>
