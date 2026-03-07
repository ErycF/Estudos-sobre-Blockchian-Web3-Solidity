var agora = new Date()

var semana = agora.getDay()

console.log(`O dia da semana é ${semana}`)

switch(semana){

    case 0:
        console.log('Domingo')
        break
    case 1:
        console.log('Segunda')
        break
    case 2:
        console.log('Terça')
        break
    case 3:
        console.log('Quarta')
        break
    case 4:
        console.log('Quinta')
        break
    case 5: 
        console.log('Sexta')
        break
    default: 
        console.log('Sabado')
        break
}