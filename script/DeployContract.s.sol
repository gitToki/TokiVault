// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import {Storage} from "../src/storage.sol";

contract DeployStorage is Script {
    function run() external returns(Storage) {
        vm.startBroadcast();
        Storage newStorage = new Storage();
        vm.stopBroadcast();
        return newStorage;
    }
}