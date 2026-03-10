function tabuada(){
    let nun = document.getElementById('txtn')
    let tab = document.getElementById('seltab')

    if(nun.value.length == 0){
        alert('Por favor, digite um número')
    }else {

        let n = Number(nun.value)
        let i = 1

        tab.innerHTML = ''
        while(i <= 10){
            let item = document.createElement('option')
            item.text = `${n} * ${i} = ${n*i}`
            item.value = `tab${i}`
            tab.appendChild(item)
            i++
        }
    }
}