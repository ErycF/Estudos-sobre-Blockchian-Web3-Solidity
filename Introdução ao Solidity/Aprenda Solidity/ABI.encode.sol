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

    function encodePacote() public pure returns (bytes memory){
        return abi.encodePacked(uint8 (3), uint16 (7), string ("Eryc"));
    }

    function concatena(string memory s1, string memory s2) public pure returns (string memory){
        return string(abi.encodePacked(s1, s2));
    }
}

/*
    O encode ele irar codificar o parametro que você colocar => abi.encode(2025, 20, "Eryc", true);
    O encodeSignature ele irar codificar porem ele trará a assinatura;
    E o decode ele irar fazer o inverso do encode.

    O abi.encodePacked ele pega os parametros e concatena o byteCode dos parametros;
    O string(abi.encodePacked(s1, s2)), ele passa parametros do tipo string, e junta elas.
*/