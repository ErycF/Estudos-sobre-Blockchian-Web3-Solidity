// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract EnviarEther{

    function enviarEther(address endereco) public {

        endereco.call{value: 1 ether}(""); // call
        payable(endereco).transfer(1 ether); // trannsfer
        payable(endereco).send(1 ether); // send
    }
}
/*
    - O CALL ele encaminha todo gás disponivel para a conta, se a conta  que esta recebendo for uma contra de contrato esse contrato pode usar esse gás recebido
    para varias coias maliciosas. 

    - O transfer reverter,quando por algum motivo se não chegar a destinatario, o send a trnasação não reverte, porem, ele retorna falso.

    - O recomendado hoje é o mètodo call, pois oss outros métodos eles tem um gás pre-definido, eles emcaminhão uma quantidade pequena de gás, a  quantidade necessaria.

    - Porque usar o método call, a ethereum pode fazer uma nova tabela de preço do gás, isso é o valr pode subir. O preço do gás ele é fixo ate que a rede decida mudar.

    - Códigs que funcionavam, pode não funcionar mais, isso afeta os outros métodos, mias não o metodo call. Mias tem que tomar cuidado, tem que escrever o codigo de uma 
    maneira segura.  
     
*/