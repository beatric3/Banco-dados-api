CREATE DATABASE usuarios_cadastrados;
USE usuarios_cadastrados;
CREATE TABLE usuarios (
    id VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(255),
    idade INT,
    email VARCHAR(255),
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    data_cadastro DATE,
    ativo ENUM('sim', 'não'),
    salario DECIMAL(10, 2)
);
INSERT INTO usuarios (id, nome, idade, email, telefone, endereco, data_cadastro, ativo, salario)
VALUES
('1', 'Ana Souza', 24, 'ana.souza@email.com', '+55(11)98765-4321', 'Rua A, 123', '2023-10-15', 'sim', 4500.50),
('2', 'Carlos Pereira', 30, 'carlos.pereira@dominio.com', '+55(11)98765-4321', 'Não informado', '2021-02-28', 'sim', 4000.00),
('3', 'Bianca', 29, 'bianca@example.com', 'Não informado', 'Rua B, 45', '2022-06-15', 'não', 3200.00),
('4', 'Lucas Oliveira', 30, 'lucas.oliveira@site.com', '+55(11)98765-4321', 'Av. Principal, 999', '2020-12-31', 'sim', 5000.00),
('5', 'Maria Fernanda', 25, 'maria@example.com', '+55(98)8765-4321', 'Rua C, 67', '2023-08-09', 'sim', 4000.00),
('6', 'Pedro Martins', 22, 'pedro.martins@email.com', '+55(98)532-0000', 'Estrada Velha, km 45', '2024-04-01', 'sim', 0.00);
SELECT * FROM usuarios;

DELETE FROM usuarios WHERE id = '6';
DROP DATABASE usuarios;
DROP TABLE usuarios;