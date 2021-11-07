const SoluMarketPlace = artifacts.require("NFTMarketPlace");

const SoluToken = artifacts.require("YourToken");

const SoluNFT = artifacts.require("NFTToken");



module.exports = function (deployer) {
  deployer.deploy(SoluMarketPlace,SoluToken.address,SoluNFT.address);
};
