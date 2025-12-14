// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract String{

    string public name;

    function Nome_e_Sobrenme(string memory _nome, string memory _sobrenome) public pure returns (string memory) {
        return string.concat(_nome, _sobrenome);
    }
}