var Migrations = artifacts.require("./Migrations.sol");
const IDMS = artifacts.require("./IDMS.sol");
module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(IDMS)
};
