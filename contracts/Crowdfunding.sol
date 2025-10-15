// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    string public name;
    string public desription;
    uint256 public goal;
    uint256 public deadline;
    address public owner;

    constructor(
        string memory _name,
        string memory _description,
        uint _goal,
        uint256 _durationInDays
    ){
        name = _name;
        description = _description;
        goal = _goal;
        deadline = block.timestamp + (_durationInDays * 1 days);
        owner = msg.sender;
    }
}