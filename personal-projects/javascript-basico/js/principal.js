var titulo = document.querySelector(".titulo");
console.log(titulo);
console.log(titulo.textContent);
titulo.textContent = "Potato Nutrition";

var paciente = document.querySelector("#primeiro-paciente");
var tdPeso = paciente.querySelector(".info-peso");
var peso = tdPeso.textContent;
var tdAltura = paciente.querySelector(".info-altura");
var altura = tdAltura.textContent;
var tdIMC = paciente.querySelector(".info-imc");
var pesoValido = true;
var alturaValida = true;

if (peso <= 0 || peso >= 1000) {
    console.log("Peso invalido!");
    pesoValido = false;
}
if (altura <= 0 || altura >= 3.00) {
    console.log("Altura invalida!");
    alturaValida = false;
}
if (pesoValido && alturaValida) {
    var imc = peso / (altura * altura);
    tdIMC.textContent = imc;
} else {
    tdIMC.textContent = "Peso e/ou Altura invalida!";
}

console.log(peso);
console.log(altura);
console.log(imc);