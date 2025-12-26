// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Modificador{

    enum Status{
        Venda,
        Aluguel
    }

    Status public status = Status.Venda;

    modifier ApenaStatus(Status _status){
        require(status == _status);
        _;
    }

    function ApenasVenda() public ApenaStatus(Status.Venda){
        // Código
    }

    function ApenasAluguel() public ApenaStatus(Status.Aluguel){
        // Código
    }

    function Trocarstatus(Status _status) public {
        status = _status;
    }

}