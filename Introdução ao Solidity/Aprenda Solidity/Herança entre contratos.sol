// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Foo{

    uint public publica = 10;
    uint private privada = 20;
    uint internal interna = 30;

    modifier Modificador{
        _;
    }

    function Funcao_interna() internal view returns (uint){
        return interna;
    }

    function Funcao_publica() public view returns (uint){
        return publica;
    }

    function Funcao_privada() private view returns (uint){
        return privada;
    }

    function Funcao_externa() external view returns (uint, uint) {
        return (privada, interna);
    }

}

contract Bar is Foo{

    function Mudavariavel(uint V_publica, uint V_interna) public Modificador{
        
        publica = V_publica;
        interna = V_interna;

        Funcao_interna();

        Funcao_publica();
    }
}

/*
    Contratos podem herda função, e variaveiss de Estados de outross  contratos; exisste o contrato pai e filho. 
    Variáveis e funções privadas não são herdadas pelo os contratos filhos; variávis internas, publicas e  externas são herdadas, porêm, 
    variaveis privadas, não são herdadas.

*/