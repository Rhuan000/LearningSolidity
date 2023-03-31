//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./1_Storage.sol";

// creating a contract child that is inheritance all the things of the contract mother.
contract Extrastorage is Simplestorage{
    //i'm telling the function that i will change the original function(original function must have "virutal" parameter, and the child function must have "override")  
    function store(uint256 _favoriteNumber) public override{
        favoriteNumber = _favoriteNumber + 5;
    }
}