const CurToken = artifacts.require("./CurToken.sol");

module.exports = function(deployer) {
  deployer.deploy(CurToken);
};
