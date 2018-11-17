pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

/**
 * @title CurToken
 * @dev The decimals are only for visualization purposes.
 * All the operations are done using the smallest and indivisible token unit,
 * just as on Ethereum all the operations are done in wei.
 */
contract CurToken is ERC20 {
  string private _name;
  string private _symbol;
  uint8 private _decimals;

  constructor() public {
    _name = "CurToken";
    _symbol = "CUR";
    _decimals = 8;
    balances[msg.sender] = 500000000 * (10 ** uint256(_decimals));
    totalSupply = 500000000 * (10 ** uint256(_decimals));
  }

  /**
   * @return the name of the token.
   */
  function name() public view returns(string) {
    return _name;
  }

  /**
   * @return the symbol of the token.
   */
  function symbol() public view returns(string) {
    return _symbol;
  }

  /**
   * @return the number of decimals of the token.
   */
  function decimals() public view returns(uint8) {
    return _decimals;
  }
}
