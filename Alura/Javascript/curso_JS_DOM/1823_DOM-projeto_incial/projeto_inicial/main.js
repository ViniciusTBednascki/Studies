import createTask from "./assets/js/taskCreator.js";
    const addTaskToList = (event) => {
        event.preventDefault();
        
        var informInput = document.querySelector("[data-form-input]");
        
        var task = createTask(informInput);
        
        var list = document.querySelector("[data-list]")

        list.insertBefore(task,list.childNodes[1]);
    }

    var formButton = document.querySelector("[data-form-button]");

    formButton.addEventListener("click", addTaskToList);