// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./GatekeeperOne.sol";

contract MySolution {
  GatekeeperOne immutable myContract = new GatekeeperOne();

  function run(uint256 gas) external {
    /*
    * tx.origin being the transaction signer address.
    * Requirements for the key:
      * require(uint32(uint64(_gateKey)) == uint16(uint64(_gateKey))
      * require(uint32(uint64(_gateKey)) != uint64(_gateKey)
      * require(uint32(uint64(_gateKey)) == uint16(uint160(tx.origin))
    * when casting integers from a larger size to a lower size, The conversion keeps the 
    * rightmost part of the number (least significant bits) and truncates the rest.
    * The opposite happens when casting a larger bytesN array to a lower size byte array, keeping 
    * the leftmost part of the bytes
    */
    bytes8 _gateKey = bytes8(uint64(3 << 61) + uint64(uint16(uint160(tx.origin))));
    uint256 _gas = 8191 * 10 + gas;

    require(myContract.enter{ gas: _gas }(_gateKey), "Cannot enter");
  }
}
