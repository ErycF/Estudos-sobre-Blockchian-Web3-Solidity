// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract persson{

    struct Person{
        string nome;
        string sobrenome;
        uint idade;
    }

    Person[] public persons;

    function addperson(Person memory _person) public {
        persons.push(_person);
    // Uma tuple é uma coleção de valores, no remix a coleção de valores tem ques ser colocado entre [] ->
    // ["Cristo","Redentor",30]

    }

    function ChangeAge(uint _indice, uint _NovaIdade) public {
        Person storage person = persons[_indice];
        person.idade = _NovaIdade;
        // Esta pegando direto da Storage, e modificando diertamente.
    }
}