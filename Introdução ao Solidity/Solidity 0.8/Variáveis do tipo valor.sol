// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract VariavelValor{
     
     bool public booleana;

     int public inteiro; // int: pode ter valores negativos e positivos.
     uint public uinteiro; // uint: so aceita valores positivos.

     bytes1 public Umbytes;
     bytes2 public doisbytes;
     bytes32 public tresdoisbytes;

     address public endereco;
}
contract VariavelDeestado{
    
    uint public VariaveldeEstado;

    function alteravariavel(uint NovoValor) public {
        uint VarialvelLocal = NovoValor * 20;
        VariaveldeEstado = VarialvelLocal;
    }
}