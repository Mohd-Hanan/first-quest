// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FitQuestToken is ERC20 {
    address public admin;

    constructor() ERC20("FitQuest", "FTQ") {
        admin = msg.sender;
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function reward(address to, uint amount) external {
        require(msg.sender == admin, "Only admin can reward");
        _mint(to, amount);
    }
}
