// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title ANAC Smart Contract
 * @dev Gerencia a idade de um passageiro e classifica conforme regras da ANAC.
 */
contract Anac {
    address public owner; // Endereço do dono do contrato
    uint256 private idade = 18; // Idade padrão inicial de 18 anos

    /**
     * @dev Define o dono do contrato como quem o implanta.
     */
    constructor() {
        owner = msg.sender;
    }

    /**
     * @dev Modificador para restringir função ao dono do contrato.
     */
    modifier onlyOwner() {
        require(msg.sender == owner, "Apenas o dono pode alterar a idade");
        _;
    }

    /**
     * @dev Define a idade do passageiro (somente pelo dono do contrato).
     * @param _idade Nova idade a ser definida.
     */
    function setIdade(uint256 _idade) public onlyOwner {
        idade = _idade;
    }

    /**
     * @dev Retorna a idade do passageiro.
     */
    function getIdade() public view returns (uint256) {
        return idade;
    }

    /**
     * @dev Retorna a categoria do passageiro conforme regras da ANAC.
     */
    function getCategoria() public view returns (string memory) {
        if (idade >= 18) {
            return "Adulto brasileiro";
        } else {
            return "Crianca ou adolescente brasileiro";
        }
    }
}
