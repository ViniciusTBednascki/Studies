class CustomError extends Error{
    constructor({message, data}){
        super(message);
        this.data = data;
    }
}

try{
    const myError = new CustomError({
        message:'deu ruim', 
        data: {
            type: 'server error'
        }
    });
    throw myError;
}catch(err){
    console.log(err);
}

console.log('continuig code');