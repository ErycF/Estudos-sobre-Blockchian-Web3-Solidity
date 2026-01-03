// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Token_ERC_20{

    string name = "My Token";
    string symbol = "MTK";

    function GetName() public view returns (string memory){
        return name;
    }

    function GetSymbol() public view returns (string memory){
        return symbol;
    }
}