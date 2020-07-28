pragma solidity ^0.4.11;

import "./VEN.sol";

contract Target is VEN{

    function Target() public VEN() {
        owner = 0; // require(isSealed());        
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        accounts[_owner].balance = (uint112)(_value);
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        delete accounts[_owner];
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