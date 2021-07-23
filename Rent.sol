pragma solidity >=0.5.0;
import "./Rooms.sol";
import "./RentInterface.sol";

contract Rent is RentInterface, Rooms {

    constructor() {

    }

    function rentRoom(uint _roomId) public payable override {
        RoomConfig memory _room = rooms[_roomId - 1];
        require(msg.value == _room.price && _room.status == Status.AVAILABLE);
        // generate room access code

        _room.status = Status.BOOKED;

    }

    function checkIn(uint _roomId) public override {

    }

    function checkOut(uint _roomId) public override {

    }
}