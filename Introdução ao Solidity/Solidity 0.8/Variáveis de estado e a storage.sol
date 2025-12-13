// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Storage{

    uint256 minhaVariavel;// Oculpa todo um conteiner.

    function alteraValor(uint _valor) public {
        minhaVariavel = _valor; // Ela guarda o valor no slote 0 da storage.

        /*Quando o compilador for execulta o codigo, ele ira ver a variavel e iram saber que ela esta
        no slote 0.*/
    }
    function LerValor() public view returns (uint) {
        return minhaVariavel; // Ler o slote 0 da storage
    }

    /*O nome das variáveis de Estado so importam para o compilador, de como ele vai compilar
     em uma função, o nome da variãvel de Estado não chega no ByteCode, a EVM não sabe o nome da variãvel.*/

    /* A Storege ela e feita de conteiner de 32 bytes cada. Se minha variãvel de Estado tem 32 bytes, ela
     oculpa todo o primeiro conteiner de número 0. Porem se eu tenho 2 vaariãveis de Estado de 16 bytes cada, essas
     duas  iram oculpa 1 conteiner so.*/
}

contract StorageAssembly{

    function AlteraValor(uint _valor) public {
         
//         assembly  {
//            sstore(00x0, _valor)
//         }

    }

    function LerValor() public view returns (uint retorno) {
        
//        assembly {
//            retorno := sload(0x00)
//        }
    }
}