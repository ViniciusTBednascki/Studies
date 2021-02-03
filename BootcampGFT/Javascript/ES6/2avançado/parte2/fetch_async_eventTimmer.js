const asyncTimer = () => new Promise((resolve, reject) => {
    setTimeout(() =>{
        resolve(12345)
    }, 2000);
})

const asyncFunction = async() => {
    const data = await asyncTimer();
    return data;
}

asyncFunction().then(data => console.log(data));