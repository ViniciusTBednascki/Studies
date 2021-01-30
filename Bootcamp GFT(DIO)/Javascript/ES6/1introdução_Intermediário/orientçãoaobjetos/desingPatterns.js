//não factory:
/*function FakeUser(){
    this.name = "Ana"
    this.lastName = "julia"
}

const user = new FakeUser();*/

//factory
function FakeUser(){
    return{
        name: "Ana",
        lastName: "Julia"
    }
}

const user = FakeUser();
console.log(user);
console.log('\n');

//Singleton
function Pessoa(){
    if(!Pessoa.instance){
        Pessoa.instance = this;
    }

    return Pessoa.instance;
}

const p = Pessoa.call({name: 'um nome'});

const p2 = Pessoa.call({name: 'outro nome'});

console.log(p);
console.log(p2);
console.log('\n');

//Decorator

let loggedIn = false;

function callIfLoggedIn(fn){
    return !!loggedIn && fn();
}

function sum(a, b){
    return a + b;
}

console.log(callIfLoggedIn(() => sum(2,3)));
loggedIn = true;
console.log(callIfLoggedIn(() => sum(2,3)));
loggedIn = false;
console.log(callIfLoggedIn(() => sum(2,3)));
console.log('\n');

//observer
class Observable{
    constructor(){
        this.observables =[];
    }

    subscribe(fn){
        this.observables.push(fn);
    }

    notify(data){
        this.observables.forEach(fn => fn(data));
    }

    unsubscribe(fn){
        this.observables = this.observables.filter(obs => obs !== fn);
    }
}

const o = new Observable();

const logData1 = data => console.log(`subscribe 1: ${data}`);
const logData2 = data => console.log(`subscribe 2: ${data}`);
const logData3 = data => console.log(`subscribe 3: ${data}`);

o.subscribe(logData1);
o.subscribe(logData2);
o.subscribe(logData3);

o.notify('notifying...');
console.log('\n');

o.unsubscribe(logData2);

o.notify('notifying again');
console.log('\n');

