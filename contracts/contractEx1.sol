// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Counter {
    // all the smart contract source code
    uint public count;
    
    event Increment(uint value);
    event Decrement(uint value);

    function getCount() view public returns(uint) {
        return count;
    }

    constructor() {
        count = 0;
    }

    function increment() public {
        count += 1;
        emit Increment(count);
    }

    function decrement() public {
        count -= 1;
        emit Decrement(count);
    }
}