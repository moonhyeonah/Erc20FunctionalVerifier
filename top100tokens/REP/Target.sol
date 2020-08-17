pragma solidity 0.4.20;

import "./REP.sol";

contract TestAugur is IAugur{
    function createChildUniverse(bytes32 _parentPayoutDistributionHash, uint256[] _parentPayoutNumerators, bool _parentInvalid) public returns (IUniverse) { return; }
    function isKnownUniverse(IUniverse _universe) public view returns (bool) { return true; }
    function trustedTransfer(ERC20 _token, address _from, address _to, uint256 _amount) public returns (bool){ return true; }
    function logMarketCreated(bytes32 _topic, string _description, string _extraInfo, IUniverse _universe, address _market, address _marketCreator, bytes32[] _outcomes, int256 _minPrice, int256 _maxPrice, IMarket.MarketType _marketType) public returns (bool){ return true; }
    function logMarketCreated(bytes32 _topic, string _description, string _extraInfo, IUniverse _universe, address _market, address _marketCreator, int256 _minPrice, int256 _maxPrice, IMarket.MarketType _marketType) public returns (bool){ return true; }
    function logInitialReportSubmitted(IUniverse _universe, address _reporter, address _market, uint256 _amountStaked, bool _isDesignatedReporter, uint256[] _payoutNumerators, bool _invalid) public returns (bool){ return true; }
    function disputeCrowdsourcerCreated(IUniverse _universe, address _market, address _disputeCrowdsourcer, uint256[] _payoutNumerators, uint256 _size, bool _invalid) public returns (bool){ return true; }
    function logDisputeCrowdsourcerContribution(IUniverse _universe, address _reporter, address _market, address _disputeCrowdsourcer, uint256 _amountStaked) public returns (bool){ return true; }
    function logDisputeCrowdsourcerCompleted(IUniverse _universe, address _market, address _disputeCrowdsourcer) public returns (bool){ return true; }
    function logInitialReporterRedeemed(IUniverse _universe, address _reporter, address _market, uint256 _amountRedeemed, uint256 _repReceived, uint256 _reportingFeesReceived, uint256[] _payoutNumerators) public returns (bool){ return true; }
    function logDisputeCrowdsourcerRedeemed(IUniverse _universe, address _reporter, address _market, uint256 _amountRedeemed, uint256 _repReceived, uint256 _reportingFeesReceived, uint256[] _payoutNumerators) public returns (bool){ return true; }
    function logFeeWindowRedeemed(IUniverse _universe, address _reporter, uint256 _amountRedeemed, uint256 _reportingFeesReceived) public returns (bool){ return true; }
    function logMarketFinalized(IUniverse _universe) public returns (bool){ return true; }
    function logMarketMigrated(IMarket _market, IUniverse _originalUniverse) public returns (bool){ return true; }
    function logReportingParticipantDisavowed(IUniverse _universe, IMarket _market) public returns (bool){ return true; }
    function logMarketParticipantsDisavowed(IUniverse _universe) public returns (bool){ return true; }
    function logOrderCanceled(IUniverse _universe, address _shareToken, address _sender, bytes32 _orderId, Order.Types _orderType, uint256 _tokenRefund, uint256 _sharesRefund) public returns (bool){ return true; }
    function logOrderCreated(Order.Types _orderType, uint256 _amount, uint256 _price, address _creator, uint256 _moneyEscrowed, uint256 _sharesEscrowed, bytes32 _tradeGroupId, bytes32 _orderId, IUniverse _universe, address _shareToken) public returns (bool){ return true; }
    function logOrderFilled(IUniverse _universe, address _shareToken, address _filler, bytes32 _orderId, uint256 _numCreatorShares, uint256 _numCreatorTokens, uint256 _numFillerShares, uint256 _numFillerTokens, uint256 _marketCreatorFees, uint256 _reporterFees, uint256 _amountFilled, bytes32 _tradeGroupId) public returns (bool){ return true; }
    function logCompleteSetsPurchased(IUniverse _universe, IMarket _market, address _account, uint256 _numCompleteSets) public returns (bool){ return true; }
    function logCompleteSetsSold(IUniverse _universe, IMarket _market, address _account, uint256 _numCompleteSets) public returns (bool){ return true; }
    function logTradingProceedsClaimed(IUniverse _universe, address _shareToken, address _sender, address _market, uint256 _numShares, uint256 _numPayoutTokens, uint256 _finalTokenBalance) public returns (bool){ return true; }
    function logUniverseForked() public returns (bool){ return true; }
    function logFeeWindowTransferred(IUniverse _universe, address _from, address _to, uint256 _value) public returns (bool){ return true; }

    function logReputationTokensTransferred(IUniverse _universe, address _from, address _to, uint256 _value) public returns (bool){
	return true;
    }

    function logDisputeCrowdsourcerTokensTransferred(IUniverse _universe, address _from, address _to, uint256 _value) public returns (bool){ return true; }
    function logShareTokensTransferred(IUniverse _universe, address _from, address _to, uint256 _value) public returns (bool){ return true; }
    function logReputationTokenBurned(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logReputationTokenMinted(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logShareTokenBurned(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logShareTokenMinted(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logFeeWindowBurned(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logFeeWindowMinted(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logDisputeCrowdsourcerTokensBurned(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logDisputeCrowdsourcerTokensMinted(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logFeeWindowCreated(IFeeWindow _feeWindow, uint256 _id) public returns (bool){ return true; }
    function logFeeTokenTransferred(IUniverse _universe, address _from, address _to, uint256 _value) public returns (bool){ return true; }
    function logFeeTokenBurned(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logFeeTokenMinted(IUniverse _universe, address _target, uint256 _amount) public returns (bool){ return true; }
    function logTimestampSet(uint256 _newTimestamp) public returns (bool){ return true; }
    function logInitialReporterTransferred(IUniverse _universe, IMarket _market, address _from, address _to) public returns (bool){ return true; }
    function logMarketTransferred(IUniverse _universe, address _from, address _to) public returns (bool){ return true; }
    function logMarketMailboxTransferred(IUniverse _universe, IMarket _market, address _from, address _to) public returns (bool){ return true; }
    function logEscapeHatchChanged(bool _isOn) public returns (bool){ return true; }
}

contract TestController is IController {
    function assertIsWhitelisted(address _target) public view returns(bool){ return true; }
    function lookup(bytes32 _key) public view returns(address){ return; }
    function stopInEmergency() public view returns(bool){ return true; }
    function onlyInEmergency() public view returns(bool){ return true; }

    function getAugur() public view returns (IAugur){
	TestAugur augur = new TestAugur();
	return augur;
    }

    function getTimestamp() public view returns (uint256){ return; }
}

contract Target is ReputationToken{

    TestController testcontroller = new TestController();

    function Target() public ReputationToken() {
	setController(testcontroller);                
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