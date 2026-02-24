// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

contract simples{

    string public name;
    uint idade;

    function getName() public view returns(string memory){
        return name;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function getIdade() public view returns(uint){
        return idade;
    }

    function setIdade(uint _idade) public {
        idade = _idade;
    }
}