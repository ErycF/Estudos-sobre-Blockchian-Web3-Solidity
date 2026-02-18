// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract Padrao{

    string public name;

    function mudaNome(string memory _nome) public {
        name = _nome;
    }
}