// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Eventos_anonimos{

    event registre(address indexed to, address indexed from, uint indexed val1, uint indexed val2) anonymous;

    function emiteEvebto(address from, address to, uint val1,uint val2) public {

        emit registre(to, from, val1, val2);
    }
    /*
        Event Nome([PARÂMETROS]) anonymous;

        Primeiro tópico não é o indentificador;

        Até 4 parâmetros indexados;

        Pode ser ultilizado para ecnomizar gás.

        O primeiroo tópico, que era o nome do evento, não é mais gravado. Eu tansformo o evento em anonimos colocando anonymous.

    */
}