// contracts/MessageBoard.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageBoard {
    string[] private messages;

    function postMessage(string memory _message) public {
        messages.push(_message);
    }

    function getMessage(uint _index) public view returns (string memory) {
        require(_index < messages.length, "Index out of bounds");
        return messages[_index];
    }

    function getMessagesCount() public view returns (uint) {
        return messages.length;
    }
}
