# Ethernaut Contract Solutions with Foundry

This project provides solutions for the Ethernaut challenges using Foundry, a powerful toolkit for Ethereum smart contract development. Foundry enables efficient building, deploying, and testing of contract solutions.

## Introduction

Ethernaut is a series of Web3/Solidity challenges designed to teach and test smart contract security skills. This project uses Foundry to streamline the development and deployment of solutions for these challenges.

- **Foundry**: Follow the installation instructions on the [Foundry GitHub repository](https://github.com/foundry-rs/foundry)

## Installation

Clone the repository and navigate to the project directory:

   ```bash
   git clone https://github.com/yourusername/ethernaut-solutions.git
   cd ethernaut-solutions
   ```

## Usage
Deploy contracts using Foundry's forge create command, which allows for individual deployment of contract solutions as needed.

Most solutions that involve a `main.js` are expected to be ran using the browser dev tools console. I just have to copy each line 1 by 1 into the console.

## Project Structure
contracts/: Contains Solidity contracts for each Ethernaut level.
lib/forge-std/: Includes the Forge Standard Library for enhanced development capabilities.
foundry.toml: Configuration file for Foundry.

## License
This project is licensed under the MIT License - see the LICENSE file for details.