// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract autoDestruicao{

    string public mensagem = "Eu vou ser destruido!";

    constructor() payable {}

    function Kill(address payable endereco) public payable {
        
        selfdestruct(endereco);
    }
}

/*      Como destruir contratros

    - selfdestruct ([address payable]);

        - Nós podemos destruir contratros inteligentes, desde que ele implementem um botão de auto destruição. Caso eles não implementem esse botão de auto destruição será 
        impossivel destrir um contrato inteligente.

        - O selfdestruct ([address payable]); passa somente uma endereço payable, porque caso elee tenha dinheiro (ether), o contrato tem que manda esse dinheiro para
        alguem, algum endereço.

        - Antes: O contrato era destruído (código e armazenamento removidos).
        
        - Agora: O contrato continua existindo (código e armazenamento permanecem), mas o ETH é transferido para o beneficiário (endereco).
*/