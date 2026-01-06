// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Pai{

    uint public Valor = 10;

}

contract Filho is Pai{

    function setValor(uint novoValor) public returns (uint) {

        Valor = novoValor;
        return Valor;
    }
}

/*
    Quando um contrato herda outro contrato esse contrato esta herdando a estrutura do contrato Pai, o còdigo do contrato pai.
    O contrato Filho hherda  doo Pai, soomente a estrutura, porque eeles tem vida ultíl diferentes.
    Se você altera o contrato Filho, você não altera o ccontrato pai. A estrutura do coontratoo pai ajuda a gerar o bytecode do ccontratoo filho do contrato herdeiro.
*/