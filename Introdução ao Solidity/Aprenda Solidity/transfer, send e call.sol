// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Enviado{
    fallback() external payable {}
}

contract Envia {
    
    constructor() payable {
        
    }

    function enviarEtherTranfer() public {
        payable(0xb31BA5cDC07A2EaFAF77c95294fd4aE27D04E9CA).transfer(1 ether);
    }

    function enviarEtherSent() public returns (bool){
        return payable(0xb31BA5cDC07A2EaFAF77c95294fd4aE27D04E9CA).send(1 ether);
    }

    function enviarEtherCall() public returns (bool){
        (bool retorna, ) = payable(0xb31BA5cDC07A2EaFAF77c95294fd4aE27D04E9CA).call{value: 1 ether}("");
        return retorna;
    }    
    /*
        Send (retorna verdadeiro ou falso, não reverte em caso de erro);
        Transfer (reverte em caso de erro);
        Call (retorna verdadeiro ou falso, não reverte, encaminha todo oo gás disponível).
    */
}