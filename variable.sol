//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3 ; 

contract Variables {
    string public text = "Hi";
    uint public num = 123;

    function dogg() public {
        uint i = 456; 

        uint timestamp = block.timestamp;
        address sender = msg.sender;

    }
}