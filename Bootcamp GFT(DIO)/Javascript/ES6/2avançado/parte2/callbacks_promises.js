//promisses

const myPromise = () => new Promise((resolve,rejected) => {
    setTimeout(() => {
        resolve('First data')
    }, 1000);
});

const myOtherPromise = () => new Promise((resolve,rejected) => {
    setTimeout(() => {
        resolve('Second data')
    }, 2000);
});

myPromise().then(data => {
    console.log(data.split(''));
    return myOtherPromise();
})
.then(data2 => console.log(data2.split('')))
.catch(error => console.log(`Deu ruim:\n${error}`));

Promise.all([myPromise(), myOtherPromise()]).then(data => console.log(data));

//callbacks
/*function doSomething(callback){
    callback('first data');
}

function doOtherthing(callback){
    callback('second data')
}

function doAll(){
    doSomething(function(data) {
        var processedData = data.split('');

        doOtherthing(function(data2) {
            var processedData2 = data2.split('');
            console.log(processedData, processedData2);
        })
    });
     
};*/