pragma solidity ^0.4.23;

import "./TUSD.sol";

contract Target is TrueUSD{

    constructor () public TrueUSD() {
        
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        _balanceOf[_owner] = _value;
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        delete _balanceOf[_owner];
        return true;
    }

    function setAllowance(address _owner, address _spender, uint256 _value) public returns (bool success) {
        _allowance[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete _allowance[_owner][_spender];
        return true;
    }
}