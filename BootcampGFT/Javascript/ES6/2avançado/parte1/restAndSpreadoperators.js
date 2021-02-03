//rest operator
var test = (a,b, ...rest) => {
    console.log(a,b,rest);
}

test(1,2,3,4,5);
console.log('\n');

//Spread operator
function multiply(...args){
    return args.reduce((acc, value) => acc * value, 1);
}

function sum(...args){
    return args.reduce((acc, value) => acc + value, 0);
}

function sumandmultiply(...args){
    return "sum: "+sum(...args)+"\nMult: "+multiply(...args);
}

console.log(sumandmultiply(1,2,3,4,5));
console.log('\n');

//strings,arrays, literal objects e objetos iteraveis
const str ="Digital Inovation One";
const arr =[1, 2, 3, 4]
function LogArg(...arg){
    console.log(arg);
}

LogArg(...str);

const arr2 = [...arr, 5, 6, 7];

console.log(arr2);

const obj = {
    prop: 1234,
    prop2: 5678
}

const obj2 = {
    ...obj,
    prop3: 910
}

console.log(obj2);


