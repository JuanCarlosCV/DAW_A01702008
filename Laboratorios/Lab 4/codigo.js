
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
    var arreglo=[];
    var pos=0;
    var neg=0;
    var cer=0;
    for(var i=0 ;i<10;i++){
        var numero = prompt("Ingresar # ["+i+"]");
        arreglo.push(numero);
        
        
    }
    
    for(var i=0 ;i<10;i++){
        if(Number(arreglo[i]<0)){
            neg+=1;
           }else if(Number(arreglo[i])==0){
            cer+=1;
        }else {
              pos+=1;   
        }        
        
    }
    
    document.getElementById("negat").innerHTML = "Negativos: "+neg;
    
    
    document.getElementById("ceros").innerHTML = "Ceros: "+cer;
    
    
    document.getElementById("pos").innerHTML = "Positivos: "+pos;
    
}


function ejer4(){
    var tol =0;
    var num =0;
    var promediolargo = prompt("Dime cuantos numeros son: ");
    var promedios = prompt("Cuantos Promedios ?");
    var arreglo=[];
    for(var j =0;j<promedios;j++){
     for(var i =0;i<promediolargo;i++){
        var num = prompt("Numero ["+i+"]--Promedio || "+j+" ||");
        tol+=num; 
    }   
         arreglo[j].push(tol/promedios);
        tol=0;
    }
    
     for(var i =0;i<promedios;i++){
     var proms= proms +" | "+  arreglo[i];
     }
    
    document.getElementById("Promedios").innerHTML= proms;
    
    
}