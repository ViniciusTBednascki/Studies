const eventEmmiter = require('events');

class Users extends eventEmmiter {
    userLogged(data){
        this.emit('user logged', data);
    }
}

const users = new Users();

users.on('user logged', data => console.log(data));

users.userLogged({user:'Henrique pereira'});
users.userLogged({user:'Joerge cleiton'});