// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract assinatura{

    uint numero = 0;

    // 44b6f21c
    function pegarNumero() public view returns (uint){
        return numero; 
    }
     
    // 2bc97773
    function alteraNumero(uint _numero) public {
        numero = _numero;
    }

    // 7c141f0a
    function Soma(uint _x, uint _y) public pure returns (uint, bytes4){
        return (_x + _y, msg.sig);
    }

    // 29803b21
    function join(string memory first, string memory last) public pure returns (string memory, bytes4){
        return (string.concat(first, last), msg.sig);
    }
/*
    A assinatura são os primeiros 4 bytes do hash do NOME DA FUNÇÃO -> pegarNumero() = 44b6f21c
    NOME DA FUNÇÃO -> alteraNumero(uint) = 2bc97773

    O MSG.SIG ele pega a assinatura da função que são os primeiros 4 bytes
*/
}    