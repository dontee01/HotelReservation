pragma solidity >=0.5.0;

interface RentInterface {

    function rentRoom(uint roomId) external payable;
    function checkIn(uint roomId) external;
    function checkOut(uint roomId) external;

}