// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyArray{
    // Array
    uint[] public uintArray = [1,2,3,4,5,6,7];
    string[] public fruits = ["apple", "banana", "cherry"];

    function addValue(string memory _value) public{
        fruits.push(_value);
    }

    function fruitsCount() public view returns(uint){
        return fruits.length;
    }

    // 2d Array

    uint[][] public array2D = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];

}