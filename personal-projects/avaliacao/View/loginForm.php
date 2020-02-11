<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Sindicato dos Trainnes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>

<div class="container">
    <div class="jumbotron">
        <h1><?= $aDados[0]; ?></h1>
    </div>
	
	<?php if (isset($_SESSION['mensagem'])): ?>
        <div class="alert alert-primary">
			<?php echo $this->oSessao->getMensagem() ?>
        </div>
		<?php
		$this->oSessao->clearMensagem();
	endif;
	?>
</div>
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
