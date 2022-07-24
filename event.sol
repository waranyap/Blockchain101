pragma solidity ^0.8.14;

contract Event{
    uint256 public value = 0;

    event Increment(address adcontract, address owner, uint a, uint b);
    event LogString(string s);

    function eventString(string memory _string)public{
        emit LogString(_string);
    }

    function getValue(uint _a, uint _b)public{
        emit Increment(address(this), msg.sender, _a, _b);
        value = _a + _b;
    }

}