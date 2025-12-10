// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SistemaRecompensa{
    
    address public Owner;
    mapping (address => uint) public pontos;
    string[] public Listaconcluida;
    mapping (address => uint) dinheiro;

    constructor(){
        Owner = msg.sender;
    }

    function TarefaConcluida(string memory _nomeTarefa) public {
        pontos[msg.sender] += 10;
        Listaconcluida.push(_nomeTarefa);
    }
    function TotalTarefa() public view returns (uint) {
        return (Listaconcluida.length);
    }
    function ResgataRecompensa() payable public {
        require(pontos[msg.sender] >= 50, "Voce precisa de pelo menos 50 pontos");
        pontos[msg.sender] -= 50;
        dinheiro[msg.sender] += 1 ether;
    }
    function VerDiheiro() view  public returns (uint){
        return (dinheiro[msg.sender]);
    }
}