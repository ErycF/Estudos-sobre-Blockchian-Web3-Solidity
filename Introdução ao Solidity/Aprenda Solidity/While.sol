// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract While{

    function repetir() public pure returns (uint){

        uint soma;
        uint contagem;

        while (contagem <= 10){
            
            contagem++;
            soma = contagem + soma;
        }
        return soma;
    }

    function repetirBreak() public pure returns (uint, uint){

        uint soma;
        uint contagem;

        while (contagem <= 10){
            contagem++;

            if(contagem == 5){
                break;
                // Quandoo chegar no BREAK, ele (SAiR DO LAÇO), e vai para a função
            }
            soma++;
        }
        return (soma, contagem);
    }

    function repetirContinue() public pure returns (uint, uint){

        uint soma;
        uint contagem;

        while (contagem <= 10){
            contagem++;

            if (contagem == 5){
                continue;
                // O CONTINUE ele vai continuar no sistema de repetição, porem sem entra no IF
            }
            soma++;
        }
        return (soma, contagem);
    }
}
/*
    Repetir bloco de codigo enquanto condição for satisfeita;
    
    WHILE (CONDIÇÃO) {CÓDIGO}

    BREAK - sair do laço

    CONTINUE - continuar para a proxima interação

*/