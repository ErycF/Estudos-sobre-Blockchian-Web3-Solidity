function verificar(){

    var data = new Date()
    var ano = data.getFullYear()

    var fAno = document.getElementById('fAno')
    var res = document.querySelector('div#res')

    if( fAno.value.length == 0 || Number(fAno.value) > ano){
        alert('[ERRO] Verifica os dados e tente novamente')

    }else{

        var fsex = document.getElementsByName('radsex')
        var idade = ano - Number(fAno.value)
        var genero = ''
        var img = document.getElementById('imagem')


        if(fsex[0].checked){
            genero  = 'Homem'

            if(idade >= 0 && idade < 18){
                
                img.src = 'fotos/menino.jpg'
            }else if(idade < 60){
                img.src = 'fotos/homen.jpg'
            }else if (idade < 110){
                img.src = 'fotos/velho.webp'
            }

        }else if(fsex[1].checked){

            genero = 'Mulher'

            if(idade >= 0 && idade < 18){
                img.src = 'fotos/menina.jpg'
            }else if(idade < 60){
                img.src = 'fotos/mulher.jpg'
            }else if (idade < 110){
                img.src = 'fotos/velha.webp'
            }
        }
        
    }
}