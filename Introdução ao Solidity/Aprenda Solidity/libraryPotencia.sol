// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

library Potencia{

    function potencia(uint _x) internal pure returns (uint){
        return _x**_x;
    }
}