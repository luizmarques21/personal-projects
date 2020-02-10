<?php include 'cabecalho.php'; ?>

<form action="login/validalogin" method="post">
	<div class="form-group">
		<label for="usuario">Login</label>
		<input type="text" name="usuario" id="usuario" class="form-control">
	</div>
	<div class="form-group">
		<label for="senha">Senha</label>
		<input type="password" name="senha" id="senha" class="form-control">
	</div>
	<button type="submit" class="btn btn-primary">Entrar</button>
</form>

<?php include 'rodape.php'; ?>
