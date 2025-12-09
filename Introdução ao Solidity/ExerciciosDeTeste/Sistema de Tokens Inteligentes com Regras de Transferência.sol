// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Tokens_Inteligentes_com_Regras_de_Transferencia{

    struct User{
            uint balance;
            uint reputation;
            uint totalTransfers;
            bool isActive;
    }
    address public admin;
    uint totalSupply;
    string tokename;
    string simbolo;
    uint decimal;

    mapping (address => User) private users;

    address[] private registedAddresses;

    event Transfer(address indexed from, address indexed to, uint amount);
    event ReputationChanged(address indexed user, uint newReputation);
    event UserRegistered(address indexed user);

    modifier OnlyAdmin() {
        require(msg.sender == admin, "Only the Onwer can call this.");
        _;
    }

    modifier OnlyRegisteredUser(address _user) {
        require(users[_user].isActive, "User not registered.");
        _;
    }

    constructor(string memory _name, string memory _symbol){
        admin = msg.sender;
        tokename = _name;
        simbolo = _symbol;
    }

    function RegisttreUser(address _user, uint inicialbalance, uint inicialreputation) external OnlyAdmin{
        User memory usuario;
        usuario.balance = inicialbalance;
        usuario.reputation = inicialreputation;
        registedAddresses.push(usuario);
        }
}