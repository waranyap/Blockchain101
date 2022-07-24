pragma solidity ^0.8.14;

contract Loop{
    function summation1(uint256 _x)public view returns(uint256){
        uint256 s;
        
        for(uint i = 1; i <= _x; i++){
            s = s+i;
        }

        return s;
    }

    function summation2(uint256 _x)public view returns(uint256){
        uint256 s;
        uint256 i = 1;
        while(i <= _x){
            s = s+i;
        }

        return s;
    }

}