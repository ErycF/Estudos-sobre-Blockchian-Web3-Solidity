// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract chamado{

    uint valor;

    function setValor() public view returns (uint){
        return valor;
    }

    function getValor(uint256 _valor) public {
        valor = _valor;
    }
}

contract Extrador{

    constructor() payable {}

    function callsetValor(address endereco) public view returns (bool, bytes memory){

        (bool success, bytes memory retorno) = endereco.staticcall(abi.encodeWithSignature("setValor()"));

        return (success, retorno);
    }

    function callgetValor(uint valor, address endereco) public returns (bool, bytes memory){

        (bool success, bytes memory retorno) = endereco.call(abi.encodeWithSignature("getValor(uint256)", valor));

        return (success, retorno);
    }
}

/*      Método Staticcall

    - Mesmo que o call, porém, não pode altera o estado da Blockchain.

    - O Staticcall não pode muda Estado da blockchain; se nós usarmos o mmétodo Staticcall e o Estado da blockchin for alterado, a chamada irar dar erro e irar
    reverter, irar retorna falso.

    - Quando usamos o métodoo call, não podemos declara a função como view; prque ele não tem a garantia que o Estado da blockchian irar ser alterrado, vale lembrar
    que esse metodo ele não sabe de nada sobre o outro código.

    - O Staticcall ele permite que usemos view, porquw wlw garante que o Estadoo da blockchian não irar ser alterado, e ser por ventura ele for alterado, o retorno sera
    falso.

    -  endereco.staticcall();

*/