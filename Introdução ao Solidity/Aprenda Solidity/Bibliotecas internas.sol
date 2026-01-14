// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "./libraryPotencia.sol";

library biblioteca{

    function quadra(uint _x) internal pure returns (uint){
        return _x*_x;
    }
}

contract MeuContrato{

    function usarQuadra(uint _x) public pure returns (uint){
        return biblioteca.quadra(_x);
    }

    function usarPotencia(uint x) public pure returns (uint){
        return Potencia.potencia(x);
    }
}

/*      Bibliotecas (libraries)

    - Contratos, interfaces, bibliotecas;

    - São criadas para serem ultilizadas por outros contratos;

    - Não possuem Estado; não é possivel declarar variáveis de estado;

    - Bibliotecas podem ser internas ou externas.

        - Bibliotecass são códigos que são feitos para serem ultilizados por outros contratos. Dessa forma, bibliotecas não possuem estado, não é possivel declarar
        variáveis de de Estado em bibliotecas, a não ser se ela for constante.

        - Existe  2 tipos, externas e internas; as internas código dela e copiado para o contrato e o bytecode  do contato ingloba a biblioteca; ja as externas, é feito
        deploy desssas bibliotecas, e então o contrato ultiliza.

        - Ppodemos importa uma bibllioteca.

*/