// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Assert{

    uint public saldo = 100;

    function Diminuir(uint _valor) public {

        uint antigoValor = saldo;
        saldo = saldo - _valor;

        assert(antigoValor == saldo + _valor);
    }
}
/*O tipo de errro é do tipo PANIC, o assert serve para a ideia do codigo funcionar, se eu 
colocasse um saldo++; daquia erro porque no final 100 não é igual a 101*/
/*O tipo de error, panic e diferente do tipo de error error, porque o tippo panic so da
quando um assert ele tem a condição FALSA ou quando a uma divisão por zero 0.*/