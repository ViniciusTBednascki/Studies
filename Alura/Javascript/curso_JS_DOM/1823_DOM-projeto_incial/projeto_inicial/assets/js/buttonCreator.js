function addButtonToElement(buttonType,task){
    let button = createButton(buttonType);
    
    task.appendChild(button);
}

function createButton(buttonType) {
    let button = document.createElement("button");
    button.classList.add(`${buttonType}-button`);
    button.textContent = buttonType.toUpperCase();
    
    if(buttonType === "check"){
        button.addEventListener("click", function () {
            let task = this.parentElement.parentElement;
            
            task.classList.toggle('done');
            
            console.log("Task cheked");
        });
    }else if(buttonType === "delete"){
        button.addEventListener("click", function () {
            let task = this.parentElement.parentElement;
            
            task.remove();
            
            console.log("Task deleted");
        });
    }
    
    return button;
}

export default addButtonToElement;