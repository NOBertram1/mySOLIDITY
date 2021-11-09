//SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract IfElse {
    function props(uint x) public pure returns(uint) {
        if (x > 10) {
            return 0;
        } else if (x < 10) {
            return 1;
        } else {
            return 2;
        }
    }
}