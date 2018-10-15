<!DOCTYPE html>
<html>

<head>


    <title>PHP INICIO</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
    <link rel="stylesheet" href="css/estilos.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>

<body>

    <nav>
        <div class="nav-wrapper">
            <a href="#" class="brand-logo right">Logo</a>
            <ul id="nav-mobile" class="left hide-on-med-and-down">
                <li><a data-position="bottom" data-tooltip="I am a tooltip" href="">INICIO</a></li>
                <li><a href="#primero">Promedio</a></li>
                <li><a href="#refer">Referencias</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">


        <h3>Ingresar 5 Numeros</h3>
        <form name='form01' method='POST' action=''>

            <label>Calificaciones:</label>
            <input type='number' name='txtC1' maxlength='2' style='width:50px;' value="0" />
            <input type='number' name='txtC2' maxlength='2' style='width:50px;' value="0" />
            <input type='number' name='txtC3' maxlength='2' style='width:50px;' value="0" />
            <input type='number' name='txtC4' maxlength='2' style='width:50px;' value="0" />
            <input type='number' name='txtC5' maxlength='2' style='width:50px;' value="0" />
            <br />
            <button class="btn waves-effect waves-light" type="submit" name="action">Calcular
    <i class="material-icons right">send</i>
  </button>
        </form>


        <?php
        $arreglo = array(0,0,0,0,0);

function promedio($arreglo){
    $suma=0;
    $i=0;
    $n = count($arreglo);
    for($i; $i < $n;$i++ ){
        $suma = $suma + $arreglo[$i];
    }
    $promedio = $suma / $n;
    return $promedio;
}
function media($arr){
   
sort($arr);
$count = count($arr); 
$middleval = floor(($count-1)/2); 
if($count % 2) {
$median = $arr[$middleval];
} else { 
$low = $arr[$middleval];
$high = $arr[$middleval+1];
$median = (($low+$high)/2);
}
return $median;                    
    }
        
function menor($arreglo)
{
    
     $i=0;
    $n = count($arreglo);
    $Nmenor = $arreglo[i];
    for($i; $i < $n;$i++ ){
         
        if($Nmenor>$arreglo[$i]){
            $Nmenor = $arreglo[i];
        }
    }
    return $Nmenor;
}        
?>

            <h4>Funciones en PHP</h4>
            <ul class="collapsible popout" data-collapsible="accordion">
                <li name="primero">
                    <div class="collapsible-header" name="primero">
                        <i class="material-icons" name="primer">filter_drama</i>Promedio</div>
                    <div class="collapsible-body">
                        <p>Calculo de promedio</p>
                        
                        <?php
                if(count($_POST)>0){
                    $arreglo = array($_POST["txtC1"],$_POST["txtC2"],$_POST["txtC3"],$_POST["txtC4"],$_POST["txtC5"]);
    
                echo "<p>Promedio :  " .promedio($arreglo)."</p>";
    
}
?>
                    </div>
                </li>

                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">place</i>Mediana</div>
                    <div class="collapsible-body">
                        <p>Calculo de media</p>

                        <?php
                        
                        
                        echo "<p>Mediana :  " .media($arreglo)."</p>";
                        ?>
                    </div>
                </li>

                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">whatshot</i>Funcion mediana,promedio y orden</div>
                    <div class="collapsible-body">
                        <p></p>
                        <?php
                         echo "<p>Promedio :  " .promedio($arreglo)."</p>";
    
                     echo "<p>Mediana :  " .media($arreglo)."</p>";
                        echo "<p>Menor :  " .min($arreglo). "</p>";
                         echo "<p>Mayor :  " .max($arreglo). "</p>";
                        ?>
                    </div>
                </li>

                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">whatshot</i>Cubos y Cuadrados</div>
                    <div class="collapsible-body">
                        <p>Ingresar Numero</p>
                        <form name='form01' method='POST' action=''>
                            <input type="number" value="0"  style='width:50px;' name="st" id="st">
                            <button class="btn waves-effect waves-light" type="submit" name="action">Calcular
    <i class="material-icons right">send</i>
  </button>
                        </form>
                        <?php
                        $limite=0;
                        if(defined( $_POST['st'])){
                         $limite=0;
                        }else{
                              $limite = $_POST['st']; 
                        }
                        
                        echo "<table border='2'><thead><tr><td>Número</td><td>Cuadrados</td><td>Cubos</td></tr></thead><tbody>";
            for($i=0;$i<=$limite;$i++){
                echo "<tr><td>".$i."</td><td>".$i**2 ."</td><td>".$i**3 ."</td></tr>";
            }
            echo "</tbody></table>";
                        
                        
                         
                        ?>
                    </div>
                </li>
            </ul>

            <script type="text/javascript" src="js/materialize.min.js">


            </script>

    </div>
    

    
    
    
    <footer class="page-footer" name="refer">
          <div class="container" name="refer">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text" name="refer">Referencias</h5>
                <p class="grey-text text-lighten-4">¿Qué hace la función phpinfo()? Describe y discute 3 datos que llamen tu atención.</p>
                  <p class="grey-text text-lighten-2">R:  Es un informe donde se muestran las funciones que tiene php en la version que se este manejando en este momento. Tambien sirve para saber lo que es posible usar dentro del php</p>
              <p class="grey-text text-lighten-4"> ¿Qué cambios tendrías que hacer en la configuración del servidor para que pudiera ser apto en un ambiente de producción?</p>
                  
                  <p class="grey-text text-lighten-2" >Tendrian que tenerse un equipo apra mantener los servicios de php y algunas otras funciones corriendo. Esto para mantener un proceso de trabajo amigable y en tiempo real
                  </p>
                  <p class="grey-text text-lighten-4">¿Cómo es que si el código está en un archivo con código html que se despliega del lado del cliente, se ejecuta del lado del servidor? Explica.</p>
                  <p class="grey-text text-lighten-2">
                      Los archivos que funcionan en el lado del cliente son la vista que puede ver el usuario, pero cualquier consulta o envio de informacion es manejada con un servidor. Dentro de este se registran los cambios, notificaciones o modificaciones que se esten realizando
                  </p>
                </div>
              
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2018 Copyright Text
           JUAN CARLOS CABRERA VEGA
            </div>
          </div>
        </footer>
</body>

</html>
