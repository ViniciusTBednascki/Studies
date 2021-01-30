/*function Animal(qtdePatas){
    this.qtdePatas = qtdePatas;
    this.movimentar = function(){

    };
}

function Cachorro(morde){
    Animal.call(this, 4);

    this.morde = morde;
    this.late = function(){
        console.log("Au Au");
    }
}*/

function Animal(){}

Animal.prototype.qtdePatas = 0;
Animal.prototype.movimentar = function(){}

function Cachorro(morde){
    this.qtdePatas = 4;
    this.morde = morde;
}

Cachorro.prototype = Object.create(Animal);
Cachorro.prototype.latir = function(){
    console.log("Au Au");
}

const pug = new Cachorro(false);
const pitbull = new Cachorro(true);

pug.latir();
console.log(pitbull)