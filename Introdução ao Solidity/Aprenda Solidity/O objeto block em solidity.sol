// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract BaseInfo{

    function BuscarInfor() public view returns (uint){
        return block.timestamp;
    }
}