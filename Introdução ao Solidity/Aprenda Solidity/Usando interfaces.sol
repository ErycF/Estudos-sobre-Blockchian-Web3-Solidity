// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface Ivalor {
    
    function lerValor() external view returns (uint);

    function alterarValor(uint) external returns (uint); 
}

contract Valor is Ivalor{

    uint valor = 18;

    function lerValor() public view override returns (uint){
        return valor;
    }
    
    function alterarValor(uint _valor) public override returns (uint){

        valor = _valor;

        return valor;
    }
}

contract Execultor{

    function ExecultaralterarValor(uint _valor, address _endereco) public {

        Valor valozinho = Valor(_endereco);
        valozinho.alterarValor(_valor);

        /* Aqui nós pegamos um valor e o endereço do contarto que queremos modificar, com isso, ultilizando a função, para modificar variável do contrato Valor
        irar ser mudadá pelo contrato Execultor.*/  
    }

    function ExecultoralterarIValor(uint _valor, address _endereco) public {
        Ivalor valozinho = Ivalor(_endereco);
        valozinho.alterarValor(_valor);

        /* Aqui nós estamos ultilizando a interface para modifica o valor da varaável de Estado de algum contrato.*/

    }
}

/*      Interfaces

    Ultilizadas como definição de padrão: definir funções que devem ser implementadas;

    Ultilizar para execultar funções de outros contratos;

*/