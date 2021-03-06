pragma solidity ^0.4.15;

import "./ENJ.sol";

contract Target is ENJToken{

    function Target() public ENJToken(0x0, 0x0, 0x0, 0x0) {
        
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        balanceOf[_owner] = _value;
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        delete balanceOf[_owner];
        return true;
    }

    function setAllowance(address _owner, address _spender, uint256 _value) public returns (bool success) {
        allowance[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete allowance[_owner][_spender];
        return true;
    }
}