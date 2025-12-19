// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract BlockTime{

    uint[] public tempo;

    function getime() public view returns (uint){
        return block.timestamp;
    }

    function guardaTime() public {
        uint gtempo;
        gtempo = block.timestamp;
        tempo.push(gtempo);
    }
}