const SoluNFT = artifacts.require("NFTToken");

module.exports = function (deployer) {
  deployer.deploy(SoluNFT);
};
