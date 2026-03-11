let valores = [5,7,1,2,8,9]

console.log(`[${valores}]`)

for (let i = 0; i < valores.length; i++){
    console.log(`A Posição ${i} tem o valor ${valores[i]}`)
}

console.log('----------------------------------------')
console.log('Outra maneira de fazer mais simplificada')

valores.sort()

for(let i in valores){
    console.log(`A posição ${i} tem o valores ${valores[i]}`)
}

console.log('-----------------------------------------')

let pos = valores.indexOf(8)

if(pos == -1){
    console.log('O valor não foi encontrado')
}else{
    console.log(`O valor 8 esta no indice ${pos}`)
}

// indexOf você coloca pesquisa um valor e se existi o valore irar te mstra o indice