// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Chamado{

    uint slote1 = 1;
    uint slote2 = 2;
    uint valor;
    uint slot4 = 4;

    function setValor() public view returns (uint){
        return valor;
    }

    function getValor(uint256 _valor) public {
        valor = _valor;
    }
}

contract chamador{

    uint public valorLocal = 2; // Agora essa que esta no primeiro slote!

    address public endereco = 0x43D218197E8c5FBC0527769821503660861c7045;

    uint public ValordoSlote = 3;

    function callsetValor(/*address endereco*/) public returns (bool, bytes memory){

        (bool success, bytes memory retorno) = endereco.delegatecall(abi.encodeWithSignature("setValor()"));
        return (success, retorno);
    }

    function callgetValor(/*address endereco,*/ uint _valor) public returns (bool, bytes memory){

        (bool success, bytes memory retorno) = endereco.delegatecall(abi.encodeWithSignature("getValor(uint256)", _valor));
        return (success, retorno);
    }
}

/*          Delegatecall

    - A MENSAGEM É EXECULTADA NO CONTEXTO DO CONTRATO (STRORAGE) CHAMADOR;

    - Todas as alterações são feitas no contrato que chama, é não no contrato chamdo. Invoca as funçoes do contrato chamado, porém, a alteração é feita na storage 
    do contrato cahmador.

    - O delegateccal, ele irar altera a variável do proprio contrato é não do contrato chamado. Ele altera a storage do contrato chamador, o que ele fez foi, alterar
    a primeira vareável na storage do contrato que era o endereço.

    - A storage e feita de slotes de 32 bytes cada, essa variável estava no primeiro slote, porem em vez de alterar o do contrato chamado, ele alterou o do contrato
    chamador, e quem estava no primeiro slote, a variável endereço.  

    - Tem que tomar cuidado com ele porque ele mexe com o nosso contrato e pode arruinar o contrato.

    - Se a variável estiver no slote 2, eela irar muda o slote 2. Se ela estiver no slote 3, e o chamador não tiver slote 3; eele não mudar nada.

    - endereco.delegatecall();
*/