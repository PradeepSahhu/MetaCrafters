// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
//Write a Solidity contract with 4 functions; add, subtract, multiply and divide 2 numbers.


contract MathematicalOperations{

    function addition(int x, int y) external pure returns(int){

        return x+y;
    }


    function subtraction(int x, int y) external pure returns(int){

        return x-y;
    }

    function multiplication(int x, int y) external pure returns(int){

        return x*y;
    }

    function division(int x, int y) external pure returns(int){

        return x/y;
    }

}