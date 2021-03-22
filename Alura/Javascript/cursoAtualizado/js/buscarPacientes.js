var button = document.querySelector("#buscarPacientes");

button.addEventListener("click", () => {
    console.log("Buscando pacientes...");

    var xhr = new XMLHttpRequest();

    xhr.open("GET","https://api-pacientes.herokuapp.com/pacientes");

    xhr.addEventListener("load", () => {

        try {
            var erroAjax = document.querySelector("#erroAjax");
            erroAjax.classList.add("hidden");

            var resposta = JSON.parse(xhr.responseText);
        
            resposta.forEach(paciente => {
                adcionarPacienteNaTabela(paciente);
            });
        } catch{
            console.log(xhr.status);
            console.log(xhr.response);

            var erroAjax = document.querySelector("#erroAjax");
            erroAjax.classList.remove("hidden");
        }
        
    });

    xhr.send();
});