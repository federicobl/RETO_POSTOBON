<?php
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuario']=$usuario;

include('db.php');
$consulta="SELECT*FROM usuario WHERE Usuario='$usuario' and Password1='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);

$filas=mysqli_fetch_rows($resultado);

if($filas['']==1){//Gerente
    header("location:../index3.html");
}else
if($filas['']==2){//Coordinador
    header("location:../index2.html");
}else
if($filas['']==3){//Operador
    header("location:../index1.html");
}else
if($filas['']==4){//Administrador
    header("location:../index.html");
}else{
    ?>
    <?php
    include("index.html");
    ?>
    <h1 class="bad">ERROR EN LA AUTENTIFICACION</h1>
    <?php
}
mysqli_free_result($resultado);
mysqli_close($conexion);
?>