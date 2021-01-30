//splice
const frutas = ['maçã','laranja','banana']

console.log(`Lista: ${frutas}`);
console.log(`Retirado: ${frutas.splice(2)}`);
console.log(`Lista: ${frutas}`);
const novasFrutas = ['uva','pêra']
console.log(`Retirado: ${frutas.splice(1,1,...novasFrutas)}\nAdicionado:${novasFrutas}`);
console.log(`Lista: ${frutas}`);
console.log('\n');

//forEach
frutas.forEach((fruta, index, arr) => console.log(arr,index,fruta));
console.log('\n');

//iterators
const keyIterator = frutas.keys();
for(let value of keyIterator){
    console.log(value);
}