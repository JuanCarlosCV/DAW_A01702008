<?php
  $salida = "";
  require_once("util.php");    
    $conn = connect();
    $query = "SELECT * FROM frutas WHERE Name NOT LIKE '' ORDER By id";

    if (isset($_POST['consulta'])) {
    	$q = $conn->real_escape_string($_POST['consulta']);
    	$query = "SELECT * FROM frutas WHERE name LIKE '%$q%' ";
    }

    $resultado = $conn->query($query);

 
    if ($resultado->num_rows>0) {
    	$salida.="<table border=1 >
    			<thead>
    				<tr id='titulo'>
    					<td>ID</td>
    					<td>Nombre</td>
    					<td>Unidades</td>
    					<td>Cantidad</td>
    					<td>Precio</td>
                        <td>Ciudad</td>
    				</tr>

    			</thead>
    			

    	<tbody>";

    	while ($fila = $resultado->fetch_assoc()) {
    		$salida.="<tr>
    					<td>".$fila['id']."</td>
    					<td>".$fila['name']."</td>
    					<td>".$fila['units']."</td>
    					<td>".$fila['quantity']."</td>
    					<td>".$fila['price']."</td>
                        <td>".$fila['country']."</td>
    				</tr>";

    	}
    	$salida.="</tbody></table>";
    }else{
    	$salida.="NO HAY DATOS :(";
    }


    echo $salida;
     disconnect($conn);

?>