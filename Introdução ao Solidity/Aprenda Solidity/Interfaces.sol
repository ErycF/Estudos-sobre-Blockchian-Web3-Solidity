// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface Ivalor{

    function LerValor() external view returns (uint);

    function alteraValor(uint) external returns (uint);
}


contract Interfaces_para_Valor is Ivalor{

    uint valor = 19;

    function LerValor() external view override returns (uint){
        return valor;
    }

    function alteraValor(uint _valor) public override returns (uint){

        valor = _valor;
        return valor;
    }

}

/*      Interfaces

    Declaração de funçaõ sem implementação;

    Função deve ser externa;

    Não a necessidaade de marca com virtual;

    Não é possivel declarar variáveis de Estado;

    É possivel declarar enumeradores e estruturas.

    - Interfaces podem ser entendtido como contrato abstratoss puros, contrato em que nemnhuma função é implementadas e todas as funções devem ser implementadas por contratos
    herdeiros.

    - Todas as funções devem ser implementadas na interface como externa e no contrato filho ou como publica ou como externa, porque não faz sentidoo já que  essas funções
    são para se ultilizada pelo meio exxterior, apenas funções que iram ser chamadas do exterior.

    - IMPORTANTE: Quand você implemenetar essas funções no contrato, voce deve colocar elass como OVERRIDE mesmo que você não tenha defenido a função na interface como 
    virtual.

*/

