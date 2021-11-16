<?php
    //conexión con la base de datos y el servidor
	include('db.php');

	//obtenemos los valores del formulario
	$Material = $_POST['NombreMaterial'];
	$TipoMaterialId = $_POST['Tipo_Material'];

	//ingresamos la informacion a la base de datos
	$sql= "INSERT INTO `materiales` (`MaterialId`, `Nombre`, `TipoMaterialId`, `UsuarioId`) VALUES (NULL,'$Material','$TipoMaterialId',1)";
	$resultado = mysqli_query($conexion,$sql);
	 
	if($resultado){
		header("location:registro_materiales.php");
	}else{
		?>
		<?php
		include("index.html");
		?>
		<h1 class="bad">ERROR EN LA CREACIÓN DE MATERIALES</h1>
		<?php
	}
	mysqli_free_result($resultado);
	mysqli_close($conexion);

?>