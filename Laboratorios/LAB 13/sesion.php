 <?php
    session_start();
    if (isset($_POST["name"])) {
        $_POST["name"] = htmlspecialchars($_POST["name"]);
    }
    
    if (isset($_POST["pass"])) {
        $_POST["pass"] = htmlspecialchars($_POST["pass"]);
    }
    if($_POST["name"] == "carlos" && $_POST["pass"] == "123") {
        $_SESSION["name"] = $_POST["name"];
        include("_header.html");
        include("_bienvenido.html");
    } else if ($_POST["name"] == "" && $_POST["pass"] == "" 
                && isset($_POST["name"])  && isset($_POST["pass"]) ) {
        $error = "Ingresa tu usuario y contraseña";
        include("_header.html");
        include("_sesion.html");
    } else if(isset($_POST["name"]) || isset($_POST["pass"]) ) {
        sleep(3);
        $error = "Usuario y/o password incorrectos";
        include("_header.html");
        include("_sesion.html");
    } else {
        include("_header.html");
        include("_login.html");
    }
    
    include("_footer.html");