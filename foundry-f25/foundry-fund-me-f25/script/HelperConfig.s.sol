// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";

contract HelperConfig /*is Script*/ {
    constructor() {
        if(block.chainid == 11155111){
            activeNetworkConfig = getSepoliaEthConfig();
        } else if(block.chainid == 1) {
            activeNetworkConfig = getMainnetEthConfig();
        }
    }

    struct NetworkConfig {
        address priceFeed; // ETH/USD price feed address
    }

    NetworkConfig public activeNetworkConfig;

    // for Sepolia Chain
    function getSepoliaEthConfig() public pure returns (NetworkConfig memory){
        NetworkConfig memory sepoliaConfig = NetworkConfig({
            priceFeed : 0x694AA1769357215DE4FAC081bf1f309aDC325306
        });
        return sepoliaConfig;
    }

    // for Mainnet Chain
    function getMainnetEthConfig() public pure returns (NetworkConfig memory){
        NetworkConfig memory mainnetConfig = NetworkConfig({
            priceFeed : 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        });
        return mainnetConfig;
    }

    function getAnvilEthConfig() public pure returns (NetworkConfig memory){

    }
}