// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Enum{

    enum Status {
        Aberto, Fechado, Progresso
    }

    Status public status;

    constructor(){
        status = Status.Aberto;   
    }

    function continar () public view {
        require(status == Status.Aberto, unicode"Não pode entrar");
    }

}
/*
    -ENUMS
    [ENUM][NOME]{OPÇÕES}

    E  usado enum para  não cometer erros  digitais nas variáveis, evita erros;
    Por traz dos panos o enum  na verdade ele é um número um inteiro, ele atribui para 
    cada esses valores [Aberto][Fechado][Progresso] um número, em que, {ABERTO é 0},
    {FECHADO é 1} e {PROGRESSO é 2}.

    A Storage guarda como um número, ela não sabe que o 0 é ABERTO ou que FECHADO É 1.
*/