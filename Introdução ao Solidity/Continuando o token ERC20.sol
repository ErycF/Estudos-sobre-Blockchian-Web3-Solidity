// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ERC20{
    
    uint public ERY2;
    mapping (address => uint) public balanco;
    address private owner;

    string public nome = "Cyer2";
    string public simbolo = "Cy2";
    uint public decimal = 8;

    mapping (address => mapping (address => uint)) public allowance;

    event transferencia(address indexed _from, address indexed _to, uint value);
    event Aprovacao(address indexed _owner,address indexed _spender, uint _value);

    function approve (address _spender, uint _value) public returns (bool success){
        /*require(balanco[msg.sender] >= _value);*/
        require(_spender != address(0));
        allowance [msg.sender][_spender] = _value;
        return true;
    }

    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }

    constructor(){
        ERY2 = 1_000_000_000 * 10 ** decimal;
        owner = msg.sender;
        balanco[owner] = 1_276;
    }

    function mudarowner(address _NovoOwner)  public onlyOwner{
        owner = _NovoOwner;
    }

    function Transferencia(address _to, uint _value) public returns (bool success){
        require(balanco[msg.sender] >= _value);
        require(_to != address(0));
        balanco[msg.sender] -= _value;
        balanco[_to] += _value;

        emit transferencia(msg.sender, _to, _value);
        return true;
    }

}