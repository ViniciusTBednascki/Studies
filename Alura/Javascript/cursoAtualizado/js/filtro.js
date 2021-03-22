var inputFiltro = document.querySelector("#filtroTabela");

inputFiltro.addEventListener("input",function() {
    var pacientes = document.querySelectorAll(".paciente");
    var input = this.value;

    pacientes.forEach(paciente => {
        var tdNome = paciente.querySelector(".info-nome");

        if(input.length > 0){
            var nome = tdNome.textContent;
            var filtro = new RegExp(input,"i");

            if(filtro.test(nome)){
                paciente.classList.remove("hidden");
            }else{
                paciente.classList.add("hidden");
            }
        }else{
            paciente.classList.remove("hidden");
        }

    });
})