// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract GAS_E_GASLEFT{

    uint256 numero;
    uint[] dinamica;

    // O gaslaft retornar o quanto de gás ainda reta para ser execultado no momeento dele.
    function setnumero(uint256 _numero) public returns (uint, uint) {
        uint antes = gasleft();
        numero = _numero;
        uint depois = gasleft();
        
        return (antes, depois);
    }

    function ColocarValor() public returns (uint,uint) {

        uint gasAntes = gasleft();
        for (uint i; i  < 100; i++){
            dinamica.push(i);
        }
        uint gasDepois = gasleft();

        return (gasAntes,gasDepois);
    }
}