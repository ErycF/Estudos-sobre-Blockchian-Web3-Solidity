// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Receive{

    uint public dinheiro;

    receive() external payable {
        dinheiro = dinheiro + msg.value;
     }

    fallback() external { }

    function foo() public pure returns (uint){
        return 12;
    }
}
// RECEIVE
/*Função a ser execultada quando o payable for vazio*/
// Precisa ser payable
// receive() external payable{}
/*Caso não haja função receive(), fallback é execultada*/