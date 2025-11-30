// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract DataType{

    enum status{
        Ativo,
        Inativo,
        Suspenco
    }

    mapping (address => status) public statusUsuario;

    address[] public ListaDeUsuario;

    function AdicionarUsuario(address _usuario) public {
        ListaDeUsuario.push(_usuario);
        statusUsuario[_usuario] = status.Ativo;
    }

    function alteraStatus(address _usuario, status _NovoStatus) public {
        statusUsuario[_usuario] = _NovoStatus;
    }

    function ObeterStatus(address _usuario) public view returns (status){
        return statusUsuario[_usuario];
    }

    function ExisteUsuario(address _usuario) public view returns (bool){
        for (uint i = 0; i<ListaDeUsuario.length; i++){
            if(ListaDeUsuario[i] == _usuario){
                return true;
            }
        }
        return false;
    }
}