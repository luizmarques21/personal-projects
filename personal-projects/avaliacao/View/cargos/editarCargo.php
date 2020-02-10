<?php include __DIR__ . '/../cabecalho.php'; ?>

<form action="../postedita/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<input type="hidden" name="id" value="<?php echo $oCargo->getID() ?>">
				<label for="nome">Nome</label>
				<input name="nome_cargo" type="text" value="<?php echo $oCargo->getNome() ?>" class="form-control">
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>

<?php include __DIR__ . '/../rodape.php'; ?>
