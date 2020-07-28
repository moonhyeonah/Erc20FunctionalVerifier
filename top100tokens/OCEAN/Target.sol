pragma solidity ^0.5.0;

import "./OCEAN.sol";

contract Target is OceanToken{

    constructor() public OceanToken(address(1)) {
        
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
        _allowed[_owner][_spender] = _value;
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        delete _allowed[_owner][_spender];
        return true;
    }
}