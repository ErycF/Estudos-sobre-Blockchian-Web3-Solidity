const simpleCoin = artifacts.require('simpleCoin');

module.exports = function (deployer){
    deployer.deploy(simpleCoin);
}