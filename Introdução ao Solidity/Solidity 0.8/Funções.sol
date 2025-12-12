// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Funcao {

    uint valor;

    function AlteraValor(uint _valor) public {
        valor = _valor;
    }

    function PegarValor() view public returns (uint){
        return valor;
    }
}