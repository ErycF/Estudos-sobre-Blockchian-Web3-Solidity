const anonima = function (x,y){
    return x+y
}

const seta = (x,y) => x+y

const dobra = x => x*2

const escrever = () => 'Diferentes funçoẽs'

console.log(`Função anônima: ${anonima(3,5)}`)

console.log(`Funcão seta: ${seta(3,5)}`)

console.log(`Função dobrar: ${dobra(3)}`)

console.log(escrever())

console.log('_____________________')

const execulta = (func, x,y) => func(x,y)

// Variavel valor; variavel execulta; dentro 'é uma função anônima sem function; tem 2 parametros; vira uma arrow function; i**j pontenciação; e depoiss os valores de i e j;'
let valor = execulta((i,j) => i**j,2,3)

console.log(valor)