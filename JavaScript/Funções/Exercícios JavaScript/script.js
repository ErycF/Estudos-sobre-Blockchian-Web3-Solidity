let caixa = document.getElementById('caixa')
let num = Number(caixa.value)
let lista = document.getElementById('tabela')
let res = document.getElementById('res')

let valores =  []
valores.push(num)

function adicionar(){
    console.log(num)

    if(num == 0){
        alert('[ERRO] Coloque um número!')
    }else{
        for( let i = num; i < num.length; i++){
            let numV = [i]
        }
    }
}