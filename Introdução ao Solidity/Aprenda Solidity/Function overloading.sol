// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract overloading{

    fallback() external { }

    // 2fbebd38
    function foo(uint) public {

    }

    // f31a6969
    function foo(string memory) public {

    }
}
/*Funtion overloading e uma possibiliade de termos 2 ou mais funlções com o mesmo nome, desde que possuam parâmetros diferentes;
a linguagem solidity permite isso porque o que conta para a EVM é a assinatura da função; e a assinatura da funçaõ depende do seu
nome, e dos seus parâmetros.

foo(uint) -> 2fbebd38

foo(string) -> f31a6969

*/