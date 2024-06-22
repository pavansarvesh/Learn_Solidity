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

    int public minInt = type(int).min; //Displays the minimum number of datatype int
    int public maxInt = type(int).max; //Displays the maximum number of datatype int


    // ARRAY
    //* Fixed size
    //* Dynamic size

    bytes1 public a;
    // Assigning values
    bytes1 public b = 0x56;


    // Address Datatype
    address myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}