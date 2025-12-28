// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract TryCatch{

    function error() external pure {
        require(false, "Reverteu!");        
    }

    function panic() external pure{
        assert(false);
    }

    function invocar() view public returns (string memory){
        try this.error(){

        }catch Error (string memory){
            return "Pegou um error";
        }catch Error (uint256){
            return "Pegou um Panic";
        }
    }
}
/*Try catch so pode ser ultilizadas por função externamente, nesse codigo ele deveria revrrte, porem issoo nao acontece porque 
tem um tey catch ele aceita porem depois fala que reverteu. A transação como um todo não irar ser revertido.*/