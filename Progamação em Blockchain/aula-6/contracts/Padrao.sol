// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.21;

contract Padrao{

    string public name;

    function mudaNome(string memory _nome) public {
        name = _nome;
    }

    function getName() public view returns (string memory){
        return name;
    }
}