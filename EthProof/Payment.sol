// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Payment{



    uint totalBalance; // to store Ether value in it.
    // 1 ether = 10^18 wei
    // 1 gwei = 10^9 wei


    function takeEtherUser() public payable {
        totalBalance+=msg.value;
    }

    function getBalanceInWei() public view returns(uint){
        // address(this).balance // did the same
        return totalBalance;
    }

    function getBalanceInGwei() public view returns(uint){
        return totalBalance/1e9;
    }

    function getBalanceInEther() public view returns(uint){
        return totalBalance/1e18;
    }


    // to receive funds without using functions
    receive() external payable { }
    fallback() external payable { }
}