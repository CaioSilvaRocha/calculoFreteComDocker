DROP TABLE IF EXISTS `contas_usuarios`;

CREATE TABLE `contas_usuarios` (
    `idContaUsuario` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(100) NOT NULL,
    `cpf` VARCHAR(14) NOT NULL, 
    `email` VARCHAR(100) NOT NULL,
    `nomeUsuario` VARCHAR(30) NOT NULL,
    `senha` VARCHAR(1000) NOT NULL,
    PRIMARY KEY (`idContaUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; 

DROP TABLE IF EXISTS `historicos_calculos_fretes`;

CREATE TABLE `historicos_calculos_fretes` (
    `idHistoricoCalculoFrete` INT NOT NULL AUTO_INCREMENT,
    `idContaUsuario` INT NOT NULL,
    `localOrigem` VARCHAR(300) NOT NULL,
    `localDestino` VARCHAR(300) NOT NULL,
    `distanciaLocalidades` VARCHAR(100) NOT NULL, 
    `consumoAutomovel` FLOAT NOT NULL,
    `precoCombustivel` FLOAT NOT NULL,
    `valorLucro` FLOAT NOT NULL,
    `descricaoLucro` VARCHAR(1000),
    `valorViagem` FLOAT NOT NULL,
    PRIMARY KEY (`idHistoricoCalculoFrete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;