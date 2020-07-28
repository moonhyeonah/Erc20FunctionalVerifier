pragma solidity ^0.4.15;

import "./MKR.sol";

contract Target is DSToken {

    function Target() public DSToken("MKR") {

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
        _approvals[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete _approvals[_owner][_spender];
        return true;
    }
}