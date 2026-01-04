// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.5.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MeuToken is ERC20, ERC20Permit {
    constructor(address recipient)
        ERC20("Meu token", "MTK")
        ERC20Permit("Meu token")
    {
        _mint(recipient, 1000000 * 10 ** decimals());
    }

    function decimals() public override pure returns (uint8){
        return 9;
    }
}