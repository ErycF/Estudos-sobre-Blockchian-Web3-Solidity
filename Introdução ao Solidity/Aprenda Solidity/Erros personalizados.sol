// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Erros_personalizados{

    uint public limete = 10;

    error ValorMaior (uint limete, uint valorRecebido);

    function receber(uint _valor) public view returns (uint, uint) {

        if (_valor > limete) revert ValorMaior(limete, _valor);

        return (limete, _valor);
    }
/*
    Erros personalizados

    erros nome([PARÂMETRO])

    if(![CONDIÇÃO]) revert nome(...)

    Não podemos usar erros personalizados no require();
*/
}