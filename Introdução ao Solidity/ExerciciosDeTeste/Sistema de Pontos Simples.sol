// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SistemaPontos{
    
    address public Owner;
    mapping (address => uint) pontos;

    constructor(){
        Owner = msg.sender;
    }

    event Transfer(address indexed _from, address indexed _to, uint _valor);

    function AdicionarPontos(address _usuario, uint _ponto) public {
        require(msg.sender == Owner, "Voce nao e o dono.");
        pontos[_usuario] += _ponto;
    }

    function BuscarPontos(address _usuario) public view returns (uint){
        return (pontos[_usuario]);
    }

    function TransferPontos(address _to, uint _valor) public returns (bool sucesso) {
        require(_to != address(0), "Endereco invalido.");
        require(pontos[msg.sender] >=  _valor, "Pontos insuficiente.");

        pontos[msg.sender] -= _valor;
        pontos[_to] += _valor;

        emit Transfer(msg.sender, _to, _valor);
        return true;
    }

    function dobraPontos() public {
        uint pontosAtuais = pontos[msg.sender];
        require(pontosAtuais < 100, "Saldo com mais de 100.");

        pontos[msg.sender] = pontosAtuais * 2;
    }
}