// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Modifire{

    uint public minhaVariavel;

    modifier ApenasMaior(uint value){
        require(value > 100);
        _;
        _;
        _;
        // Esse _; ira dizer quantas vezes irar ser execultado, no caso do código 3 vezes.
    }

    function Restrita(uint _valor)public ApenasMaior(_valor) returns (string memory, uint){
        minhaVariavel++;
        
        return (unicode"É maior do que 100, porque, o número é:", _valor);
    }
}