//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;
import  "forge-std/console.sol";

error unAuthorized();


contract OwnerUpOnly {
    address immutable public owner;
    uint256 public counter;

    constructor() {
        owner = msg.sender;
        
    }

    function increment() external {
        //console.log(owner);
       // console.log(msg.sender);
       // console.log(tx.origin);
        if(msg.sender != owner){
            revert unAuthorized();
        }
        counter +=1;

    }
}
