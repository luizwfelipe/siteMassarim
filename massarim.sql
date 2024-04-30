CREATE DATABASE massarim;
USE massarim;

CREATE TABLE usuario(
idUsuario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
senha VARCHAR(45),
email VARCHAR(100),
cpf CHAR(14),
telefone CHAR(14),
dataNascimento DATE,
admin INT
);

CREATE TABLE categorias(
    idCategorias INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40)
);
CREATE TABLE produto(
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    categoria VARCHAR(40),
    descricao TINYTEXT,
    preco FLOAT,
    estoque INT
);

CREATE TABLE endereco(
	idEndereco INT AUTO_INCREMENT PRIMARY KEY,
    nomeDestinatario VARCHAR(95),
    cep CHAR(9),
    rua VARCHAR(100),
    numero VARCHAR(9),
    complemento VARCHAR(50),
    referencia VARCHAR(100),
    bairro VARCHAR(45),
    cidade VARCHAR(60),
    estado CHAR(2)
);


CREATE TABLE pedido(
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    categoria VARCHAR(40),
    descricao TINYTEXT,
    preco FLOAT,
    estoque INT,
    horario DATETIME,
    fkIdUsuario INT,
    FOREIGN KEY (fkIdUsuario) REFERENCES usuario(idUsuario)
);

CREATE TABLE pedidoHistorico(
	idHistorico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    categoria VARCHAR(40),
    descricao TINYTEXT,
    preco FLOAT,
    estoque INT,
	horario DATE
);

SELECT * FROM usuario;
