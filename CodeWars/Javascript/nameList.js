function list(names){
    //Melhor prática:
    /*
    return names.reduce(function(prev, current, index, array){
        if (index === 0){
        return current.name;
        }
        else if (index === array.length - 1){
        return prev + ' & ' + current.name;
        } 
        else {
        return prev + ', ' + current.name;
        }
    }, ''); 
    */
    var result;
    var namesLenght = Object.keys(names).length;
    if(namesLenght == 0){
        result = '';
    }else if( namesLenght == 1){
        result = names[0]['name'];
    }else{
        var lastTwo = [];
        var stringNames = [];
        names.forEach((name,i) => {
            if(i < namesLenght - 2 ){
                stringNames.push(name['name']);
            }else{
                lastTwo.push(name['name']);
            }
        })
        stringNames.push(lastTwo.join(' & '));
        var result = stringNames.join(', ');
    }
    return result;
    
  }

  var nullList = list([]);
  var result = list([ {name: 'Bart'}]);
  var otherResult = list([ {name: 'Bart'}, {name: 'Lisa'} ]);
  var anotherResult = list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]);
  console.log(nullList);
  console.log(result);
  console.log(otherResult);
  console.log(anotherResult);