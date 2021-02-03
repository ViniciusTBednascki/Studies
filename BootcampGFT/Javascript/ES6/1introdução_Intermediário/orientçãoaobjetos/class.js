class Animal{
    constructor(){
        this.qtdePatas = 0;
    }
    
    movimentar(){}
}

class Cachorro extends Animal{
    constructor(morde){
        super();
        this.qtdePatas =4;
        this.morde = morde;
    }

    latir(){
        console.log("Au Au");
    }
}

const pug = new Cachorro(false);

console.log(pug);
pug.latir();