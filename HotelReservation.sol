// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom{
    enum Statuses {
         Vacant, 
         Occupied
        }

    Statuses public  currentStatus;

    event occupy(address _occupant, uint _value);

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier  onlyWhileVacant {
    require(currentStatus == Statuses.Vacant, "Currently Occupied."); /// checking the statement either it's true or false
     _; 

    }

    modifier costs(uint _amount) {
    require(msg.value >= _amount, "Not enough ether provided.");
    _;

    }

    function book() public  payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;

        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true); //this will stop the execution while having the issue with the funds

        emit occupy(msg.sender, msg.value);
    }
}