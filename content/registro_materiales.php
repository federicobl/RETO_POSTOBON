<?php
    //conexión con la base de datos y el servidor
    $server = 'localhost';
	$username = 'root';
	$Password = null;
	$database = 'sisinfo';

	try {
	$conn = mysqli_connect("localhost","root","1234","sisinfo");
	}catch(PDOException $e) {
		die ('connected failed: '.$e->getMessage());
	}

	//obtenemos los valores del formulario
	$Material = $_POST['NombreMaterial'];
	$TipoMaterialId = $_POST['Tipo_Material'];

	//ingresamos la informacion a la base de datos
	$sql= "INSERT INTO `materiales` (`MaterialId`, `Nombre`, `TipoMaterialId`, `UsuarioId`) VALUES (NULL,'$Material','$TipoMaterialId',1)";
	$resultado = mysqli_query($conn,$sql);
	 
	if($resultado){
		header("location:../index.html");
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