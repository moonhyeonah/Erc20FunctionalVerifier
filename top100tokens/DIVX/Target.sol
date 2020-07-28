pragma solidity ^0.4.11;

import "./DIVX.sol";

contract Target is DIVXToken{

    function Target() public DIVXToken(address(1),0,0,0,0,0) {
        totalReceivedWei = 5 * (10**3) * 10**decimals;
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