// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ListaDeAmigo{

    enum Status{
        online,
        offline
    }

    struct Amigos{
        string nome;
        Status status;
        uint idade;
    }

    Amigos[] public friends;
    uint public friendsCount;

    function addfriends(string memory _nome, uint _idade) public {
       Amigos memory Novo_amigo;
       Novo_amigo.nome = _nome;
       Novo_amigo.idade = _idade;
       friends.push(Novo_amigo);
       friends.push(Amigos(_nome, Status.online, _idade));
       friendsCount++;
    }
}