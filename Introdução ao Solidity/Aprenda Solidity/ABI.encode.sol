// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Encode{

    function encode() public pure returns (bytes memory){
        return abi.encode(2025, 20, "Eryc", true);
    }

    function encodeSignature() public pure returns (bytes memory){
        return abi.encodeWithSignature("encoode(uint256)", 5);
    }

    function decode(bytes calldata _valor) public pure returns (uint, uint, string memory, bool){
        return abi.decode(_valor, (uint, uint, string, bool));
    }
}