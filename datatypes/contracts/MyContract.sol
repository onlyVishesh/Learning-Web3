// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    // State Variable
    uint public myUnit = 1; // size = 256
    int8 public  myunit8 = -9; //  size = 8

    string public name = "Etherium";
    bytes32 public myBytes32 = "Hello, Blockchain!";
    
    bool isAvailable = true;

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Custom datatype
    struct MyStruct {
        uint myUint;
        string myString;
        address myAddress;
    }

    MyStruct public myStruct = MyStruct(25, "Hello", 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    // Array
    uint[] public uintArray = [1,2,3,4,5,6,7];
    string[] public fruits = ["apple", "Banana", "cheery"];


    // Local Variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}