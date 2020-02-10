<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<title>Sindicato dos Trainnes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<?php if (isset($_SESSION['logado'])): ?>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-2">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<?php echo ROOT; ?>login/home/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Filiados</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo ROOT; ?>empresa/">Empresas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo ROOT; ?>cargo/">Cargos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo ROOT; ?>situacao/">Situações</a>
                </li>
                <?php if ($this->oSessao->isADM() == true): ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo ROOT; ?>usuario/">Usuarios</a>
                </li>
                <?php endif; ?>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<?php echo ROOT; ?>usuario/sair">Sair</a>
                </li>
            </ul>
        </div>
	</nav>
<?php endif; ?>

<div class="container">
	<div class="jumbotron">
		<h1><?= $sTitulo; ?></h1>
	</div>
	
	<?php if (isset($_SESSION['mensagem'])): ?>
		<div class="alert alert-primary">
			<?php echo $this->oSessao->getMensagem() ?>
		</div>
		<?php
		$this->oSessao->clearMensagem();
	endif;
	?>
