// NaN = E quando 7 - 'a' = NaN; o tipo dele é um número mais a expressão não resulta em um número

// infinity = E quando a divição é infinito

let n = 7
let l = 'a'

let result = n + Number(l.value)

console.log(`Um número 7 + Uma string 'a' e igual a NaN`) 
console.log(`Um número ${n} + Uma string '${l}' e igual a ${result}`)