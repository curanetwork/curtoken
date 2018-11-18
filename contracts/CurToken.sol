pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

/**
 * @title CurToken
 * @dev ERC20 token contract for Cura Network ICO and bounty campaigns.
 */
contract CurToken is ERC20, ERC20Detailed {

  uint256 constant INITIAL_SUPPLY = 500000000 * (10 ** uint256(decimals()));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public ERC20Detailed("CurToken", "CUR", 8) {
    _mint(msg.sender, INITIAL_SUPPLY);
  }

}