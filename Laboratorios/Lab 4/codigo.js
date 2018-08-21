
 function ejer1(){
var numLim = prompt("Introduzca un numero:");
for (var n = 1; n <= numLim; n++) {
var tablero = document.getElementById("tabla");
    var fila=tablero.insertRow(n);
    var  cel1 = fila.insertCell(0);
    var cel2 = fila.insertCell(1);
    var cel3 = fila.insertCell(2);
    cel1.innerHTML = n;
    cel2.innerHTML = n*n;
    cel3.innerHTML = n*n*n;
}    
}

function ejer2(){
    var numAle1 = Math.round(Math.random()*50);
    var numAle2 = Math.round(Math.random()*50);
   var inicio = new Date();
    var resultado = prompt("Escribir Resultado        "+numAle1+"+"+numAle2+" :");
    var fin = new Date();
    
    if(resultado == numAle1+numAle2){
       var res = "Correcto";
       }else{
           var res = "Incorrecto";
       }
    var tiempo = Math.round((fin-inicio)/1000);
    document.getElementById("resultado").innerHTML = res;
    document.getElementById("temp").innerHTML = tiempo+"    Segundos";
}

function ejer3(){
    
}