// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Constante{

    uint public Valor;
    uint immutable peso;

    constructor(uint _peso){
        peso = _peso;
    }

    function alteraPeso(uint _valor) public{
        Valor = _valor * peso;
    }
}