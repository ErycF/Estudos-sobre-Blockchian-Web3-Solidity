// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract A{

    uint public val1 = 1;

    function calculete(uint x, uint y) public pure virtual returns (uint){
        return x+y;
    }
}

contract B{

    uint public val2 = 2;

    function calculete(uint x, uint y) public pure virtual returns (uint){
        return x*y;
    }
}

contract C is A,B{

    function calculete(uint x, uint y) public pure override(A,B) returns (uint){
        return x ** y;

//      return A.calculete(x,y);
//      return B.calculete(x,y);

    }
}
/*      Heraça Multipla

    A - B      A
      C        B
               C

    contract C is A,B {}

    contract C is B {} ... contract B is A {}

    Cuidados com colisão de funçoẽs 


        A herança multipla ocorre com um contrato e herdeiro de mias de 1 contrato. Podem ocorrer 2 estruturas: em que o contrato C tem mais de um Pai; Ou a outra 
        estrutura onde: o contrato C e  filho ddo B, e o B e filho do A.

        IMPPORTANTE = Tem sim diferença na onder dos cntratos [ contract C is B {} ... contract B is A {}] se é {B e A} ou {A e B}.

        Tem que tomar cuidado nos nomes dass funçoçes para não da colisão.

        No contrato C, como a função ee a mesma, quanto eessa funcção esta tanto no contrato A quanto em B, nos ddefinimoss que o OVERRIDE(A,B) isso 
        mostrará que essa nova função do C vai sobrepor as dduas funçãoes do contrato A e B.

*/