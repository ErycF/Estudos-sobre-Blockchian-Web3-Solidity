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
    /*
    A assinatura são os primeiros 4 bytes do hash do NOME DA FUNÇÃO -> pegarNumero() = 44b6f21c
    NOME DA FUNÇÃO -> alteraNumero(uint) = 2bc97773
    */
}