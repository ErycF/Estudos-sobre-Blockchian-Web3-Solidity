// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Topicos_de_eventos{

    event registre(address indexed to, address indexed from, uint val1, uint val2);

    function emiti(address to, address from, uint val1, uint val2) public {

        emit registre(to, from, val1, val2);
    }
    /*
        Até 3 parâmetros indexados no tópicos
        
        Parâmetros indexados podem ser filtrados/Monitorados
        
        Parâmetros não indexados não podem ser filtrados/Monitorados
        
        Primeiro tópicos - identificador do evento
    */
}