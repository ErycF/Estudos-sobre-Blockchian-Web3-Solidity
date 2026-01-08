// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

abstract contract Abstrato_pai{

    function soma(uint x, uint y) public pure returns (uint){
        return x+y;
    }

    function multiplicacao(uint x, uint y) public pure virtual returns (uint);

}

contract Filho is Abstrato_pai{

    function multiplicacao(uint x, uint y) public pure override returns (uint){
        return  x*y;
    } 
}

/*      Contract Abstratos

    abstract contract NAME {...}

    Deixa funções a serem implementadas

        - Contratos abstratos são contratos que nos nãoo implementamos todas as funções; algumas funções ssãoo definidas no coontrato, tem o seu cabeçalho definiddo, poêm, 
        sua implementação não é escrita. Esses tipos de contrato eles não podem dar deploy, porque, eles são incompletos, não foram totalmente implimentados, mas eles podem
        ser ultilizados como contrato Pai, e nos contratos filhos devemos efetivamente implemeentar o que faltou no contrato pai.

        - Você diz isso não colocando as chaves {}, mais sim, colocando o ponto e virgula; ; -> function multiplicacao(uint x) public virtual;
        - E devemos coolocar a função com virtual, e tambem, colocar abstract no contrato.

        - Contratos abstratos ssão interfaces parciais, interfaces ssão modelos que nos não implementamos função nemhuma, e escrito apenas o cabeçalho. Contratos absstratos
        são meio termo, allgumas funçaõ efetivamente são usadas, entretanto, nem todas são implementadas. 

        - Isso serve para que o contrato filho use as função com, porem com certas regras, que ele irar usar os messmo parametros e o mesmo nome, ou que vai retornar um certo
        valor, poiss  para  elees usarem, eles precisam usar igual como essta no contrato pai.

        - São modelos para serem ultivilados por outross contratoss, mias não serve para colocar na blockchain.


*/