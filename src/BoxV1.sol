//SPDX-License-Identifier: MIT

// Layout of Contract:
// version
// imports
// interfaces, libraries, contracts
// Type declarations
// errors
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

pragma solidity ^0.8.24;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract BoxV1 is Initializable, UUPSUpgradeable, OwnableUpgradeable {
    // ERRORS

    // STATE VARIABLES
    uint256 internal number;

    // EVENTS

    // MODIFIERS

    // FUNCTIONS
    constructor() {
        _disableInitializers();
    }

    // EXTERNAL FUNCTIONS
    function getNumber() external view returns (uint256) {
        return number;
    }

    function getVersion() external pure returns (uint256) {
        return 1;
    }
    // PUBLIC FUNCTIONS

    function initialize() public initializer {
        __Ownable_init(msg.sender); // sets owner to msg.sender
        __UUPSUpgradeable_init();
    }

    // INTERNAL FUNCTIONS
    function _authorizeUpgrade(address newImplementation) internal override {}

    // PRIVATE FUNCTIONS

    // VIEW AND PURE FUNCTION
}
