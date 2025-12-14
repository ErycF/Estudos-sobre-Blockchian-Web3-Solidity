// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Retorno{

    int contagem;
    int contagem2;
    
    function  AlteraContagem(int alteraNumero1, int alteraNumero2) public {
        contagem = alteraNumero1;
        contagem2 = alteraNumero2;
    }
    function retornaComtagem1() public view returns (int){
        return contagem; // returns ([tipo])
    }
    function retornaComtagem2() public view returns (int retorna){
        retorna = contagem; // returns ([Tipo] Nome)
    }
    function reotrnaDuasContagem3() public view returns (int, int){
        return (contagem, contagem2);
    }
}