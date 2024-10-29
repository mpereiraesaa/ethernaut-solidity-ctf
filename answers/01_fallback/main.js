await contract.contribute({ value: 0.0009 * 1e18 })
await contract.send(1)
await contract.withdraw()