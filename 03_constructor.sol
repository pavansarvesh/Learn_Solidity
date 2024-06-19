// todo : example of a constructor Keyword (This will run every time you deploy the contract)

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyContract {
    string public name;
    uint256 public age;
    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    //same code but in a function
    function changeINFO(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}
