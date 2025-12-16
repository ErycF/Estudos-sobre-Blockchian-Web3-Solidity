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
/*
    Chave privada => Chave pública => Endereço

    Chave privada usada para movimentar a conta e assinar transações;
    Chave pública usada para confirma transações;
    Endereço e parainteragir com a conta.

    O Endereço e gerado com o hash dos primeiros bytes da conta pública.
    Os Contratos somente tem endereço.
*/
/*
    Como 12 PALAVRAS voê tem a SEMENTE;
    Com a SEMENTE voê pode ter multiplas CHAVES PRIVADAS;
    Com as CHAVEES PRIVADAS você tem CHAVES PÚBLICAS;
    Com CAVES PÚBLICAS você tem o ENDEREÇO;
    Dentro do ENDEREÇO tem o BALANÇO e o NONCE.
*/