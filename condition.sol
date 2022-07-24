pragma solidity ^0.8.14;

contract Condition{
    uint256 public number = 100;
    address owner;
    constructor(){
        owner = msg.sender;
    }
    function example(uint256 _x)public view returns(bool){
        if(_x < 10){
            return true;
        }
        else {
            return false;
        }
    }

    function addNumber1(uint256 _x)public{
        if(_x < 10){
            number = number + _x;
        }
        else {
            revert();
        }
    }

    function addNumber2(uint256 _x)public{
        require(_x < 10,"x > 10");
        number = number + _x;
        }
}