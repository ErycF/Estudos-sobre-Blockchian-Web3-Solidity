// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract receber{

    string public nome;

    receive() external payable { 
        
    /*O receive e um evendo onde voce não precisa da função parada receber dinheiro, da dinheiro para o contrato*/

    }
    
    error NaoFoiOUsufisiente();

    function recebe(string memory _mudaNome) public payable {
        if(msg.value < 1 ether){
            revert NaoFoiOUsufisiente();
        }
        nome = _mudaNome;    // O payable é quando uam função pode receber dinheiro
    }

    function quantotem() public view returns(uint){
        return address(this).balance;
    }

    function retirar() public {
        address payable endereco = payable(msg.sender);
        endereco.transfer(address(this).balance);
    }

}