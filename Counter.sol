pragma solidity ^0.6.0;

contract Counter {
    
    uint public count = 1;
    
    function increseCount() public {
        count++;
    }
}