// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Eventos{

    uint public valor;

    event AlterarValor(uint);

    function alteraValor(uint _valor) public {
        valor = _valor;

        emit AlterarValor(valor);
    }
    /*
        Emitido por contratos
        Grava logs na ethereun
        Recuperados/Monitorados por clientes externor
        Não podem ser lidos por contratos
    */
}