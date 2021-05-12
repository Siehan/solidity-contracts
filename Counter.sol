// SPDX-License-Identifier: MIT
// Contrat 1 :0x95CdD85D7E4e8bF4335B4bD2B4434E7C44f83B78
// Contrat 2: 0x5614cf65c98DeBf5F420514f608D0E114EeeFC1A

pragma solidity ^0.8.0;

contract Counter {
    address private _owner;
    uint256 private _counter;
    uint256 private _step;
    address private Sylvie = 0x5614cf65c98DeBf5F420514f608D0E114EeeFC1A;

    constructor(uint256 step_) {
        _owner = msg.sender;
        _step = step_;
    }

    function increment() public {
        require(
            msg.sender == _owner,
            "Counter: Only owner can increment counter"
        );
        _counter += _step;
    }

    function reset() public {
        require(msg.sender == _owner, "Counter: Only owner can reset counter");
        _counter = 0;
    }

    function owner() public view returns (address) {
        return _owner;
    }

    function counter() public view returns (uint256) {
        return _counter;
    }

    function step() public view returns (uint256) {
        return _step;
    }
}
