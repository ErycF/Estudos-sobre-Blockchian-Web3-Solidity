// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Hash{

    function geraHashcomKeccak(string memory mensagem) public pure returns (bytes32){
        return keccak256(bytes(mensagem));
    }

    function geraHashcomSha(string memory mensagem) public pure returns (bytes32){
        return sha256(bytes(mensagem));
    }

    function geraHashcomRipemd160(string memory mensagem) public pure returns (bytes20){
        return ripemd160(bytes(mensagem));
    }
}
/*      Função Hash
    
    - keccak256();

    - sha256();

    - ripemd160();

        - A keccak256 ela é predominantemeentee na rede da etheriun, ja a sha256 é predominantemente na rede Bitcoin.

        - Funções HASH são; dada uma entrada arbritaria, uma quantidade arbritaria de bytes, a saida tem o tamanho fixo é ela e deterministica, ou seja a mesma entrada
        sempre gera a mesma saida e tendo a saida não podemos recuperar a entrada.

        - Quanto keccak256 e sha256 a saida tem 256 bitis ou 32 bytes, porẽm a ripemd160, a saida tem 160 bites ou 20 bytes

*/