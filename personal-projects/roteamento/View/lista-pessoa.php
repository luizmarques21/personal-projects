<?php /**
 * @var Pessoa $aPessoa
 * @var Pessoa $aPessoas
 */
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div>
	<?php
		/**
		 * @var Collection $loPessoaDao
		 * @var Pessoa $oPessoa
		 * @var $aDados
		 */
		if ($aDados) { ?>
			<h2>Pessoa</h2>
			<p>
				ID: <?php echo $aDados['id'];?><br>
				Nome: <?php echo $aPessoa['nome'];?><br>
				Data de Nascimento: <?php echo $aPessoa['data_nascimento'];?><br>
				Idade: <?php echo $aPessoa['idade'];?><br>
				CPF: <?php echo $aPessoa['cpf'];?>
			</p>
		<?php } else {
			
			?>
			<h2>Lista de pessoas</h2>
			<?php foreach ($loPessoaDao as $key => $oPessoa) { ?>
				<hr>
				<p>
					ID: <?php echo $key;?><br>
					Nome: <?php echo $oPessoa->getNome();?><br>
					Data de Nascimento: <?php echo $oPessoa->getDataNascimento();?><br>
					Idade: <?php echo $oPessoa->getIdade();?><br>
					CPF: <?php echo $oPessoa->getCpf();?>
				</p>
			<?php }
		}?>
</div>
</body>
</html>