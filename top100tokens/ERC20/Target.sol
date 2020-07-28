pragma solidity ^0.4.16;

import "./ERC20.sol";

contract Target is TokenERC20{

    function Target() public TokenERC20(10000, "ERC20", "ERC20") {
        
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