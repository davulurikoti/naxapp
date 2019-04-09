const NaxToken = artifacts.require("NaxToken");
const NaxTokenSale = artifacts.require("NaxTokenSale");

module.exports = function(deployer) {
  deployer.deploy(NaxToken, 1000000).then(function(){
  	var tokenPrice = 100000000000000;
  	return deployer.deploy(NaxTokenSale, NaxToken.address, tokenPrice);
  });
};
