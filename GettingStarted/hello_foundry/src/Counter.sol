// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import  "forge-std/console.sol";

contract Counter {
    uint256 public number;
    constructor(){
        console.log(msg.sender);
    }
    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
