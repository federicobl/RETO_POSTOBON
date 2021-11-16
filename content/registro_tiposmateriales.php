<?php
    //conexión con la base de datos y el servidor
	include('db.php');
	//obtenemos los valores del formulario
	$TipoMaterial = $_POST['TipoMaterial'];
	$Descripcion = $_POST['descripcion'];

	//ingresamos la informacion a la base de datos
	$sql= "INSERT INTO `tipomateriales` (`TipoMaterialId`, `TipoMaterial`, `descripcion`, `UsuarioId`)  VALUES (null,'$TipoMaterial','$Descripcion',1)";
	$resultado = mysqli_query($conexion,$sql);
	
	if($resultado){
		header("location:registro_tiposmateriales.php");
	}else{
		?>
		<?php
		include("index.html");
		?>
		<h1 class="bad">ERROR EN LA  CREACIÓN DE TIPOS MATERIALES</h1>
		<?php
	}
	mysqli_free_result($resultado);
	mysqli_close($conexion);

?>