<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../Css/Miestilo.css"/>     
        <link rel="stylesheet" href="../Css/bootstrap.css"/>     
        <link rel="stylesheet" href="../Icons/css/all.css">  
        <script src="../js/jquery-3.6.0.min.js"></script>
        <script src="../js/scriptsjs.js"></script>
        <script src="../js/bootstrap.bundle.js"></script>
        <title>Tipos de materiales</title>
    </head>
<body>
        <br>
        <div id="demo" ><h1> Reciclando <h1></div>
        <br>
        <ul class="topnav">
            <li><a href="Usuarios.php">Usuarios</a></li>
            <li><a href="Materiales.php">Materiales</a></li>
            <li><a href="MaterialesRegistrados.php">Materiales Reciclados</a></li>
            <li><a href="tiposmateriales.php">Tipos de Materiales</a></li>
            <li class="right" ><a href="index.html">Login</a></li>
        </ul>
        <br> 
        <div class="container overflow-hidden">
        <div id="demo"><h1 style="color:black"> Tipos de Materiales <h1></div>
        
        <style type="text/css">
        .tftable {font-size:12px;color:#333333;width:100%;border-width: 1px;border-color: #729ea5;border-collapse: collapse;}
        .tftable th {font-size:12px;background-color:#acc8cc;border-width: 1px;padding: 8px;border-style: solid;border-color: #729ea5;text-align:left;}
        .tftable tr {background-color:#ffffff;}
        .tftable td {font-size:12px;border-width: 1px;padding: 8px;border-style: solid;border-color: #729ea5;}
        .tftable tr:hover {background-color:#ffff99;}
        </style>

        <table class="tftable" border="1">
        <tr><th> Tipo de Material </th><th>Descripcion</th></tr>
        <?php
        include('db.php');
        $sql="select * from tipomateriales";
        $usuarioscons=mysqli_query($conexion,$sql);

        while($mostrar=mysqli_fetch_array($usuarioscons)){
        ?>
        <tr>
            <td><?php echo $mostrar['TipoMaterial']?></td>
            <td><?php echo $mostrar['Descripcion']?></td>
        </tr>
    <?php
        }
        ?>    
        </table>
</div>
</body>

<br><br>
    <div class="container overflow-hidden" style="text-align: center">
Copyright 2021 /realizado por Federico Bustos
    </div>
<br>
</html>

