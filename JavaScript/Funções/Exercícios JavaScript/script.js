let caixa = document.getElementById('caixa')
let lista = document.getElementById('tabela')
let res = document.getElementById('res')

let valores = []

function isNumero(n){
    if(n >= 1 && n <= 100){
        return true
    }else{
        return false
    }
}

function inLista(n, l){
    if(l.indexOf(n) != -1){
        return true
    }else{
        return false
    }
}

function adicionar(){
    let num = Number(caixa.value)

    if(isNumero(num) && !inLista(num, valores)){
        alert('tudo ok')
    }else{
        alert('Valor invalido ou já encontrado na lista')
    }
}