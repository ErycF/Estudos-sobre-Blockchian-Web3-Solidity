// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

library Quadro{

    function quadro(uint x) internal pure  returns (uint){
        return x*x;
    }
}
contract meuContrato{

    function usarquadrado(uint x) public pure returns (uint){
        return Quadro.quadro(x);
    }
}

/*  Biblioteca (librereis)

    - Internas: o c´digo dad biblioteca está no bytecode do contrato;

    - Externas: o código da biblioteca é feito o deploy e o contrato tem uma referência;

    - Bibliotecas externass tem o seu proprio bytecode e o contrato que ultiliza essa biblioteca, nelee fica apenas sua  referência do endereço da biblioteca.

    - O biblioteva como e feito deploy depende do seu ambiente de trabalho.

    - No caso do remix, para usar uma biblioteca externa, você terá que netra em ARTIFACTS depois ir no seu contrato; e lá na pasta meuContrato.json; logo em seguida
    em deploy. O autoDeployLib diz se ele irar fazer o deploy automatico. e no {} coloca o endereço de contrato.

    - "linkReferences": {}, // endereço
	   "autoDeployLib": true // automatico
*/