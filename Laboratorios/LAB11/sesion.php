<?php

 if ($_POST["name"]=="luis" ) {
            include("_header.html");
            echo "Bienvenido ".$_POST["name"];
            include("_bienvenido.html");
            include("_footer.html");
     echo "<script>";
     echo "abrirsesion();";
     echo "</script>";       
     
    
            
        } else {
          header("location: index.php");
        }
        

$first_name = $mail = $password = $r_pass  = "";
    
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $first_name = test_input($_POST["name"]);
      $mail = test_input($_POST["email"]);
      $password= test_input($_POST["pass"]);
      $r_pass = test_input($_POST["rpass"]);
        
    }
    
    function test_input($data) {
      $data = trim($data);
      $data = stripslashes($data);
      $data = htmlspecialchars($data);
      return $data;
    }

?>