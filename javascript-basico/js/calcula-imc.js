var titulo = document.querySelector(".titulo");
titulo.textContent = "Potato Nutrition";

var pacientes = document.querySelectorAll(".paciente");

for (var i = 0; i < pacientes.length; i++) {
    var paciente = pacientes[i];

    var tdPeso = paciente.querySelector(".info-peso");
    var peso = tdPeso.textContent;
    var tdAltura = paciente.querySelector(".info-altura");
    var altura = tdAltura.textContent;
    var tdIMC = paciente.querySelector(".info-imc");

    var pesoValido = validaPeso(peso);
    var alturaValida = validaAltura(altura);

    if (!pesoValido) {
        paciente.classList.add("paciente-invalido");
        tdPeso.style.color = "yellow";
    }
    if (!alturaValida) {
        paciente.classList.add("paciente-invalido");
        tdAltura.style.color = "yellow";
    }
    if (pesoValido && alturaValida) {
        var imc = calculaImc(peso, altura);
        tdIMC.textContent = imc;
    } else {
        tdIMC.textContent = "Dado invalido!";
    }
}

function validaPeso(peso) {
    if (peso > 0 && peso < 1000)
        return true;
    else
        return false;
}

function validaAltura(altura) {
    if (altura > 0 && altura <= 3.0)
        return true;
    else
        return false;
}

function calculaImc(peso, altura) {
    var imc = 0;
    imc = peso / (altura * altura);
    return imc.toFixed(2);
}