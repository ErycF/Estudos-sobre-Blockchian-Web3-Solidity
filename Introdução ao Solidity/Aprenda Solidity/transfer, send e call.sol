// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Envia {
    
    constructor() payable {

    }

    function enviarEtherTranfer() public {
        payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4).transfer(1 ether);
    }

    function enviarEtherSent() public returns (bool){
        return payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4).send(1 ether);
    }

    function enviarEtherCall() public returns (bool){
        (bool retorna, ) = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4).call{value: 1 ether}("");
        return retorna;
    }    
    /*
        Send (retorna verdadeiro ou falso, não reverte em caso de erro);
        Transfer (reverte em caso de erro);
        Call (retorna verdadeiro ou falso, não reverte, encaminha todo oo gás disponível).
    */
}