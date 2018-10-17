<?php  
   
    function connect() {
        
        $conexion = mysqli_connect("localhost","root","","jugadoresdb");
        if($conexion == NULL) {
            echo "<script type=''>
            alert('no funciona');
            </script>";
             die("Connection failed: " . mysqli_connect_error());
            //echo("Error al conectarse con la base de datos");
            //echo "error";
        }
        $conexion->set_charset("utf8");
        return $conexion;
    }

    function disconnect($conexion) {
        mysqli_close($conexion);
    }
    ?>