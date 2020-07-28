pragma solidity ^0.4.11;

import "./NMR.sol";

contract Target is NumeraireBackend{

    address[] tmp;
    
    function Target() public NumeraireBackend(tmp, 0, 0) {
        
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