// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import  "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    uint256 testNumber;

    function setUp() public {
        testNumber = 42;
    }

    function test_Numberis42() public {
        assertEq(testNumber, 42);
    }

    function testFail_subtract43() public {
        testNumber -= 43;
    }

    function test_CannotSubtract() public {
        vm.expectRevert(stdError.arithmeticError);
        testNumber -= 43;
    }
}
