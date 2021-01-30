const assert = require('assert');
const Math = require('../src/math.js');
const expect = require('chai').expect;
const sinon = require('sinon');

let num = 0;

describe('Math class', function(){
    //hook
    //beforeEach()
    afterEach(function(){
        console.log('Reseting value')
        num = 0;
    });
    it('Sum two numbers',function(done){
        const math = new Math();
        this.timeout(3000);

        num = 5;

        math.sum(num,5, (value) =>{
            expect(value).to.equal(10);
            done();
        })
    });

    it('multiply two numbers', function(){
        const math = new Math();
        expect(math.multiply(num,5)).to.equal(0);
    });

    it('checks the object attribute value', function(){
        const obj = {
            name: "Vinicius Terres",
            country: "Brasil"
        }

        expect(obj)
        .to.have.property('age')
        .equal('Vinicius Terres');
    });

    it.only('calls res with sum and index values', function(){
        const req ={}
        const res ={
            load(){
                console.log('Called!');
            }
        };
        sinon.stub(res,'load').returns('xpto');

        const math = new Math();
        
        math.printSum(req, res, 5, 5);

        res.restore();

        expect(res.load.args[0][0]).to.equal('Index');
    })

})

