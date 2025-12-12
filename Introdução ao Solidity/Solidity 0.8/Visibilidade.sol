// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Visibilidade{
    
    uint VariavelPrivada;
    uint public VariavelPublica;

    function EscolhaoValor(uint _valorDaPrivada, uint _ValorDaPublica) public {
        VariavelPrivada = _valorDaPrivada;
        VariavelPublica = _ValorDaPublica;
    }
    function FuncaoPrivada() view private returns (uint){
        return VariavelPrivada;
    }
    function FuncaoPublica() view public returns (uint){
        return VariavelPrivada;
    }
    function FuncaoExterna() view external returns (uint){

    }
    function FuncaoInterna() view internal returns (uint){

    }
}
