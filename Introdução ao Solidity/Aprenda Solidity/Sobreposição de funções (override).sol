// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Sobreposicao {

    uint public valor;

    constructor(uint _valor){
        valor = _valor;
    }

    function calculete(uint x, uint y) public pure virtual returns (uint){
        return x + y;
    }

}

contract Sobreposicao2 is Sobreposicao{

    // Pode-se colocar ou um valor esspecifico ou alguma variável;
    constructor() Sobreposicao(valor){}

    function calculete(uint x, uint y) public pure virtual override returns (uint){
        return x * y;
    }    

}

contract Sobreposicao3 is Sobreposicao2{

    function calculete(uint x, uint y) public pure override returns (uint){
        return x ** y;
    }

    function callcalculete(uint x, uint y) public pure returns (uint){
        return Sobreposicao.calculete(x,y);
    }

}

/*      Contratos Herdeiros 

    -Sobreposição de funçôes;

    -function Name(...) virtual override {}

    -Virtual -> podem ser sobreposta

    -Override -> sobrepõe funcção virtual

    A sobreposição de funçõe ocorre quando temos uma função do contrato Pai, e queremos alterar seu comportamento no contrato filho. Nós só podemos sobrepor
    se o contrato pai definir que a função é VIRTUAL; funções que não são definidas como virtual não podem ser sobreposta. O OVERRIDE é quando uma função 
    sobrepõe a outra.

    Podemos ultiliza a função calculetee de soma, definindo uma outra funçao para ela retorna a funçao calculete normal, você deffini isso colocando
    o nome do contrato e a funçao desejada - Sobreposicao.calculete(x,y);

    Sobre os contrutores; quando um contrato tem um construtor, você deve ter um chama o construtor do contrato pai. Se o conssrutor passa algum parâmetro ele deve
    ser definido tambem.
*/





