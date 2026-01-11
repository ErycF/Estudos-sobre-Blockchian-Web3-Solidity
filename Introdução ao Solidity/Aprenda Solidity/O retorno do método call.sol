// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Chamado{

    uint valor;

    function setValor() public view returns (uint){
        return valor;
    }
    
    function getValor(uint _valor) public returns (uint){
        valor = _valor;
        return valor;
    }
}

contract Extrador{

    

    function getModificar(address endereco, uint _valor) public returns (bool, bytes memory) {

        (bool sussece, bytes memory retorno) = endereco.call(abi.encodeWithSignature("getValor(uint256)", _valor));

        return (sussece, retorno);
    }

    function setModifucar(address endereco) public returns (bool, bytes memory){

        (bool sucesso, bytes memory retorno) = endereco.call(abi.encodeWithSignature("setValor()"));
        return (sucesso, retorno);
    }
}

/*      Retorno call

    - O método call é ultilizado para fazer chamadas para outras contas externas ou contrato, nessa chamada podemos incluir duas coisas; 1 - uma quantidade de 
    ether para enviar para essa outra conta; 2 - um upload, que é uma garca de informações essa carga de infrmações vai ser execultada pela conta que recebe, caso
    a conta que recebe a chamada seja uma conta de contrato. 

    - As chamadas call retornam uma dupla de valores, primeiro é um boleano, indicando se a chamada teve sucesso ou não; e o sengundo é um valor do tipo bytes,
    indicando o retorno da chamada.

    - O médoto call não sabe o qeu ele esta execultando irar alterar o Estadoo da blockchai; então ele não pode ser colocado em uma função view.

*/