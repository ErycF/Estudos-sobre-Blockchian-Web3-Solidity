const simplesName = artifacts.require('simplesName');

module.exports = function(deployer){
    deployer.deploy(simplesName);
};