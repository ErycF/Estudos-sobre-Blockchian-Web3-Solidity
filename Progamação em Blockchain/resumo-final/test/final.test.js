const resumo_final = artifacts.require('resumo_final');

contract ('resumo_final', (accounts) => {

    let instance;

    it ('resumo_final', async () => {
        
        instance = await resumo_final.deployed();

        assert (instance, 'Contrato não implementado.');

    })

    it ('resumo_final', async () => {
        
        instance = await resumo_final.deployed();

        let name = await instance.name();

        assert (name == '', 'Nome não achado.');

    })

    it ('resumo_final', async () => {
        
        instance = await resumo_final.deployed();

        let age = await instance.age();

        assert (age, 'Idade não colocada.');
    })
})