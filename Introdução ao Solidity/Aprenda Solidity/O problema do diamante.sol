// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract X{

    uint public val1;

    constructor(){
        val1 = 10;
    }
}

contract A is X{

    constructor(){
        val1 = 15;
    }
}

contract B is X{    

    constructor(){
        val1 = 20;
    }
}

contract Z is A,B{

}
/*      Problema do diamante

                X
            A       B
                Y

    O que acontece é que o contrato X é  10 porem os contratoos A e B estao mais pertoss, logo o contrato Z irar pegar o valor do ccontrato A e B; porêm, quando
    o contrato A e B deefinem valores, o contrato Z irar pegar o nuúmero que esta mais pertos deles, e no caso isso funciona com o que esta mais perto da direita,
    o contrato mias proximo a direita é o mias pròximo de Z, por isso que o valor apresentado é 20; porque quem definil o valor 20 foi o contrato B. Se udar a ordem 
    o valor apresentado irar ser 15, porque, A irar herda de B; A irar mias esta mais proximo de Z por esta mais a direita.

    contract Z is B, A, X{} -> se isso acontecer, irar esta erado porque o X não herda de ninguem ele não tem pai, ele não herda nada do B e A; Issso vale se o contato
    X estiver no meio.

*/