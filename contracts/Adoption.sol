pragma solidity ^0.4.17;

contract Adoption{

    // array to hold the adopter for each pet
    address[] public adopters; // only 16 
    
    function adopt(uint petId) public returns (uint){
        require(petId >=0 && petId <= adopters.length);

        // change the pet;
        adopters[petId] = msg.sender;

        return petId;
    }

    function getAdopters() public view returns (address[]){
        return adopters;
    }
}