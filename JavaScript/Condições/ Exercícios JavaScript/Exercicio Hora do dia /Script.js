function carregar(){

    var msg = document.getElementById('msg')
    var img = document.getElementById('imagem')
    var sec = document.getElementById('sec')

    var data = new Date()
    var horas = data.getHours()

    msg.innerText = `Agora são ${horas} horas`

    if(horas >= 0 && horas < 12){
        img.src = 'foto/pexels-torsten-kellermann-349167-955656.jpg'
        document.body.style.background = '#e2cd9f'
        sec.style.background = '#e0d8c7'

    }else if(horas >= 12 && horas < 18){

        img.src = 'foto/pexels-pixabay-33545.jpg'
        document.body.style.background = '#9e7683'
        sec.style.background = '#e7c3ce'
    }else{

        img.src = 'foto/pexels-livkinson-12462538.jpg'
        document.body.style.background = '#30303b'
        sec.style.background = '#c2c2d3'
    }

}

