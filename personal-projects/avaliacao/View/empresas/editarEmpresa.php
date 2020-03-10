<form action="../postedita/" method="post">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<input type="hidden" name="id" value="<?php echo $oEmpresa->getID() ?>">
				<label for="nome">Nome</label>
				<input name="nome_empresa" type="text" value="<?php echo $oEmpresa->getNome() ?>" class="form-control" required>
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Salvar">
		</div>
	</div>
</form>
