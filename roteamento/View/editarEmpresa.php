<?php

$oEmpresaDAO = new empresaDAO();
try {
	$aEmpresa = $oEmpresaDAO->findEmpresa($iID);
} catch (\RuntimeException $sErro) {
    echo "<h4> Dado não localizado </h4>";
	header("refresh:1;url=../");
	exit();
}

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Editar Empresa</title>
</head>
<body>
<form action="../../View/editar-empresa-post.php" method="post">
    <p><h4>Insira os novos dados da empresa</h4></p><br>
	CNPJ: <input type="text" name="cnpj" value="<?php echo $aEmpresa['cnpj']; ?>" <br>
	Razão Social: <input type="text" name="razao_social" value="<?php echo $aEmpresa['razao_social']; ?>"><br>
	Nome Fantasia: <input type="text" name="nome_fantasia" value="<?php echo $aEmpresa['nome_fantasia']; ?>"><br>
	Email: <input type="text" name="email" value="<?php echo $aEmpresa['email']; ?>"><br>
	Telefone: <input type="text" name="telefone" value="<?php echo $aEmpresa['telefone']; ?>"><br><br>
    <input type="hidden" name="id" value="<?php echo $iID; ?>">
	<input type="submit" value="Enviar">
</form>
</body>
</html>
