<?php

	# buscando os dados la na tabela
	$manager = new Manager;

	$dados = $manager->select_common("produto",null, ['codproduto'=>$_GET['edit_produto']],null);	
?>

<div class="container">
	<div class="row">
		<div class="col-md-2">
			
		</div>

		<div class="col-md-8">
			
			<h3> Formulario de Edição </h3>


			<form action="./controllers/controllerProduto.php" method="POST">
				<label> Produto </label>
				<input type="text" name="descricao" value="<?=$dados[0]['descricao'];?>" class="form-control"><br><br>


				<label> Peso </label>
				<input type="number" name="peso" value="<?=$dados[0]['peso'];?>" class="form-control"><br><br>

				
				<label> Situação </label>
				<select name="controlado" class="form-control">
					<option disabled selected>
						<?php if ($dados[0]['controlado'] == 1){
									echo "Controlado";	
							}else{
									echo "Não controlado";
						}
						?>
					</option>
				<option value="1">Controlado</option>
				<option value="0">Não controlado</option>
				</select><br><br>

				<label> Quantidade </label>
				<input type="number" name="qtdemin" value="<?=$dados[0]['qtdemin'];?>" class="form-control"><br><br>

				<input type="hidden" name="action" value="edit">
				<input type="hidden" name="codproduto" value="<?=$dados[0]['codproduto'];?>">

				<button class="btn btn-primary" type="submit"> Enviar</button>
			</form>
		</div>

	</div>

</div>