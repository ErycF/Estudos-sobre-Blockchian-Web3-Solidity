function Fatorial(n){
    let fat = 1
    for(let i = n; i > 1; i--){
        fat *= i
    }
    return fat
}

console.log(Fatorial(6))

console.log('--------------------')

function fatorialRecursiva(n){
    if(n == 1){
        return 1
    }else{
        return n*fatorialRecursiva(n-1)
    }
}
console.log(fatorialRecursiva(12))