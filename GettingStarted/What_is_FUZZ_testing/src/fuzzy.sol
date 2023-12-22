//SPDX-License-Identifier:MIT

pragma solidity ^0.8.13;

/**
 * This contract has a function that should always return uint 1
 * for any uint  passed as the function parameter
 */

contract fuzzy {
    uint public shouldReturnOne = 1;

    function checkOut(uint data) public returns (uint) {
        /**
         * What is the implication of this "if statement" when
         * the value of the random data is 227?
         */
        if (data == 227) {
            shouldReturnOne = 2;
            return shouldReturnOne;
        }
        return shouldReturnOne;
    }
}
