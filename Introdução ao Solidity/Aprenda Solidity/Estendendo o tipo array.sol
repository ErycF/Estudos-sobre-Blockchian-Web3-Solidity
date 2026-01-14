// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

library BibliotecaArray{

    function soma(uint[] storage array) internal view returns (uint){

        uint resultado;

        for(uint i = 0; i < array.length; i++){
            resultado = resultado + array[i];
        }

        return resultado;
}
}

contract mycontract{

    using BibliotecaArray for uint[];

    uint[] minhaArray = [uint(1),2,3,4,5];

    function somaMinhaArray() public view returns (uint){
        return minhaArray.soma();
    } 
}

/*  Estendendo o tipo array 

    - Não da para criar uma array dinamica na memoria (memory); em bibliotecas os parametros podem esta na storage.
*/