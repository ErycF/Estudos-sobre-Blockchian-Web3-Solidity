// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Retorno{

    int contagem;
    
    function  AlteraContagem(int alteraNumero) public {
        contagem = alteraNumero;
    }
    function retornaComtagem1() public view returns (int){
        return contagem; // returns ([tipo])
    }
    function retornaComtagem2() public view returns (int retorna){
        retorna = contagem; // returns ([Tipo] Nome)
    }
    function reotrnaDuasContagem3() public view returns (int, int){
        return (contagem, contagem);
    }
}