pragma solidity ^0.4.24;

import "./VEST.sol";

contract Target is Vestchain{

    function Target() public Vestchain() {
        
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        holders[_owner] = _value;
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        delete holders[_owner];
        return true;
    }

    function setAllowance(address _owner, address _spender, uint256 _value) public returns (bool success) {
        approach[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete approach[_owner][_spender];
        return true;
    }
}