<?php include __DIR__ . '/../cabecalho.php'; ?>

<form action="../postedita/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<input type="hidden" name="id" value="<?php echo $oSituacao->getID() ?>">
				<label for="nome_situacao">Nome</label>
				<input name="nome_situacao" type="text" value="<?php echo $oSituacao->getNome() ?>" class="form-control">
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>

<?php include __DIR__ . '/../rodape.php'; ?>
