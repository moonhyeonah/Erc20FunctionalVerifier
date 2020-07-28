pragma solidity ^0.4.13;

import "./CRO.sol";

contract Target is CroToken {

    function Target() public CroToken ("CroToken", "CRO", 0, 8, true, 0x0, 0x0, 0x0, 0x0, 0x0) {
        released = true;        
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