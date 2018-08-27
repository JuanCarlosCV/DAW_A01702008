function ver(){
    var mensaje="";
    var key = document.getElementById("contra").value;
    var contraVerifica = document.getElementById("verifica").value;
     
    
    if(key.length==0 || contraVerifica.length==0){
       alert("Ingresar Contraseña");
       mensaje="Ingresar Contraseña";
    }else{
        if(key.length>=6 && contraVerifica.length>=6){
            if(key!=contraVerifica){
       alert("Ingresar Contraseñas iguales");
    mensaje="Escribe Contraseñas iguales"   ;         
       }else{
           alert("Correcto");
           mensaje="Correcto";
       }
    }else{
        alert("Cumplir con tamaño correcto")
        mensaje="Tamaño de contraseña incorrecto";
    }   
       
   
       }
    document.getElementById("prueba").innerHTML = mensaje;
 
}

function agregarArt1(){
    var cant1 = document.getElementById("canti1").value;
    var subtotal=250*parseInt(cant1);
    document.getElementById("res1").innerHTML =subtotal;
    return subtotal;
}
function agregarArt2(){
    var cant2 = document.getElementById("canti2").value;
    var subtotal=8250*parseInt(cant2);
    document.getElementById("res2").innerHTML =subtotal;
}
function agregarArt3(){
    var cant3 = document.getElementById("canti3").value;
    var subtotal=300*parseInt(cant3);
    document.getElementById("res3").innerHTML =subtotal;
}

function comprar(){
    var subt1 = document.getElementById("res1").innerHTML;
    var subt2 = document.getElementById("res2").innerHTML;
    var subt3 = document.getElementById("res3").innerHTML;
    var subfinal=parseInt(subt1)+parseInt(subt2)+parseInt(subt3);
    document.getElementById("subtotal").innerHTML = subfinal;
    var iva = parseFloat(subfinal)*0.16;
    document.getElementById("iva").innerHTML =iva;
    var resfinal=parseFloat(subfinal)+parseFloat(iva);
    document.getElementById("total").innerHTML = resfinal;
    alert("Gracias por comprar");
}