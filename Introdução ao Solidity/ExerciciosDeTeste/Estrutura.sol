// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts/access/Ownable.sol";

/// @title Exemplo de Contrato Básico
/// @notice Um contrato de exemplo para mostrar a estrutura básica em Solidity
/// @dev Este contrato herda a biblioteca Ownable do OpenZeppelin para controle de acesso
contract Estrutura is Ownable {
    // Variáveis de estado
    uint256 public balance; // Saldo atual do contrato

    /// @notice Evento emitido quando um depósito é feito
    /// @param from Endereço que fez o depósito
    /// @param valor Valor depositado
    event Deposito(address indexed from, uint256 valor);

    /// @notice Construtor para inicializar o contrato
    /// @dev Define o dono do contrato usando o Ownable e inicializa o saldo
    constructor(uint _initialBalance) Ownable(msg.sender) {
        balance = _initialBalance;
    }

    /// @notice Atualiza o saldo do contrato
    /// @param _valor O valor a ser adicionado ao saldo
    function depositar(uint256 _valor) public {
        balance += _valor;
        emit Deposito(msg.sender, _valor);
    }
}