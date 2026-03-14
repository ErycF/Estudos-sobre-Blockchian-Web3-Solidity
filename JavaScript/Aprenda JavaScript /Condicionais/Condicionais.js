console.log('Antes da condicional')

let x = 3

if (x > 3){
    console.log('Verdaeiro')
}else {
    console.log('Falso')
}
console.log('Depois da condicional')

console.log('__________________________')

let n = 3

switch(n){
    case 1:
        console.log('1')
    break;
    case 2:
        console.log('2')
    break;
    case 3:
        console.log('3')
    break;
    default:
        console.log('outro número')
    break;
}
console.log('__________________________')

let b = 4;

let y  = (b === 3)? b+1 : b+1
console.log(y)