var listaPacientes = document.querySelectorAll(".paciente");

listaPacientes.forEach((paciente) => {
    let peso = paciente.querySelector(".info-peso");
    let valorPeso = peso.textContent;
    
    let altura = paciente.querySelector(".info-altura");
    let valorAltura = altura.textContent;
    
    let imc = paciente.querySelector(".info-imc");
    let valorImc;
    
    let pesoValido = validarPeso(valorPeso);
    let alturaValida = validarAltura(valorAltura);

    if(!pesoValido){
        peso.textContent = "Peso inválido"
        peso.classList.add("informacaoInvalida");
    }

    if(!alturaValida){
        altura.textContent = "Altura inválida"
        altura.classList.add("informacaoInvalida");
    }

    if(pesoValido && alturaValida){
        valorImc = calcularImc(valorPeso, valorAltura);
        imc.textContent = valorImc;
    }else{
        imc.textContent = "Altura e/ou peso inválidos"
        imc.classList.add("informacaoInvalida");
    }
});

function validarPeso(peso){
    if(peso > 0 && peso < 1000){
        return true;
    }else{
        return false;
    }
}

function validarAltura(altura){
    if(altura > 0 && altura < 4.00){
        return true;
    }else{
        return false;
    }
}

function calcularImc(valorPeso, valorAltura){
   return (valorPeso/Math.pow(valorAltura,2)).toFixed(2);
}