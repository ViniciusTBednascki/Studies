var i;
//arrow function
var square = (number) => number**2;

console.log(square(2));
console.log('\n');

//default function arguments
function randomNumber(){
    return (Math.random()*10);
}

function multiply(a,b = randomNumber()){
    return a * b;
}

for(i = 0; i<5; i++){
    console.log(multiply(5));
}
console.log('\n');

//enchanced objects literals
var prop = "test";

var obj = {
    prop: "value",
    concat(word1){
        return 'concat '+ word1;
    }
}

console.log(obj);
console.log(obj.concat('test'));
