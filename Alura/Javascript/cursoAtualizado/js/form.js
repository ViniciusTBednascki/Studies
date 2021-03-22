var botaoAdcionar = document.querySelector("#adicionar-paciente");
botaoAdcionar.addEventListener("click",
    (event) => {
        event.preventDefault();
        
        var mensagemErro = document.querySelector(".mensagemErro");
        mensagemErro.innerHTML = "";
        
        var form = document.querySelector(".formulario");

        var paciente = extrairForm(form);

        var erros = validarPaciente(paciente);

        if(erros.length > 0){
            exibirMensagemErro(erros, mensagemErro);
            return;
        }

        adcionarPacienteNaTabela(paciente);

        form.reset();
    }
);

function adcionarPacienteNaTabela(paciente){
    var pacienteTr = criarTr(paciente);

    var tabelaPacientes = document.querySelector("#tabela-pacientes");
    tabelaPacientes.appendChild(pacienteTr);
}

function exibirMensagemErro(erros, mensagemErro){
    for(let i = 0; i < erros.length; i++){
        let li = document.createElement("li");

        li.textContent = erros[i];

        mensagemErro.appendChild(li);
    }
}

function validarCampos(paciente){
    let todosPreenchidos = true;
    for(let info in paciente){
        if (Object.prototype.hasOwnProperty.call(paciente, info)) {
            if(paciente[info].length == 0){
                todosPreenchidos = false;
            }
        }
    }
    return todosPreenchidos;
}

function validarPaciente(paciente){
    let erro = [];

    if(!validarCampos(paciente)){
        erro.push("Todos os campos precisam ser preenchidos");
    }else{
        if(!validarPeso(paciente.peso)){
            erro.push("Peso inválido");
        }
    
        if(!validarAltura(paciente.altura)){
            erro.push("Altura inválida")
        }
    }

    return erro
}


function extrairForm(form) {
    
    var paciente = {
        nome: form.nome.value,
        peso: form.peso.value,
        altura: form.altura.value,
        gordura: form.gordura.value,
        imc: calcularImc(form.peso.value,form.altura.value)
    }
    
    return paciente;
}

function criarTr(paciente) {
    var pacienteTr = document.createElement("tr");
    pacienteTr.classList.add("paciente");

    for(let info in paciente){
        if (Object.prototype.hasOwnProperty.call(paciente, info)) {
            inserirColuna(info, paciente[info], pacienteTr);
        }
    }

    return pacienteTr;
}

function inserirColuna(className, info, tr) {
    var td = document.createElement("td");
    td.classList.add(`info-${className}`);
    td.textContent = info;
    tr.appendChild(td);
}
