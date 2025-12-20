// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract While{

    function repetir() public pure returns (uint){

        uint soma;
        uint contagem;

        while (contagem < 10){
            
            contagem++;
            soma = contagem + soma;
        }
        return soma;
    }
}
/*
    Repetir bloco de codigo enquanto condição for satisfeita;
    
    WHILE (CONDIÇÃO) {CÓDIGO}

    BREAK - sair do laço

    CONTINUE - continuar para a proxima interação

*/