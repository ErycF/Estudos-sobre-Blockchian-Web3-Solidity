// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Balanco{

    function pegaSaldo() public view returns(uint){
       address conta = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
        return conta.balance;
    }
    function pegaSaldoDoContrat() public view returns (uint){
        return address(this).balance;
    }
    function Dar() public payable {
        
    }
}