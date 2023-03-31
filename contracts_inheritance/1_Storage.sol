//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Simplestorage {
    // This get initialized to zero
    uint256 favoriteNumber;

    mapping(string => uint256) public nameTofavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // Adding a array to storage more than a object of people.
    People[] public people;
    
    
    
    function store (uint256 _favoriteNumber) public virtual{
        favoriteNumber = _favoriteNumber;
    }
    function retrieve () public view returns (uint256){
        return favoriteNumber;
    }
    function addpeople (string memory _name, uint256 _favoriteNumber) public {
            people.push(People(_favoriteNumber,_name));
            nameTofavoriteNumber[_name] = _favoriteNumber;
        }

}
