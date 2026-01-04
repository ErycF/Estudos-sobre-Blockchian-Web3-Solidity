// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Token_ERC_20{

    string private name = "My Token";
    string private symbol = "MTK";
    uint8 private decimals = 8;
    uint256 private totalSupply;
    mapping (address => uint) private balancoOf;
    mapping (address => mapping (address => uint)) private _allowance;
    
    constructor() {
        totalSupply = 1_000_000_000 * 10 ** decimals;
        balancoOf[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = totalSupply;
        balancoOf[msg.sender] = totalSupply / 1_000_000;        
    }

    function getName() public view returns (string memory){
        return name;
    }

    function getSymbol() public view returns (string memory){
        return symbol;
    }

    function getDecimals() public view returns (uint8){
        return decimals;
    }

    function getTotalSupply() public view returns (uint256){
        return totalSupply;
    }

    function getBalancoOf(address _owner) public view returns (uint){
        return balancoOf[_owner];
    } 

    function transfer(address _to, uint _value) public returns (bool){
        require(balancoOf[msg.sender] >= _value, "valor baixo");
        balancoOf[msg.sender] = balancoOf[msg.sender] - _value;
        balancoOf[_to] = balancoOf[_to] + _value;

        return true;
    }
    
    function transferFrom(address _from, address _to, uint _value) public returns (bool){
        require(balancoOf[_from] >= _value, "Valor insuficiente");
        balancoOf[_from] = balancoOf[_from] - _value;
        balancoOf[_to] = balancoOf[_to] + _value;
        
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint){
        return _allowance[_owner][_spender];
    }
    
}