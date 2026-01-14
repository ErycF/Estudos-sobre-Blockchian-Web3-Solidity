// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import"./libraryPotencia.sol";

library Uintbiblioteca{

    function quadra(uint x) internal pure returns (uint){
        return x*x;
    }

    function soma(uint x, uint y) internal pure returns (uint){
        return x+y;
    }
}

contract MeuContrat{

    /* PALAVRA CHAVE USING/ NOME DA BIBLIOTECA/ FOR/ O TIPO*/
    using Uintbiblioteca for uint;

    using Uintbiblioteca for uint;

    function UsaQuadra(uint x) internal pure returns (uint){
        return x.quadra();
        // Primeiro se coloca a variável, depois o nome da função;
    }

    function Usarsoma(uint x, uint y)public pure returns (uint){
        return (x.soma(y));
        // O primeiro fica fora, porem o resto pode ficar dentro
    }

    function asduas(uint x, uint y) public pure returns (uint, uint){
        return (x.quadra(), x.soma(y));
    }
    

}

/*      Biblioteca (Libraries)

    - Usando "using";

    - Ultilizar métodos da biblioteca em um tipo de variável;

    - Ultilizando para estender tipos;

        - VAms ver um caso de uso de bibliotecas, que é extender as funcionalidades de um tipo (uint, maooing, string, addrres...), esses tipo em solidity existe poucoos 
        métodos proprios; por exemplo: somar todos os valores dde um array ou algo do tipo. 

        - Nós podemos dizer que esse tipo uint tenha o método quadra.

        - using UintSoma for uint;

*/