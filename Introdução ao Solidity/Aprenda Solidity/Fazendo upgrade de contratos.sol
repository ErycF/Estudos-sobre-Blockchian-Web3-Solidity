// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Caixa{

    uint valor;

    function alterarValor() public returns (uint){
        valor = valor + 2;
        return valor;
    }
}

contract caixa2{

    uint valor;

    function alterarValor() public returns (uint){
        valor = valor + 4;
        return valor;
    }
}

contract upgradable{
    
    uint public valor;
    address public endereco;

    function alterarValor() public returns (bool, bytes memory) {

        (bool success, bytes memory retorno) = endereco.delegatecall(abi.encodeWithSignature("alterarValor()"));
        return (success, retorno);
    }

    function alterarEndereco(address _endereco) public {
        endereco = _endereco;
    }
}

/*      Uso do Deleagtecall

    - Eu quero ter uma função que eu possa alterar sua funcionalidade...

    - ... porém, contrato são imutáveis.

    - O uso do delegatecall é para quando queremos alterar alguma funcionalidade no contarato inteligente, porém contratos são imutávis uma vez na blocckchian, sempre na
    blockchain, mas a unica coisa que podemos fazer e destruir o contrato caso ele tenha o botão de alto destruição.

    - O que esse contrato esta representando é que a função que deveria ser usado era a caixa1 que muda a variável em 2 em 2, porem podemos passar o endereço de outro
    contrato, onde, que esse contrato faca a mesma coisa, porém em 4 em 4. Isso muda a função que antes era para 2 em 2, e foi para 4 em 4.

    - Prós: Eu posso muda a funcionalidade de uma função;

    - Contra: Nós devemos desconfiar de um contrato que ultiliza delegatecall, porque, a qualquer momento a funcionalidade da função pode ser alterad, por exemplo, se você
    tiver um contrato de token e ele usa delegatecall; o que impiederia de quem criou esse contrato de alterar um endereco da bibliotecaque esta usando (caixa), e agora 
    enves de distribuir 1.000 token por pessoa, so destribuir somente 100, ou poder pegar todos os seus tokens ou poder fazer o que quiser. 

    - então tem essa questão, perdesse na transparencia, porem ganha-se na questão de você poder inplementarv novas funcionalidades ou alterar funcionalidades.
*/