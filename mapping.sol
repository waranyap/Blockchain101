pragma solidity ^0.8.14;

contract Mapping{
    mapping(uint=>string) public project;
    //[0,1,2,...]
    uint public count;

    function addProject(string memory _nameProject)public{
        project[count] = _nameProject;
        count += 1;
    }

    mapping(address=>uint) public balances;
    function addBalance(address _addr, uint _i)public{
        balances[_addr] = _i;
    }
}