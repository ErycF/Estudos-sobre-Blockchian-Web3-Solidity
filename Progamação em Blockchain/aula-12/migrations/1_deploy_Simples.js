const simples = artifacts.require('simples');

module.exports =  function (deployer){
    deployer.deploy(simples);
};