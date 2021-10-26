<?php
	$conn = mysqli_connect("localhost","root","1234","sisinfo");

	//obtenemos los valores del formulario
	$Documento = $_POST['Documento'];
	$TipoDocumentoID = $_POST['Tipo_documento'];
	$Nombre = $_POST['Nombre'];
	$Apellido = $_POST['Apellido'];
	$Correo = $_POST['Correo'];
	$Celular = $_POST['Celular'];
	$Usuario = $_POST['Usuario'];
	$TipoUsuarioId = $_POST['Tipo_Usuario'];
	$Contraseña = $_POST['Contraseña'];
	$ContraseñaC = $_POST['Contraseña_Confirm'];
	//Obtiene la longitud de un string
	$req = (strlen($Nombre)*strlen($Apellido)*strlen($Correo)*strlen($Usuario)*strlen($Contraseña)*strlen($ContraseñaC)) or die("No se han llenado todos los campos");

	//se confirma la contraseña
	if ($Contraseña != $ContraseñaC) {
		die('Las contraseñas no coinciden, Verifique <br /> <a href="index.html">Volver</a>');
	}

	//ingresamos la informacion a la base de datos
	$sql= "INSERT 	INTO `usuario`(`UsuarioId`, `Documento`, `TIpoDocumentoId`, `Nombre`, `Apellido`, `Correo`, `Celular`, `Usuario`, `TipoUsuarioId`, `Password1`) 
	VALUES(NULL,$Documento,$TipoDocumentoID,'$Nombre','$Apellido','$Correo',$Celular,'$Usuario',$TipoUsuarioId,'$Contraseña')";
	$resultado = mysqli_query($conn,$sql);

	if($resultado){
		header("location:../index.html");
	}else{
		?>
		<?php
		include("index.html");
		?>
		<h1 class="bad">ERROR EN LA  CREACIÓN DE USUARIOS</h1>
		<?php
	}
	mysqli_free_result($resultado);
	mysqli_close($conexion);

?>