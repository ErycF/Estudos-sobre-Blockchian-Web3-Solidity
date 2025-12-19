// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract comparaTempo{

    uint public tempoAgora;

    function gravaTempo() public {
        tempoAgora = block.timestamp;
    }

    function passaTempo() public view returns (uint) {
      //require(block.timestamp > tempoAgora + 1 minutes);  
        require(block.timestamp > tempoAgora + 10); // Esse 10 é em segundos.
        // So podemos execulta essa função depois de 10 segundos.
        return block.timestamp;
    }
}
// Quando eu gravo o tempo na variável, somente depois de 10 segundos podemos execulta essa função.
// Umas das funcionalidades do BLOCK.TIMESTAMP é que podemos trancar certas informações.
/* O BLOCK.TIMESTAMP ele é defenido em segundos porém, no SOLIDITY podemos usar certas palavra para não precisar colocar em segundos
com: - minutes - hours - days - weeks */
