pragma solidity ^0.5.0;

import "./HUSD.sol";

contract Target is HUSDToken{

    constructor() public HUSDToken("HUSDToken", "HUSD", 18) {
        
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        _balances[_owner] = _value;
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        delete _balances[_owner];
        return true;
    }

    function setAllowance(address _owner, address _spender, uint256 _value) public returns (bool success) {
        _allowances[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete _allowances[_owner][_spender];
        return true;
    }
}