// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract Nome{

    string public name;

    function getName() public view returns (string memory){
        return name;
    }

    function setName(string memory newName) public {
        name = newName;
    }
}