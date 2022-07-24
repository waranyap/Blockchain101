pragma solidity ^0.8.14;

contract Enum{
    enum Days{
        sun, //0
        mon, //1
        tur,
        wed,
        thur,
        fri,
        sat //7
    }

    Days public day = Days.mon;

    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected
    }

    Status private status;
    function getStatus()public view returns(Status){
        return status;
    }
    function Ship()public{
        require(status == Status.Pending);
        status = Status.Shipped;
    }

    function Accept()public{
        require(status == Status.Shipped);
        status = Status.Accepted;
    }

    function Reject()public{
        require(status == Status.Shipped);
        status = Status.Rejected;
    }
}