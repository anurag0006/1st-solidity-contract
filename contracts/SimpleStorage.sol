// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract SimpleStorage {
    uint favouriteNumber;


    mapping (string => uint) public nameToFavouriteNumber;

    struct People {
        uint favouriteNumber;
        string name;
    }

    People[] public people;


    function store(uint _favouriteNum) public virtual  {
        favouriteNumber = _favouriteNum;
    }
    function retrive() public view returns(uint){
        return favouriteNumber;
    }

    function addPerson(string memory  _name,uint _favouriteNum) public {
        people.push(People(_favouriteNum,_name));
    }
}


