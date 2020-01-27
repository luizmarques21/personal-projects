<?php

use Roteamento\DAO\empresaDAO;
use Roteamento\Infra\Collection;

$loEmpresaDao = new empresaDAO();
$aEmpresas = $loEmpresaDao->visualizarTodasEmpresas();

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div>
	<h2>Lista de empresas</h2>
		<?php foreach ($aEmpresas as $aEmpresa): ?>
			<hr>
			<p>
				ID: <?php echo $aEmpresa['id'];?><br>
				Nome Fantasia: <?php echo $aEmpresa['nome_fantasia'];?><br>
				Razão social: <?php echo $aEmpresa['id'];?><br>
				CNPJ: <?php echo $aEmpresa['id'];?><br>
				Email: <?php echo $aEmpresa['id'];?><br>
				Telefone: <?php echo $aEmpresa['id'];?>
			</p>
</div>
</body>
</html>