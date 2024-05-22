//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract Challenge1{


    // state variables of four different types. (by defualt they are private)
    uint age;
    bool haveFriends;
    string userName;
    address myWalletpublicAddress;


    function getAge() public view returns(uint){
        return age;
    }

    function getHaveFriends() public view returns(bool){
        return haveFriends;
    }

     function getUserName() public view returns(string memory){
        return userName;
    }

    function getMyWalletpublicAddress() public view returns(address){
        return myWalletpublicAddress;
    }


function setAge(uint _age) public{
        age = _age;
    }

    function setHaveFriends(bool _haveFriends) public{
        haveFriends = _haveFriends;
    }

     function setUserName(string memory _userName) public{
        userName = _userName;
    }

    function setMyWalletpublicAddress(address _anotherAddress) public{
       myWalletpublicAddress = _anotherAddress;
    }

}