// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract BitwiseYul {
    uint256 public x;
    
    function processX(uint256 _x) external {
        assembly {
            let mask_de := 0xde00000000000000000000000000000000000000000000000000000000000000
            let mask_be := 0xbe00000000000000000000000000000000000000000000000000000000000000
            let result := and(_x, mask_de)
            if eq(result, mask_de) {
                result := shl(2, _x)
            }
            result := and(_x, mask_be)
            if eq(result, mask_be) {
                result := shr(2, _x)
            }
            sstore(0, result)
        }
    }
}
