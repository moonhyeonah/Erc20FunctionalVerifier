pragma solidity ^0.4.24;

import "./OKB.sol";

contract Target is OKBImplementation {

    constructor () public OKBImplementation() {
        unpause();
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
        _allowed[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete _allowed[_owner][_spender];
        return true;
    }
}