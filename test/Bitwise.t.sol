// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Bitwise.sol";
import {console} from "forge-std/console.sol";

contract BitwiseTest is Test {
    
    uint256 internal constant beValue = 86177475670493197073919501659849812897660611100807883281033508768520888346190;
uint256 internal constant deValue = 100651486825157721501865874785935801379319359184012953785965706769510029551182;
    Bitwise public bitwise;

    function setUp() public {
        bitwise = new Bitwise();
    }

    function testMultiply() public {
        vm.expectRevert(stdError.arithmeticError);
        bitwise.processX(deValue);
    }

    function testDivide() public {
        bitwise.processX(beValue);
        //console.log("the X value is", bitwise.x());
        assertEq(bitwise.x(), 21544368917623299268479875414962453224415152775201970820258377192130222086547);
    }
}
