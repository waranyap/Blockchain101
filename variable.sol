pragma solidity ^0.8.14;

contract Variables{
    bool public a; //false
    uint256 public b; //0
    int public c; //0
    address public d; //0x000000 ตามขนาด
    bytes public e; //0x
    bytes32 public f; //0x000000 ตามขนาด
    
    uint x = 10;
    string txt = "join";
    address addr = msg.sender; //กระเป๋าคนที่กด transaction กระเป๋าaccount ของเรา

    function getX()public view returns(uint){
        return x;
    }

        function getTxt()public view returns(string memory){
        return txt;
    }
        function getAddr()public view returns(address){
        return addr;
    }
        function getAddress()public view returns(address){
        return msg.sender;
    }
}
    