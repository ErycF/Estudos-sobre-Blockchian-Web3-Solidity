const simpleCoin = artifacts.require('simpleCoin');

/*  Para iniciar o testes:

    1.contract
    2.Nome do contrato
    3.Colocar as contas (No caso do ganache)

    Para escreve o teste, e com it(''):

    1.it('', () => {AQUI IRAR TER A LÓGICA})

    Agora é preciso verificar se algo é verdadeiro ultilizando o assert

    1. assert ( VERDADEIRO, FALSO)

    Agora no termminal damos um truffle test, e com o truffle test, antes tem que da um truffle migrate sempre 
    
    */
contract('simpleCoin', (accounts) => {

    var instance;

    it ('simples-Coin foi migrado.', async () => {
        
        // Aqui dentro estará a lógica do test;
        // Aqui dentro, é como se fosse no truffle console;

        let instance = await simpleCoin.deployed();

        assert (instance, 'O contrato não foi migrado.');

    })

    it('Valor inicial da variável:', async() =>{

        let valor = await instance.valor();

        assert (valor == 20000, 'Valor errado; não é 20000.');
    })

})