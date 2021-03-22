import addButtonToElement from "./buttonCreator.js";

function createTask(input){
    let task = document.createElement("li");
    task.classList.add("task");
    
    let content = `<p class="content">${input.value}</p>`
    task.innerHTML = content;
    input.value = "";
    
    let buttons = document.createElement("div");
    buttons.classList.add("buttonsContainer");
    addButtonToElement("check", buttons);
    addButtonToElement("delete", buttons);
    task.appendChild(buttons);
    
    console.log("Task created");
    
    return task;
}

export default createTask;