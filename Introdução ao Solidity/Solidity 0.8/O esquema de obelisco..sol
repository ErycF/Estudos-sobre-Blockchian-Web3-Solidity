// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Obelisco {
    address public dono = msg.sender;
    uint public valorAtual = 0.1 ether;

    function viraDono() public payable {
        require(msg.value >= valorAtual, "Valor insuficiente");
        uint troco = msg.value - valorAtual;

        // Enviar o valor atual para o dono anterior
        (bool sent, ) = payable(dono).call{value: valorAtual}("");
        if(!sent) revert("Falha ao enviar para o dono anterior");

        // Devolver o troco se houver
        if(troco > 0){
            (bool sentTroco, ) = payable(msg.sender).call{value: troco}("");
            if (!sentTroco) revert("Falha ao devolver troco");
        }
        
        // Atualizar o valor para o próximo
        valorAtual = valorAtual + 0.1 ether;

        // Mudar o dono para quem chamou a função
        dono = msg.sender;
    }
}