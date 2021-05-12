// SPDX-License-Identifier: MIT
// ABI : 0x834cfc560E5355237f41F9c0a596fBceCCcCB416

pragma solidity ^0.8.0;

contract Calculator {
    function add(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 + nb2;
    }

    function mul(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 * nb2;
    }

    function div(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        require(nb2 != 0, "Calculator can not divide digit 0");
        return nb1 / nb2;
    }

    function sub(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 - nb2;
    }

    function modulo(uint256 nb1, uint256 nb2) public pure returns (uint256) {
        return nb1 % nb2;
    }
}
