let numero = [9,2,4,1,5]

console.log(`Array: [${numero}]`)
console.log(`Tamanho do array: ${numero.length}`)
console.log(`Ordem crescente do array: ${numero.sort()}`) // sort() -> Organiza em ordem crescente
console.log(`Indice 4 do array é: ${numero[4]}`)

console.log('--------------------------------------')
let numero2 = [5,9,2,5,4,1,6,12,63,7,99,90,53]

console.log(`Array antes do sorte(): ${numero2}`)

numero2.sort()

console.log(`Array depois do sort(): ${numero2}`)

numero2.push(4)

console.log(`Array depois do sort() e logo em seguida adicionando um número: ${numero2}`)

console.log('--------------------------------------')

console.log('Array numero')
for(let i = 0; i < 5; i++){
    console.log('Array: '+numero[i])
}
console.log('-----------------------------------------')

console.log('Array numero2')
console.log(numero2.length)
for (let i = 0; i < 14; i++){
    console.log(`Array: ${numero2[i]}`)
}