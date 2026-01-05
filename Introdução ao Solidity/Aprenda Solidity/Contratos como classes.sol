// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Sum{

    uint[] array;

    function soma(uint _x, uint _y) public returns (uint){
        
        array.push(_x + _y);
        
        return _x + _y;
    }

    function PegarArray(uint _indice) public view returns (uint){
        return array[_indice];
    }
}

contract Fabrica{

    address[] public enderecos;

    function CriaNovosoma() public {

        // Criei uma nova instancia do contrato Sum, ultilizando new Sum()
        Sum NovoSoma = new Sum();

        // A parti dessa instancia, eu peguei o endereço e gravei na array 
        enderecos.push(address(NovoSoma));

    }
}

/* Oque acontecee  é que, temos um contrato que tem a função de SOMAR; depois, temos outro contrato que cria contratoS de SOMA */

/* Classes são como modelos, como plntas de uma casa; a parti desse modelo/ planta  nos podemos contruir os objetos os as instacias relacionadas a esse contrato
    contratos podem funcioar como classes. */ 

    /*
        O new cria uma  nova  instacia 

        contract NAME{}

        Criar nova instância -> new NAME()

        Cada instância tem seu próprio endereço
    */