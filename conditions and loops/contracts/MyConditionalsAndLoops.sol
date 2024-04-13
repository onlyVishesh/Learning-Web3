// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyConditionalsAndLoops {
    uint[] public numbers = [1,2,12,4545,5,345,23,5,4,3,4,5,56,6,67,325,23452];

    function countEven() public view returns(uint){
        uint count = 0;
        for (uint i = 0; i < numbers.length; i++) 
        {
            if( isEven(numbers[i])){
                count++;
            }
           
        }

        return count;
    }



    function isEven(uint _number) public view returns(bool){
       
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }
    

}
