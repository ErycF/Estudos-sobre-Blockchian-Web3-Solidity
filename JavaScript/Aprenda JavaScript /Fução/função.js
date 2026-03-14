// Com declaração de funções podemos invocar a função antes da sua declaração;

console.log(`Antes da funçaõ: ${soma(5,7)}`)
function soma(x,y){
    return x + y
}
console.log(`Depois da função: ${soma(1,6)}`)

console.log('_________________________')

// Porem, com expreções de funções isso não e possivel;

let mutiplicacao = function (x,y){
    return x * y
}

console.log(`${mutiplicacao} , ${mutiplicacao(4,6)}`)
console.log(mutiplicacao)
console.log('_________________________')

// Podemos passa funções como argumentos para outras funções e retorrna funções de outras funções

let execulta = function (func) {
    return func(4,8)
}

console.log(`Execulta a função soma: ${execulta(soma)}`)

console.log(`Execulta a função multiplica: ${execulta(mutiplicacao)}`)
