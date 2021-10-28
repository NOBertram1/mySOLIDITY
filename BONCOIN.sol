//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract BONCOIN { 
    address public owner;
    mapping (address => uint) public balances ; 

    event Transfer (address from, address to, uint amount );

    constructor () {
        owner = msg.sender ;
    }

    function mint(address receiver, uint amount) public {

        require (msg.sender == owner, "You are not the owner");
        require (amount < 1e60, "Max issuance exceeded.") ;
        balances [receiver] += amount ;

    }
    function transfer (address receiver, uint amount) public {

        require (amount <= balances[msg.sender], "Insufficient balance." );
        balances [msg.sender] -= amount;
        balances [receiver] += amount;

        emit Transfer (msg.sender, receiver, amount) ;
    }

}