This code for intermediateproject_3

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Deepak_intermediate_function{
    string public tokenName = "DEEPAK LENDA";
    string public tokenAbbr = "DL";

    address owner;

    mapping(address => uint) record;

    constructor(){
        owner = msg.sender;
    }

    function getBalance() external view returns (uint){
        return record[msg.sender];
    }

    function mint(address to, uint amount) external {
        require(msg.sender == owner,"Only the owner can mint tokens");
        record[to] += amount;
    }

    function transferTo(address to, uint amount) external{
        require(record[msg.sender] >= amount,"Insufficient balance in this account");
        record[to] += amount;
        record[msg.sender] -= amount;
    }

    function burn(uint amount) external {
        require(record[msg.sender] >= amount,"Insufficient balance in this account");
        record[msg.sender] -= amount;
    }
}
