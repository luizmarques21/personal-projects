<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<title>Sindicato dos Trainnes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-2">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="<?php echo WEBROOT; ?>login/home/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo WEBROOT; ?>filiado/">Filiados</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo WEBROOT; ?>empresa/">Empresas</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo WEBROOT; ?>cargo/">Cargos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo WEBROOT; ?>situacao/">Situações</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo WEBROOT; ?>usuario/">Usuarios</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="<?php echo WEBROOT; ?>usuario/sair">Sair</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container">
	<div class="jumbotron">
		<h1><?php echo $sTitulo; ?></h1>
	</div>
	
	<?php if (strlen(Sessao::getMensagem()) > 0): ?>
		<div class="alert alert-primary">
			<?php
                echo Sessao::getMensagem();
                Sessao::setMensagem('');
            ?>
		</div>
    <?php endif; ?>
