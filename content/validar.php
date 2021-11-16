<?php
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuario']=$usuario;

include('db.php');
$consulta="SELECT*FROM usuarios WHERE Usuario='$usuario' and Contraseña='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);
$filas=mysqli_fetch_array($resultado);

if($filas['TipoUsuarioId']==1){//Gerente
    header("location:../index.html");
}else
if($filas['TipoUsuarioId']==2){//Consultor
    header("location:Materiales.php");
}else
if($filas['TipoUsuarioId']==3){//Operador
    header("location:index4.html");

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