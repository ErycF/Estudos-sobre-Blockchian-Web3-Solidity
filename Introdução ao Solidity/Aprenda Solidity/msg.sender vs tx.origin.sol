// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Origen{

    function retornarEndereco() public view returns (address, address){
        return (msg.sender, tx.origin);
    }

    function funcaoExterna() external view returns (address, address) {
        return (msg.sender, tx.origin);
    }

    function InvoocarExterna() public view returns (address, address) {
        return this.funcaoExterna();
    }
}
/*
    O MSG,SENDER retorna quem invocou na função neste momento;
    O TX.ORIGIN retorna quem iniciallizoou a transação

    função podem chamar outros contratos.

    O TX.ORIGIN é a origem da transação uma coonta externa (EOA) e sempre uma conta externa;
    Agora o MSG.SENDER e quem chamaou a transação nesse momentoo, logo, pode ser uma conta
    de contrato ou uma conta externa (EOA).

    MSG.SENDER -> quem  enviou a transação atual
    TX.ORIGIN -> quem enviou a transação inicial
*/