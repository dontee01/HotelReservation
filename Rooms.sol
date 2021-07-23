pragma solidity >=0.5.0;

contract Rooms {
    enum Status {
        AVAILABLE,
        BOOKED
    }
    struct RoomConfig {
        string name;
        uint price;
        Status status;
    }
    address public owner;
    // RoomsConfig[] public rooms;
    mapping(uint => RoomConfig) public rooms;
    uint public roomsCount;

    constructor() {
        roomsCount = 0;
    }

    function addRoom(string memory _name, uint _price) public {
        rooms[roomsCount] = RoomConfig(_name, _price, Status.AVAILABLE);
    }

    function updateRoom(string memory _name, uint _roomNumber) public {
        require (_roomNumber > 0);
        RoomConfig memory _rooms = rooms[_roomNumber - 1];
        _rooms.name = _name;
        rooms[_roomNumber - 1] = _rooms;
    }

    function updateRoom(uint _price, uint _roomNumber) public {
        require(_roomNumber > 0);
        RoomConfig memory _rooms = rooms[_roomNumber - 1];
        _rooms.price = _price;
        rooms[_roomNumber - 1] = _rooms;
    }

}