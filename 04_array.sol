// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    uint256 myFavoriteNumber;

    // Array
    uint256[] listOfFavoriteNumber; //[0,1,2]

    struct Person{
        uint256 favoriteNumber;
        string name;
        // bool isCool;
    }

    Person[] public listOfPeople;
    // Person public pat = Person(7,"Pat",true);

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    // view : reads the state from the blockchain
    function retrive() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber,_name));
    }
}