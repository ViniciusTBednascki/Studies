function* hello(){
    console.log('hello');
    yield 1;

    console.log('from');
    yield 2;

    console.log('function');
}

function* naturalNumbers(){
    let number =0;
    while(true){
        yield number;
        number++;
    };
}

const it = naturalNumbers();

for(let i= 0; i< 10; i++){
    console.log(it.next().value);
}
console.log('\n');

//generators
const obj = {
    values: [1, 2, 3, 4],
    *[Symbol.iterator]() {
        for (var i = 0; i < this.values.length; i++ ){
            yield this.values[i];
        }
    }
};

for (let value of obj){
    console.log(value);
}