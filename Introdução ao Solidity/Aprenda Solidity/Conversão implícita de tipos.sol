// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Implicita{
    
    function converte() public pure returns (uint16){
        
        uint8 pequeno = 100;
        uint16 medio = pequeno; 
        return medio;
    }

    function converte2() public pure returns (bytes2){
        
        bytes1 pequeno = 0x36;
        bytes2 medio =  pequeno;
        return medio;
    } 

    function converte3() public pure returns (uint16){
        
        uint8 pequeno = 100;
        uint16 medio = 10_000;
        uint16 soma = medio + pequeno;
        return soma;
    }    
}
/*
    TYPE CASTING (CONVERSÃO DE TIPOS)
    
    IMPLÍCITA - UINT8 -> UINT16

    EXPLÍCITA - UINT16 -> UINT8

    A conversão implícita ela ocorre quando o compilador ja faz essa conversão, sem quer nós precisemos especificar a conversão;
    A diferença entre elas duas, é que o compilador, ele faz uma conversão implícida quando não a perda de informação;

    Pode haver perda de informação quando você passa de uint16 para uint8, por conta do uint16 caber mais informações do qeu o uint8,
    isso e diferente na implícita que voce para do menor para o maior, por exemplo: uint8 para uint16.

*/