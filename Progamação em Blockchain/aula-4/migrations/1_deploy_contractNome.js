const Nome = artifacts.require("Nome");

module.exports = function (deployer) {
    deployer.deploy(Nome);
};