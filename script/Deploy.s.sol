// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {LargeContract} from "../src/LargeContract.sol";

contract Deploy is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        address contract1 = address(new LargeContract());
        address contract2 = address(new LargeContract());
        address contract3 = address(new LargeContract());

        console.log(contract1);
        console.log(contract2);
        console.log(contract3);

        vm.stopBroadcast();
    }
}
