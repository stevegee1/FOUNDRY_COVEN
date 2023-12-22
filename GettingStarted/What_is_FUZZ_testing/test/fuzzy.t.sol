//SPDX-License-Identifier:MIT

pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/fuzzy.sol";
//import {StdInvariant} from "forge-std/StdInvariant.sol";

contract fuzzyTest is Test{
    fuzzy public fuzzyInstance;

    function setUp() public {
        fuzzyInstance = new fuzzy();

    }
    /**
     * if we manually select random value , we might skip value:227.
     * Hence, we assume the smart contract is fine
     */
    function test_manuallySelectedData() public {
        assertEq(fuzzyInstance.checkOut(4),1 );
    }
    /**
     * Although, this pseudo-random mechanism is not exhaustive
     * Using fuzz testing, depending on the number of runs configured, 
     * we generate random values between 0 - uint.max() at each run.
     * More runs, increase in ROBUSTNESS of our smartcontract
     */

    function testFuzz_shouldfail(uint data) public {
        assertEq(fuzzyInstance.checkOut(data), 1);
    }





}