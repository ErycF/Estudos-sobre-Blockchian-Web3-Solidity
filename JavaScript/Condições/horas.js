var agora = new Date()

var horas = agora.getHours()

if(horas >= 12 && horas < 18){
    console.log(`são ${agora} então Boa Tarde`)
}else if(horas >= 18 && horas > 0){
    console.log(`São ${agora} então Boa Noite`)
}else if(horas >= 0){
    console.log(`São ${agora} então uma Boa Madrugado`)
}else {
    console.log(`São ${agora} então Bom Dia`)
}

