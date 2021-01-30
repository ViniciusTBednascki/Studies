//symbols
const uniqueId = Symbol('hello');

//well know symbols
const arr = [1, 2, 3, 4];
const iterator = arr[Symbol.iterator]();

while(true){
    let {value, done} = iterator.next();
    if(done == true){
        break
    };
    console.log(value);
}
console.log("\n");

for(let value of arr){
    console.log(value);
}
console.log("\n");

//object iterator
const obj = {
    values: [1,2,3,4],
    [Symbol.iterator]() {
        let i = 0;

        return{
            next: () => {
                i++;

                return{
                    value: this.values[i-1],
                    done: i > this.values.length
                };
            }
        };
    }
};

for(let value of obj){
    console.log(value);
}

const arr2 = [...obj];
console.log(arr2);



