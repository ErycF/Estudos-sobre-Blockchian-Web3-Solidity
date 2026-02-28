const resumo_final = artifacts.require('resumo_final');

module.exports = function(deployer){
    deployer.deploy(resumo_final);
}