// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract moedinha{
     
     uint public moeda;
     mapping (address => uint) public balanco;
     uint public decimal = 4;
     address public onwer;

     constructor (){
        moeda = 1_000_000 * 10 ** decimal;
        onwer = msg.sender;
        balanco[onwer] = moeda;
          }

          event transfe(  address indexed _from,  address indexed _to, uint _valor);

          function transferencia(address _to, uint _valor) public returns (bool scesso){
            require(balanco[msg.sender] >= _valor);
            require(_to != address(0));
            balanco[msg.sender] -= _valor;
            balanco[_to] += _valor;
            moeda -= _valor;

            return true;
        }

}