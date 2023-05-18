// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract Bitwise {
    uint256 x;
    uint256 internal constant de = 0xde00000000000000000000000000000000000000000000000000000000000000;
    uint256 internal constant be = 0xbe00000000000000000000000000000000000000000000000000000000000000;

    function processX(uint256 _x) external {
        if (de == (_x & de))
            x = _x * 4;
        if (be == (_x & be))
            x = _x / 4;
    }
}
