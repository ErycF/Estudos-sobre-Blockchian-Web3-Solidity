// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ArrayD{

    string[] Nomes;

    function AdicionarNome(string memory _nome) public {
        Nomes.push(_nome);
    }

    function RemoverNome() public {
        Nomes.pop();
    }

    function EscolherRemocao(uint _indice) public {
        require(_indice < Nomes.length);
        Nomes[_indice] = "";
    }

    function TrocarNome(uint indice, string memory novonome) public {
        Nomes[indice] = novonome;
    }

    function Tammanhhooarray() public view returns (uint) {
        return Nomes.length;
    }

    function getNome(uint indice) public view returns (string memory){
        return Nomes[indice];
    }
    
    /*
        Adicionar elemento -> .push
        Remover elemento -> .pop
        Tamanho da Array -> .length
    */
}