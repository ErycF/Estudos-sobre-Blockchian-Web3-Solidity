const ContratoPayable = artifacts.require("ContratoPayable");

module.exports = function (deployer) {
    deployer.deploy(ContratoPayable);
};