<?php  
   
    function connect() {
        
        $conexion = mysqli_connect("localhost","root","","fruteria");
        if($conexion == NULL) {
            echo "<script type=''>
            alert('Sin Conexion');
            </script>";
             die("Connection failed: " . mysqli_connect_error());
        }
        $conexion->set_charset("utf8");
        return $conexion;
    }

    function disconnect($conexion) {
        mysqli_close($conexion);
    }


    function insertar_datos($name, $units, $quantity,$price, $country){
    
        $conn = connect();
    $query = "INSERT INTO frutas(name,units,quantity,price,country) VALUES (\"".$name."\",\"".$units."\",".$quantity.",".$price.",\"".$country."\");";
        
    if(mysqli_query($conn, $query)){
        echo "Insercion Correcta";
        disconnect($conn);
        return true;
    }else{
        echo "ERROR ".$query."<br>".mysqli_error($conn);
        disconnect($conn);   
        return false;
    }    
   
    }
    ?>