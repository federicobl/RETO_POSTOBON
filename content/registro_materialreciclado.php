<?php
    //conexión con la base de datos y el servidor
	include('db.php');

	//obtenemos los valores del formulario
	$Fecha = $_POST['Fecha'];
	$MaterialId = $_POST['MaterialId'];
    $Peso = $_POST['Peso'];
	$UsuarioId = $_POST['UsuarioId'];

	//ingresamos la informacion a la base de datos
	$sql= "INSERT INTO `material_reciclado`(`MaterialRecicladoId`, `fecha`, `MaterialId`, `Peso`, `UsuarioId`) VALUES (null,'$Fecha','$MaterialId','$Peso','$UsuarioId')";
	$resultado = mysqli_query($conexion,$sql);
	 
	if($resultado){
		header("location:MaterialesRegistrados.php");
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