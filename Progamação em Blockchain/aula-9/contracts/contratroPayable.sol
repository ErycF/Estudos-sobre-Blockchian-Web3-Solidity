// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

contract ContratoPayable{
    
    address public endereco;

    constructor(){
        endereco = msg.sender;
    }

    function recebeDineiro() public payable{

        payable(endereco).transfer(msg.value);
        endereco = msg.sender;
    }
}