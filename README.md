# Intermediate Project 3

This Solidity contract demonstrates various functions with a token named "DEEPAK KUMAR" and its abbreviation "DK".

## Description

This project showcases an intermediate-level Solidity contract that includes functionalities such as minting, transferring, and burning tokens. The contract initializes with a token name and abbreviation, and it allows for balance management and token operations. It serves as a practical example for developers looking to understand and implement more complex functionalities in Solidity smart contracts.

## Getting Started

### Executing Program

__To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/).__

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., IntermediateProject3.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Deepak_intermediate_function {
    string public tokenName = "DEEPAK KUMAR";
    string public tokenAbbr = "DK";

    address owner;

    mapping(address => uint) record;

    constructor() {
        owner = msg.sender;
    }

    function getBalance() external view returns (uint) {
        return record[msg.sender];
    }

    function mint(address to, uint amount) external {
        require(msg.sender == owner, "Only the owner can mint tokens");
        record[to] += amount;
    }

    function transferTo(address to, uint amount) external {
        require(record[msg.sender] >= amount, "Insufficient balance in this account");
        record[to] += amount;
        record[msg.sender] -= amount;
    }

    function burn(uint amount) external {
        require(record[msg.sender] >= amount, "Insufficient balance in this account");
        record[msg.sender] -= amount;
    }
}
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.10" (or another compatible version), and then click on the "Compile IntermediateProject3.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Deepak_intermediate_function" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the various functions such as getBalance, mint, transferTo, and burn.

# Authors
Deepak Kumar

# License
This project is licensed under the MIT License - see the LICENSE.md file for details.

## Thank You
