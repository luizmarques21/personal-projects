<?php include __DIR__ . '/../cabecalho.php' ?>

<form action="../postcadastra/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label for="nome_cargo">Nome</label>
				<input name="nome_cargo" type="text" class="form-control" placeholder="Nome">
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>

<?php include __DIR__ . '/../rodape.php' ?>
