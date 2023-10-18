// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";

contract ZuniswapV2Pair is ERC20 {
    uint256 constant MINIMUM_LIQUIDITY = 1000;

    address public token0;
    uint256 private reserve0;

    address public token1;
    uint256 private reserve1;

    constructor(address token0_, address token1_) ERC20("ZuniswapV2 Pair", "ZUNIV2", 18) {
        token0 = token0_;
        token1 = token1_;
    }
}
