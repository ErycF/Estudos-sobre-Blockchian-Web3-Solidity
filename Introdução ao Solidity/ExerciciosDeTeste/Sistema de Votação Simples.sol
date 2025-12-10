// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SistemaVotacao{

    address public Owner;
    string[] candidatos;
    mapping (uint => uint) public VotosCanditados;
    mapping (address => bool) public JaVotou;

    constructor(){
        Owner = msg.sender;
    }

    function AdicionarCanditatos( string memory Candidato) public {
        require(Owner == msg.sender);
        candidatos.push(Candidato);
    }
    function VotarCandidato(uint NumeroDoCandidato) public {
        require(NumeroDoCandidato <= candidatos.length);
        require(!JaVotou[msg.sender]);
        VotosCanditados[NumeroDoCandidato]++;
        JaVotou[msg.sender] = true;
    }
}