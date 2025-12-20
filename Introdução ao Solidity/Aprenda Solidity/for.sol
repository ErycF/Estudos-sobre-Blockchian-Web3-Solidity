// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract For{

    function repetirWhile() public pure returns (uint){

        // INICIALIZAÇÃO DO CONTADOR
        uint contagem;

        // ESTABELECEMOS A CONDIÇÃO
        while (contagem < 10){
            
            // ATUALIZAÇÃO
            contagem++;
        }
        return contagem;
    }

    function repetirFor()  public pure returns (uint){

        uint soma;

        for (uint contagem; contagem  < 10; contagem++){
            soma  = soma  + 1;
        }
        return soma;
    }

    
    function Array() public pure returns (uint){

        uint[5] memory arrayInteiro = [uint(1),2,3,4,5];
        
        uint soma;
        
        for (uint i; i < arrayInteiro.length; i++){

            soma = soma+arrayInteiro[i];
        }
        return soma;
    }





/*
LAÇO - FOR  

Repetir bloco de código com condições melhores resoolvidas

FOR (INICIALIZAÇÃO; CONDIÇÃO, ATUALIZAÇÃO){CÓDIGO}


*/
}