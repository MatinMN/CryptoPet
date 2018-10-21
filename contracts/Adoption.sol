pragma solidity ^0.4.17;

contract Adoption{

    // array to hold the adopter for each pet
    address[16] public adopters; // only 16 
    
    function adopt(uint petId) public returns (uint){
        require(petId >=0 && petId <=15);

        // change the pet;
        adopters[petId] = msg.sender;

        return petId;
    }

    function getAdopters() public view returns (address[16]){
        return adopters;
    }
}