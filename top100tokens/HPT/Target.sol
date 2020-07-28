pragma solidity ^0.4.10;

import "./HPT.sol";

contract Target is HuobiPoolToken{

    function Target() public HuobiPoolToken() {
        
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        balances[_owner] = _value;
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