// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "forge-std/console2.sol";

contract Counter {
    uint256 public number;
    address public immutable owner;

    constructor() {
        owner = msg.sender;
        console2.log(owner);
        console2.log(tx.origin);
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        //console.log(owner);
        number++;
    }
}
