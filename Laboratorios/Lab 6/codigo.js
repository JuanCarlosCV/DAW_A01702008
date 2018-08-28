function cambiaColortext1() {
    // alert("hola");
    document.getElementById("text1").style.color = "blue";
    document.getElementById("text1").style.fontWeight = "bold";
}

function cambiaColortext2() {
    // alert("hola");
    document.getElementById("text2").style.color = "gold";
    document.getElementById("text2").style.position = "fixed";
    document.getElementById("text2").style.fontWeight = "bold";
}

function cambiaTitulo() {
    document.getElementById("titulo").style.fontSize = "20px";
}

function ventana_ayuda() {
    document.getElementById("ayuda").style.display = "block";


}

function salir_ayuda() {
    document.getElementById("ayuda").style.display = "none";
}

function validaciones() {
    var name = document.getElementById("nombre").value;
    var apellido = document.getElementById("apellido").value;
    var edad = document.getElementById("edad").value;
    var correo = document.getElementById("correo").value;

    var pass1 = document.getElementById("key1").value;
    var pass2 = document.getElementById("key2").value;

    if (name == "" && apellido == "" && edad == "" && correo == "" && pass1 == "" && pass2 == "") {
        ventana_ayuda();
        document.getElementById("ayuda").innerHTML += "Completar";
    } else {
        alert("Registro completo");
    }


}
var myVar;

function myFunction() {
    myVar = setInterval(alertFunc, 3000);
}

function alertFunc() {
    alert("Realiza clic sobre el texto de la primera seccion");
}
var myVar1;

function myFuncion() {
    myVar1 = setTimeout(alertFunc1, 3000);
}

function alertFunc1() {
    document.getElementById("refer").style.display = "block";
}

function dragstart(caja, evento) {
    // el elemento a arrastrar
    event.dataTransfer.setData('Data', caja.id);
}

function drop(target, evento) {
    // obtenemos los datos
    var caja = event.dataTransfer.getData('Data');
    // agregamos el elemento de arrastre al contenedor
    target.appendChild(document.getElementById(caja));
}
