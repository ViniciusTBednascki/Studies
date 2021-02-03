//destructuring assignment
var arr =['apple', 'orange', 'grape'];
var [apple, orange, grape] = arr;

console.log(apple, orange, grape);

var obj = {
    username: "Julio",
    age: 27,
    country: "England",
    props:{
        active: false
    }
}
var {username, age, country, props:{active}} = obj;

console.log(username, age, country, active);
