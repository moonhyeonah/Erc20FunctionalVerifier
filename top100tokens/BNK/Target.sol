pragma solidity ^0.4.18;

import "./BNK.sol";

contract Target is BankeraToken{

    function Target() public BankeraToken(1, 1) {
        
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        accountBalances[_owner].addressBalance = _value;
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        delete accountBalances[_owner];
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