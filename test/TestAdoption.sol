pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    function testUserCanAdoptPet() public {
        uint returedId = adoption.adopt(8);

        uint expected = 8;

        Assert.equal(returedId,expected,"Pet id 8 should be recorded");
    }

    function testGetAdopterAddressByPetId() public{
        address expected = this;

        address adopter = adoption.adopters(8);

        Assert.equal(adopter,expected,"Owner if pet 8 should be recorded");
    }

    function testGetAdopterAddressByPetIdInArray() public {

        address expected = this;

        address[16] memory adopters = adoption.getAdopters();

        Assert.equal(adopters[8],expected,"Save owner of pet is 8");

    }
}