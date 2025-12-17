// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Estrutura{

    struct Person{
        string Nome;
        string UltimoNOme;
        uint Idade;
    }

    Person public person;

    function Cadastrar(string memory _nome, string memory _Ulnome, uint _idade) public {
        person.Nome = _nome;
        person.UltimoNOme  =  _Ulnome;
        person.Idade = _idade;        
    }
}