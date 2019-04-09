const NaxToken = artifacts.require("NaxToken");

module.exports = function(deployer) {
  deployer.deploy(NaxToken, 1000000);
};
