// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract agente{

    uint value;

    function getValue(uint _value) public returns (uint){
        value = _value;
        return value;
    }

    function setValue() public view returns (uint){
        return value;
    }
}

contract Extrador{

    constructor() payable {}

    function callgetValue(address endereco, uint _value) public returns (bool, bytes memory){

        (bool success, bytes memory returs) = endereco.call(abi.encodeWithSignature("getValue(uint256)", _value));
        return (success, returs);
    }

    function callsetValue(address endereco) public returns (bool, bytes memory){

        (bool success, bytes memory returs) = endereco.call(abi.encodeWithSignature("setValue()"));
        return (success, returs);
    }

    function enviarEther(address endereco) public returns (bool, bytes memory){

        (bool success, bytes memory retuns) = endereco.call{value: 1 ether}("");
        return (success, retuns);
    }

    function callgettValue(address endereco, uint _value) public returns (bool, bytes memory){

        (bool success, bytes memory returs) = endereco.call{gas: 1000}(abi.encodeWithSignature("getValue(uint256)", _value));
        return (success, returs);
    }
}
/*      Método call

    - Quando ultilizamos o método call, nos podemos enviar ether do contrato que esta ultilizando call para a conta que esta sendo chamada.

    - Para eu indicar o quanto em ether eu irei passar; basta abri chaves e colocar valeu -> {value; 1 ether}, temos que colocar o valor sempre em wei.  

    - Pelo visto pelos meuss testes, colocar 1 ether não funcionou, tem que colocar em wai mesmo; 1 ether = 1e18. (Na verdade funciona sim, pode usar 1 ether).

    - Podemos definir a quantidade que o método call poderá ultilizar de gás; com: {value: gas 1000}.
*/