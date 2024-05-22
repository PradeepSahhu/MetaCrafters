// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract LoopingChallenge{

    // simple Operation.

    uint s = 0;
     uint data = 1;
        uint answer = 1;
    
    function SimpleOperation() public returns(uint){

        for(uint i = 0;i<1000;i++){
            s+=i;
        }

        return s;
    }


    function ComplexOperation() public returns(uint){
       
        for(uint i = 0;i<100;i++){
            data += i*2 + answer * data;
            answer = data + 1* data + answer;
        }
        return answer;
    }
}