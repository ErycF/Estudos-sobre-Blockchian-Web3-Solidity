function parInpa(num){
    if(num%2 == 0){
        return 'Par';
    }else{
        return 'Ímpar'
    }
}

console.log(`O numero ele é: ${parInpa(6)}`)
console.log("----------------------------------")
function soma(n1=0,n2=0){
    return n1 + n2
}

console.log(`A soma fica: ${soma(4,6)}`)

console.log("----------------------------------")

let v = function soma2(n){
    return n*2
}
console.log(`O númeo multiplicado fica: ${v(27)}`)