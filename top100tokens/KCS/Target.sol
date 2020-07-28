pragma solidity ^0.4.13;

import "./KCS.sol";

contract Target is MyToken{

    function Target() public MyToken(0, "KuCoin Shares", 18, "KCS") {
        
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