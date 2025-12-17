// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract bytes_String{
     
    bytes public texto = "Eryc";
    string public texto2  = "Eryc";

    function retorna() public view returns (string memory){
        return string(texto);
    }

/*
    O tipo STRING é um tipo BYTES porem; ele ja e transformado em uma string;
    O tipo BYTES é o valor da string da codificação UTF8;

    BYTES é um array, então podemos ultilizar ( .PUSH(); ), ( .POP(); ), ( .LENGTH )
    mas, ão podemos ultilizar isso essa propriedade na STRING;

    A STRING ela  é um array de bytes
*/
}