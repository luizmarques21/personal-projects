<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div>
	<h2>Lista de empresas</h2>
		<?php foreach ($aEmpresas as $iID => $aEmpresa): ?>
			<hr>
			<p>
				ID: <?php echo $iID;?><br>
				Nome Fantasia: <?php echo $aEmpresa['nome_fantasia'];?><br>
				Razão social: <?php echo $aEmpresa['razao_social'];?><br>
				CNPJ: <?php echo $aEmpresa['cnpj'];?><br>
				Email: <?php echo $aEmpresa['email'];?><br>
				Telefone: <?php echo $aEmpresa['telefone'];?>
			</p>
        <?php endforeach; ?>
</div>
</body>
</html>