//SPDX-License-Identifier: MIT
pragma solidity >=0.8.3 ;

contract SimpleStorage {
    uint public num;

    //write by sending transaction
    function set(uint _num) public {
        num = _num;
    }

    //read by calling a transacrtion
    function get() public view returns (uint) {
        return num;
    }
}