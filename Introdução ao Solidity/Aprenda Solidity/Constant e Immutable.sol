// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ConstantEImutable{
    
    string public nome;
    string public constant Sobrenome  = "Gaspazinho";
    uint public immutable balanco;
    
    constructor(string memory _nome){
        nome = _nome;
        balanco = 10;
    }

    function altera() public {
        
    }

    /*
        CONSTANT

        uint256 public constant NUMERO = 100;

        -É como uma tatuagem no nascimento - já nasce com esse valor
        -Você já sabe o valor quando está escrevendo o código
        -Exemplos: PI = 3.14, DIAS_NA_SEMANA = 7, TAXA_FIXA = 5
-----------------------------------------------------------------------------        
        IMMUTABLE

        address public immutable DONO;

        constructor() {
            DONO = msg.sender; // Só define AQUI, na criação do contrato
        }

        -É como um carimbo no passaporte - é definido uma vez na emissão
        -Você só descobre o valor na hora de criar o contrato
        -Depois que carimbou, NUNCA MAIS MUDA 
---------------------------------------------------------------------------------
        
        -constant = JÁ SABE o valor quando escreve o código ✓
        -immutable = SÓ DESCOBRE o valor na criação do contrato ✓
        -AMBOS NUNCA MUDAM depois de definidos! ❌

        Nenhum dos dois pode ser alterado depois! São ambos permanentes, só o momento da definição que é diferente. 
    */
}