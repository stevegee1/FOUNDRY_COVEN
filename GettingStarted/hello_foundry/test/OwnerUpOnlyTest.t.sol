// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {OwnerUpOnly} from "../src/OwnerUpOnly.sol";
import  "forge-std/console2.sol";

contract OwnerUpOnlyTest is Test {
    OwnerUpOnly upOnly;

    //tx.origin > OwnerUpOnlyTest and its function
    //OwnerUpOnlyTest deployed upOnly as msg.sender

    //tx.origin called or deployed OwnerUpOnlyTest which is 0x1804c8AB1F12E6bbf3894d4083f33e07309d1f38
    //default sender of test transactions is 0x1804c8AB1F12E6bbf3894d4083f33e07309d1f38


    //OwnerUpOnlyTest deployed upOnly , so the msg.sender is 0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496 

    function setUp() public {
        //deployed by   0x7FA9385bE102ac3EAc297483Dd6233D62b3e1496
        upOnly = new OwnerUpOnly();
    }

    //msg.sender and tx.origin of this test function: 0x1804c8AB1F12E6bbf3894d4083f33e07309d1f38
    function test_increase() public {
        // upOnly.increment();
        assertEq(upOnly.counter(), 0);
        assertEq(address(this), upOnly.owner());
        upOnly.increment();
        assertEq(upOnly.counter(), 1);
    }
}
