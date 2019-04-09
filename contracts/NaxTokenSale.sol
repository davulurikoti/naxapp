pragma solidity ^0.5.0;
import "./NaxToken.sol";

contract NaxTokenSale{
	address admin;
	NaxToken public tokenContract;
	uint256 public tokenPrice;
	uint256 public tokensSold;
	event Sell(
	    address _buyer,
	    uint256 _amount
	   );
	constructor(NaxToken _tokenContract, uint256 _tokenPrice) public{
		admin = msg.sender;
		tokenContract = _tokenContract;
		tokenPrice = _tokenPrice;
	}
	function buyTokens(uint256 _numberOfTokens) public payable{
	    
	    tokensSold += _numberOfTokens;
	    emit Sell(msg.sender, _numberOfTokens);
	}
}