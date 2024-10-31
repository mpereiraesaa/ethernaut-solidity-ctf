// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "../../lib/forge-std/src/Test.sol";
import "../../lib/forge-std/src/console.sol";
import "./GatekeeperOne.sol";
import "./solution.sol";

contract GatekeeperTest is Test {
    GatekeeperOne public myContract;
    MySolution public mySolution;

    function setUp() public {
        myContract = new GatekeeperOne();
        mySolution = new MySolution();
    }

    function test() public {
        for (uint i = 265; i < 266; i++) {
            (bool success, ) = address(mySolution).call(
                abi.encodeWithSignature("run(uint256)", i)
            );
            if (success) {
                console.log("All gates are open! magic value for gas increase is %s", i);
                break;
            }
        }
    }
}
