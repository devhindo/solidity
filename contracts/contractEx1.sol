// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


contract Counter {
    // all the smart contract source code
    uint count;
    
    event Increment(uint value);
    event Decrement(uint value);

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