// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Sum{

    uint[] array;

    uint public x;

    constructor (uint _x){
        x = _x;
    }

    function soma( uint _y) public returns (uint){
        
        array.push(x + _y);
        
        return x + _y;
    }

    function PegarArray(uint _indice) public view returns (uint){
        return array[_indice];
    }
}

contract Fabrica{

    address[] public enderecos;

    function CriaNovosoma(uint _x) public {

        // Criei uma nova instancia do contrato Sum, ultilizando new Sum()
        Sum NovoSoma = new Sum(_x);

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

// quando se tem um contrutorr e ele passa um parametro, voce tem que colocar o parametro na new Sum();

contract Caller{

    // Chama funçoes de outros contratos
    function ExecultaSoma( address endereco, uint y) public returns (uint){

        Sum instancia = Sum(endereco);
        uint retorno = instancia.soma(y);
        return retorno;
    }

    /*              Contratoss com Classes
    
        -Ultilizar uma instância de contrato: NOme([address])

        -Execultar mètados de um Name([address]).metodo()

    */

    //  Nós devemos saber quais funções o contracto tem, para nos exercermos cada função desejada.
    
    //  Nós precisamos do endereco do contratoo, para  ele ser ultilizado.
}