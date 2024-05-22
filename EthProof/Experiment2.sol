// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract Experiment2{

    struct Car{
        string model;
        uint age;
        address owner;
    }


    Car[] public cars;
    Car public car;

    mapping(address=> Car[]) public carsByOwner;


    function initializeCar() external  {


        // Three ways to initialize the structure.

        Car memory toyota =  Car({model:'YML-210', age: 21, owner:0x161aBA4657174De9a36C3Ee71bC8163118d88d43});
        cars.push(toyota);

        //another way

        Car memory tesla = Car('ysl',21,0x161aBA4657174De9a36C3Ee71bC8163118d88d43);
        cars.push(tesla);


        Car memory lambo;

        lambo.model = "Tesla";
        lambo.age = 100;
        lambo.owner = msg.sender;

        cars.push(lambo);

        cars.push(Car("anycar",21,msg.sender));


        Car memory _car = cars[0]; // make it store on storage such that changes will be reflected after the funciton ends.

        _car.model = "spacex";
        _car.age = 1000;

    

    }
}