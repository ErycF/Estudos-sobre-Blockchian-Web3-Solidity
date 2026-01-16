// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Recover{
    
    function geraHashFinal(string memory mensagem) public pure returns (bytes32){
        
        bytes32 hashInicial = keccak256(bytes(mensagem));

        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hashInicial));
    }

    function recupera(bytes32 hash, bytes1 v, bytes32 r, bytes32 s)  public pure returns (address){

        return ecrecover(hash, uint8(v), r, s);
    }
}
/*      Assinatira Digital

                                        Private Key
                                            |
    - Mensagem    ->    Hash    ->append\*x 19Ether...    -> Signature
        
    - ecrecover ([Bytes32 hash], [Bytes1 v, Bytes32 r, Bytes32 s]);
        
    - MetaMask Methods: personal_sing([conta], [hash]);
        
        - O Signature tem 65 Bytes, nós separemos a asssinatura em 3 parâmetros - r (são os primeiro 32 Bytes), s (são mias 32 Bytes), v (são os ulyimos Bytes);
    
        - r -> 3a7b9c1d5e8f2a4b6c9d1e3f7a8b2c5d
          s -> 9e1f3a6b8c2d4e7f1a9b3c6d8e2f5a7b
          v -> 9c
             


    Bits e Bytes na Computação
    
    - 1B = 8b

    - B = Byte | b = bit

    - Cada caracter A|B|C|D|E|F|G|H|I|J|... eles precisam de 1 Byte para ser expreso, armazenado. Isso é, 1 Byte para o A para o B para o C.

    - Para consegui armazena ou expresar um emoji, nós precisamos de 4 Bytes. Uma fottoo muitos Mega Bytes, audio muito Mega Bytes .

*/