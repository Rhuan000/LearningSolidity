//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./1_Storage.sol";

contract StorageFactory {
    //Simplestorage (its specifying that is a contract)
    Simplestorage[] public arraystorage;
    
    function camaker() public {
    //Create a new contract and put in Simplestorage[]
        Simplestorage ncontract = new Simplestorage();
        arraystorage.push(ncontract);
    }
    
    function stofac(uint256 _index, uint256 _simplestoragenumber) public {
    //This create a new favorite number to a contract index armazaned in array.
        Simplestorage storage_contract = arraystorage[_index];
        storage_contract.store(_simplestoragenumber);
    }
    
    function rfavorite_number(uint256 _index) public view returns(uint256){
        return arraystorage[_index].retrieve();
        
    }
}