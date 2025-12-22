// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Explicita{

    function converte() public pure returns (uint8){

        int8 numero = -1;
        uint8  numeroPositivo = uint8(numero);
        
        return numeroPositivo;
        
        /* O número -1 em int8 ele é gravado com os seguintes bytes dessa forma: 111111111 essa é a representação do número
        int8 em bytes do -1.

        Para ocorrer a coonversão primeiro e passado o tipo e depois entre() o valor que queremos convrter = uint8(numero);

        Esse número positivoo ele continua sendo 11111111, porem, o 11111111 em uint ele é o número 255, ele vai tratar esses
        oitos 1 como uint8 e  esses oito 1 em uint8 é o número 255.*/
    }

    function converte2() public pure returns (uint8){

        // 0001100110001111 = 6543
        uint16 numero = 6543;

        // 10001111 = 143
        uint8 numeropositivo = uint8(numero);
        
        return numeropositivo;

        /*O uint8 so cabe 8 bites entao ele so ira mante apeas os ultimos 8 bites que é: 10001111,  então e isso que acoontece
        ele so pode pegar os ultimos 8 bites e guarda.*/
    }

    function converte3() public pure returns (bytes1){

        bytes2 maior = 0x1234;
        bytes1 menor = bytes1(maior);

        return menor;

        /*No caso de bytes ele não ira pegar o final, ele irar manter o inicio logo, ele  eira manter o 12.*/
    }
}
/*
    COVERSÃO EXPLÍCITA
    Mantêm os bytes possíveis e trata o valor como o tipo convertido
    INT8 to UINT8
    -1 = 11111111 = 255
*/