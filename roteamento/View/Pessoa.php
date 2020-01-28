<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div>
	<?php
		if (array_key_exists($_GET['id'],$_SESSION['pessoas'])){
			$aPessoa = $_SESSION['pessoas'][$_GET['id']];
			?>
			<h2> Editar </h2>
			<form action="../editar" method="post">
				<input type="hidden" name="id" value="<?php echo $_GET['id'] ?>">
				<label for="nome">Nome </label>
				<input name="nome" type="text" value="<?php echo $aPessoa['nome'] ?>">
				<br><br>
				<label for="dataNascimento">Data de Nascimento </label>
				<input name="data_nascimento" type="date" value="<?php echo $aPessoa['data_nascimento'] ?>">
				<br><br>
				<label for="cpf">CPF </label>
				<input name="cpf" type="text" value="<?php echo $aPessoa['cpf'] ?>">
				<br><br>
				<input type="submit" value="Cadastrar">
			</form>
		
		<?php }else{ ?>
			<h2>Criar Nova Pessoa</h2>
			<form action="cadastrar" method="post">
				<label for="nome">Nome </label>
				<input name="nome" type="text">
				<br><br>
				<label for="dataNascimento">Data de Nascimento </label>
				<input name="dataNascimento" type="date">
				<br><br>
				<label for="cpf">CPF </label>
				<input name="cpf" type="text">
				<br><br>
				<input type="submit" value="Cadastrar">
			</form>
		<?php }?>
</div>
</body>
</html>