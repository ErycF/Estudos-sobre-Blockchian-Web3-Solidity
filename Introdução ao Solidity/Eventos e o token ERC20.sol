// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract evento_token {

    uint public moeda;
    mapping (address => uint) public  balanco;
    address public owner;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    /*O log é um registro que é mais facíl de ser gravado e achado.
    Variáveis indexada são mais faíl de serem achadas por exemplo; as vezes
    você que busca todas as informações sobre um certo endereço desda criação 
    da moeda, quanda as variáveis são indexadas é mais facíl de preocura*/

    modifier olnyOwner{
        require(msg.sender == owner);
        _;
    }

    constructor(){

        moeda = 1_000_000;
        owner = msg.sender;
        balanco[owner] = 1_270;
    }

    function changeOwner (address _newOwner) public olnyOwner{
        owner = _newOwner;
    }

    function transfer(address _to, uint256 _value) public returns (bool success){
        require(balanco[msg.sender] >= _value); /*Para eu manda 10, tenho que ter 10*/
        require(_to != address(0)); /*A conta que esta mandando é diferente do endereço 0*/
        balanco[msg.sender] -= _value;
        balanco[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
} 