pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BHARATH is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BHARATH(address _owner)  UpgradeableToken(_owner) {
    name = "BHARATH";
    symbol = "BHAR";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}