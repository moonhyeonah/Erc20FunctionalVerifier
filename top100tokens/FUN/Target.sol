pragma solidity ^0.4.11;

import "./FUN.sol";

contract Target is Token{

    Controller controller = new Controller();
    Ledger ledger = new Ledger();

    function Target() public Token() {
        setController(controller);
	controller.setToken(address(this));
	controller.setLedger(ledger);
	ledger.setController(controller);
    }
    
    function setBalance(address _owner, uint256 _value) public returns (bool success) {
        Ledger(ledger).setBalance(_owner, _value);
        return true;
    }
    
    function unsetBalance(address _owner) public returns (bool success) {
        Ledger(ledger).unsetBalance(_owner);
        return true;
    }

    function setAllowance(address _owner, address _spender, uint256 _value) public returns (bool success) {
        Ledger(ledger).setAllowance(_owner,_spender,_value);
        return true;
    }

    function unsetAllowance(address _owner, address _spender) public returns (bool success) {
        Ledger(ledger).unsetAllowance(_owner,_spender);
        return true;
    }
}