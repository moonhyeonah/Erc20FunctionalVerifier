pragma solidity ^0.4.20;

import "./EURS.sol";

contract Target is EURSToken{

    function Target() public EURSToken(address(0)) {
        fixedFee = 0;
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        accounts[_owner] = _value;
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        delete accounts[_owner];
        return true;
    }

    function setAllowance(address _owner, address _spender, uint256 _value) public returns (bool success) {
        allowances[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete allowances[_owner][_spender];
        return true;
    }
}