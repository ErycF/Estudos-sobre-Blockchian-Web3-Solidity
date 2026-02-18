// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

import "./Padrao.sol";

contract Criador{

    address public endereco;

    function criarPadrao() public {

        Padrao novoPadrao = new Padrao();
        endereco = address(novoPadrao);
    }
}