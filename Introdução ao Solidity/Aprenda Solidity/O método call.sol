// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Chamado{

    uint valor = 20;

    function getValor() public view returns (uint){
        
        return valor;
    }

    function setValor(uint _valor) public returns (uint){

        valor = _valor;
        return valor;
    }
}

contract Chamador{

    address endereco = 0x1c91347f2A44538ce62453BEBd9Aa907C662b4bD;

    function callsetValor(uint _valor) public {

        Chamado chamado = Chamado(endereco);
        chamado.setValor(_valor);
    }
}
/*-------------------------------Método-1-(Chamador)------------------------------Método-2-(Chamador1)---------------------------------*/

contract Chamador1{

    address endereco2 = 0x1c91347f2A44538ce62453BEBd9Aa907C662b4bD;

    function callsetValor(address endereco, uint _valor) public /*returns (bool, bytes memory)*/ {

        endereco.call(abi.encodeWithSignature("setValor(uint256)", _valor));
        // Nessa aula não vamos ver retorno

        //(bool su, bytes memory retorno) = endereco.call(abi.encodeWithSignature("setValor(uint256)", _valor));
        //return (su, retorno);
    }
}
/*      Método CALL

    - Realizado para fazer chamadas para outros contratos/ contas;

    - Ultilização de baixo nível. Deve-se evitar;

    - Pode ser ultilizado para enviar ether para outra conta;

    - As funçoes chamadas são execultadas no contexto de contrato chamado;

    - Call retorna uma tupla: o sucesso chamadas em booleano e os dados retornados.


        - Esse método call ele é bem de baixo nível, bem perto da EVM  e pode ser ultilizado para enviar uma menssagem para qualquer conta; pode ser algum dado junto
        com a menssagem ou não.

        - O método 1 nos temos o código, já no metodo 2 não temos o código.

        - endereco.call(abi.encodeWithSignature("setValor(uint256)", _valor)); => Nós precisamos do endereço do contrato, precisamos da call(), e vamos passar em bytes
        a assinatura da função, + os argumestos codificados pela abi.

            --endereco = Nós precisamos do endereço do contrato;
            
            --call = precisamos da call();
            
            --abi.encodeWithSignature("setValor(uint256)" =  vamos passar em bytes a assinatura da função;
            
            --_valor = + os argumestos codificados pela abi.
*/