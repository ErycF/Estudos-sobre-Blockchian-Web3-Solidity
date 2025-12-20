// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract IfElse{

    uint public par;
    uint public impar;

    function Incrementa() public {
        if(block.timestamp % 2 == 0){
            par++;
        }else{
            impar++;
        }
    }
}