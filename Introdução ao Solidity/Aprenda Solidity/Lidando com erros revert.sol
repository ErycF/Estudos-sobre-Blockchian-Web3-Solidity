// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract erros{

    function Limitada(uint _valor) public pure returns (uint) {
        require(_valor <= 10, unicode"Valor não correspondido.");
        return  _valor;
    }

    function Limitada2(uint _valor) public pure returns (uint){
        if(_valor <= 10){

        }else{
            revert(unicode"Valor não correspondido.");
        }
        return _valor;
    }

    function Limite3(uint _valor) public pure returns (uint){
        if(_valor > 10) revert(unicode"Valor não correspondido.");
        return _valor;
    }
/*
    Erros de lógica x erros de execução
    
    require(CONDIÇÃO),[MENSAGUEM]
    
    IF(![CONDIÇÃO]) REVERT[MENSAGEM]
*/
}