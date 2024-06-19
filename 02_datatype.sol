//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// Contract name should start from Capital Letter
contract Datatype {
    bool public hey; // default is false
    bool public no = true;

    //UINT unsigned integer NO NEGATIVE NUMBERS

    // we use this in order to save gas fee
    uint8 num; // range = 0 to 2 ** 8 - 1 = 255
    uint16 num1; // range = 0 to 2 ** 16 - 1 = 65535

    
}