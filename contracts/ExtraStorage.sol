// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";


contract ExtraStorage is SimpleStorage {

    function store (uint _simpleStorageNum) public override {
        favouriteNumber = _simpleStorageNum + 5;
    }

}