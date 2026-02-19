// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.21;

import "./Padrao.sol";

contract Criar{

    address public endereco;

    function criarPadrao() public {

        Padrao novoContrato = new Padrao();
        endereco = address(novoContrato);
    }
}