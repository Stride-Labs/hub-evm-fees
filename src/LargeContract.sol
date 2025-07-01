// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract LargeContract is OwnableUpgradeable, UUPSUpgradeable {
    uint256 public number;

    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(msg.sender);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
