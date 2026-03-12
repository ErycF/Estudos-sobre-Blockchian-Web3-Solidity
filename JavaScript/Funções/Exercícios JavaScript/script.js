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
        valores.push(num)
        let item = document.createElement('option')
        item.text = `Valor adicionado: ${num}`
        lista.appendChild(item)
    }else{
        alert('Valor invalido ou já encontrado na lista')
    }

    num = ''
    num.focus()
}

function finalizar(){

    if(valores.length == 0 ){
        alert('Adicione valores antes de finalizar')
    }else{
        let lot = valores.length
        let maior = valores[0]
        let menor = valores[0]
        let soma = 0
        let media = 0

        for(let i in valores){
            soma += valores[i]

            if(valores[i] > maior){
                maior = valores[i]

            } else if(valores[i] < menor){
                menor = valores[i]

            }
        }
        media = soma / lot

        res.innerHTML = ''
        res.innerHTML += `<p>Ao todo temos <strong>${lot}</strong> números cadastrado</p>`
        res.innerHTML += `<p>O maior número informado foi: <strong>${maior}</strong></p>`
        res.innerHTML += `<p>O menor número informado foi: <strong>${menor}</strong></p>`
        res.innerHTML += `<p>Somando todos os valores: <strong>${soma}</strong></p>`
        res.innerHTML += `<p>A media dos valores digitados são: <strong>${media}</strong></p>`
    }
}