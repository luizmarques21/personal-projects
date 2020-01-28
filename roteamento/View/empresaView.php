<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div>
	<?php
		if (isset($_SESSION['empresa'])) {
        if (array_key_exists($_GET['id'], $_SESSION['empresa'])):
			$aEmpresa = $_SESSION['empresa'][$_GET['id']];
			?>
			<h2>Editar</h2>
			<form action="../editar" method="post">
				<input type="hidden" name="id" value="<?php echo $_GET['id'] ?>">
				<label for="cnpj">CNPJ </label>
				<input name="cnpj" type="text" value="<?php echo $aEmpresa['cnpj'] ?>">
				<br><br>
				<label for="razaoSocial">Razão Social </label>
				<input name="razaoSocial" type="text" value="<?php echo $aEmpresa['razao social'] ?>">
				<br><br>
				<label for="nomeFantasia">Nome Fantasia </label>
				<input name="nomeFantasia" type="text" value="<?php echo $aEmpresa['nome fantasia'] ?>" >
				<br><br>
				<label for="email">Email </label>
				<input name="email" type="text" value="<?php echo $aEmpresa['email'] ?>">
				<br><br>
				<label for="telefone">Telefone </label>
				<input name="telefone" type="text" value="<?php echo $aEmpresa['telefone'] ?>">
				<br><br>
				<input type="submit" value="Cadastrar">
			</form>
		<?php endif; } else { ?>
			<h2>Criar Nova Empresa</h2>
			<form action="../cadastrar" method="post">
				<label for="cnpj">CNPJ </label>
				<input name="cnpj" type="text" >
				<br><br>
				<label for="razaoSocial">Razão Social </label>
				<input name="razaoSocial" type="text" >
				<br><br>
				<label for="nomeFantasia">Nome Fantasia </label>
				<input name="nomeFantasia" type="text" >
				<br><br>
				<label for="email">Email </label>
				<input name="email" type="text" >
				<br><br>
				<label for="telefone">Telefone </label>
				<input name="telefone" type="text" >
				<br><br>
				<input type="submit" value="Cadastrar">
			</form>
		<?php } ?>
</div>
</body>
</html>