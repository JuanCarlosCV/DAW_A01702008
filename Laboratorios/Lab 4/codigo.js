
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