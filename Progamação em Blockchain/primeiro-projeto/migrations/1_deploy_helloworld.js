const Hello_World = artifacts.require("Hello_World");

module.exports = function (deployer){
    deployer.deploy(Hello_World);
};