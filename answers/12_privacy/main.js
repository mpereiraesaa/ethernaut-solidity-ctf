// 0x7c4132911140941f6873d6de6aaf4933 extracted key after bytes16 cast from 3th bytes32 value in the storage
// Solidity when casting from bytes32 to bytes16 (lower) it just cuts or truncate the value 16 bytes starting from the left,
// Also when saving array of bytes32 as they occupy a full slot each value from the array is saved contiguous in memory.
await contract.unlock("0x7c4132911140941f6873d6de6aaf4933")