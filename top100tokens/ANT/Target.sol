pragma solidity ^0.4.8;

import "./ANT.sol";

contract Target is ANT{

    function Target() public ANT(address(0)) {
        
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        updateValueAtNow(balances[_owner],_value);
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        delete balances[_owner];
        return true;
    }

    function setAllowance(address _owner, address _spender, uint256 _value) public returns (bool success) {
        allowed[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete allowed[_owner][_spender];
        return true;
    }
}