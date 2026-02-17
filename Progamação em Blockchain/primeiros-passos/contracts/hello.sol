// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Hello{

    uint meu_numero;

    function Mostra_valor() public view returns (uint){
        return meu_numero;
    }

    function Mudar_valor(uint _x) public {
        meu_numero  = _x;
    }
}