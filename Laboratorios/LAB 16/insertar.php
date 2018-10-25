<?php

  require_once("util.php");    
  $name = $_POST['name'];
$units = $_POST['unidad'];
$quantity = $_POST['cantidad'];
$price = $_POST['precio'];
$country = $_POST['ciudad'];


if(strlen($name)>0 && strlen($units)>0 && strlen($country)>0 ){
    if(is_numeric($price) && is_numeric($quantity)){
        if(insertar_datos($name,$units,$quantity,$price,$country)){
            return true;
        }
    }
}

?>