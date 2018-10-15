<?php
include("_header.html");
 
        

$first_name = $mail = $password = $r_pass  = "";
    




    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $first_name = test_input($_POST["name"]);
      $mail = test_input($_POST["email"]);
      $password= test_input($_POST["pass"]);
      $r_pass = test_input($_POST["rpass"]);
        
        
        echo "<p>Usuario:  $first_name <p>";
        echo "<p>Correo:  $mail <p>";
        include("_bienvenido.html");
        
    }
    


    function test_input($data) {
      $data = trim($data);
      $data = stripslashes($data);
      $data = htmlspecialchars($data);
      return $data;
    }
include("_footer.html");
?>