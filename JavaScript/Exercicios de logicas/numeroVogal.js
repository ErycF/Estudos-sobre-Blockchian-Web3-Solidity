let vogal = (nome) => {
    return nome.split('').length
}

console.log(vogal('eryc'))

let contaVogal = (nome) => {
    
    let vogais = 'aeiouAEIOU';

    return nome.split('').filter(letra => vogais.includes(letra)).length;
}

console.log(contaVogal('eryc'))
console.log(contaVogal('programação'))