// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract contratoAlteraValor{

    uint valor;

    function alteraValor(uint _valor) public {
        valor = _valor;
    }
    
    function LerValor() public view returns (uint){
        return valor;
    }
    
    function soma(uint _x, uint _y)public pure returns (uint){
        return _x + _y;
    }
}