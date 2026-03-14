// Retorno e parâmetros de funções
function semretorno(){
    return;
    let x = 8;
    return;
}

console.log(semretorno()) // undefined

const semRetorno = () => console.log('sem retorno')

console.log(semRetorno()) //Undefined

console.log('________________________')
console.log('Passo 2')

function soma(x,y){
    return x+y;
}

console.log(soma(3)) // NaN

function multi(x,y) {
    y = y || 0;
    return x-y;
}

console.log(multi(3)) // 3 

console.log('______________________________')

function soma2(x,y=0){
    return x+y;
}

console.log(soma2(2)) // 2

function multi2(x=8, y=6){
    return x*y;
}

console.log(multi2()) // 48

console.log('______________________________')

function soma3(x,y){
    return x+y;
}

console.log(soma3(1,2,3,4,5,6,7)) // 3

function multi3(x,y){
    console.log(arguments) // objeto
    return x*y;
}


console.log(multi3(1,2,3,4,5,6,7))
console.log('_________________________________________________')
console.log(`O que não foram para a função: ${multi3(arguments)}`)
