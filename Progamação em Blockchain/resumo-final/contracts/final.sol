// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

contract resumo_final{

    string public name;
    uint public age;

    function getName() public view returns(string memory) {
        return name;
    }

    function getAge() public view returns(uint) {
        return age;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function setage(uint _age) public {
        age = _age;
    }
}