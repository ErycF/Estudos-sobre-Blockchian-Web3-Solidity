// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Fallback{

    /*fallback() external payable { }

    fallback( bytes calldata) external payable returns (bytes memory) {
        return bytes("Hello");
    }*/

    // Assinatura: 0xc2985578
    function foo() public pure returns (uint){
        return 12;
    }
}

/*O fallabck é uma função especial, ela é  execultada quando o payload não é compativel com nenhuma função.
O payload são os dados que enviamos para o contratro para ser execultado, que são as: assinatura das funções, 
os possivies argumento das funções codificados em abi. Se nos enviamos uma assinatura que não é compativel com
nenhuma das funções que existem essa função fallback é envocada.*/

/*No remix existe um campo chamado de (Low level interactions) onde podemos enviar payload que eu quero para um contrato.
Podemos passar a assinatura da função foo - [0xc2985578], e execulta ela com o (Low level interactions) somente passando a assinatura.*/

// Se passamos qualquer assinatura que não é compativel com nenhuma função, o fallback irar ser acionado, envocado.

// A função fallback pode receber nada e retorna nada, ou poder receber um tipo bytes e retorna um tipo bytes.

// A funão fallback é execultada quando o payload é incompativel com qualquer função existente.
