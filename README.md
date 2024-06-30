# Intermediate_project3
### This contract shwocases the different types of function with a token named "DEEPAK KUMAR" and its abbreviation as "DK".


Contract initialization and variable declaration 
```
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Deepak_intermediate_function{
    string public tokenName = "DEEPAK KUMAR";
    string public tokenAbbr = "DK";

    address owner;
```
Address mapping and Contructor creation

```
    mapping(address => uint) record;

    constructor(){
        owner = msg.sender;
    }
```
Get Balance Function
```
    function getBalance() external view returns (uint){
        return record[msg.sender];
    }
    
```
Mint function
```
    function mint(address to, uint amount) external {
        require(msg.sender == owner,"Only the owner can mint tokens");
        record[to] += amount;
    }
```

Function to transfer token to desired address

```
    function transferTo(address to, uint amount) external{
        require(record[msg.sender] >= amount,"Insufficient balance in this account");
        record[to] += amount;
        record[msg.sender] -= amount;
    }
```

Function to burn token
```
    function burn(uint amount) external {
        require(record[msg.sender] >= amount,"Insufficient balance in this account");
        record[msg.sender] -= amount;
    }
}
```
### ThankYou
