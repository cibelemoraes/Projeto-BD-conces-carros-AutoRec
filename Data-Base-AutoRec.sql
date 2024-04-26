CREATE DATABASE AutoRec;

USE AutoRec;

CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Endereco VARCHAR(200),
    Telefone VARCHAR(15),
    Email VARCHAR(100),
    PRIMARY KEY (ID)
);

CREATE TABLE Funcionarios (
    ID INT AUTO_INCREMENT,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Salario DECIMAL(10,2),
    DataContratacao DATE,
    PRIMARY KEY (ID)
);

CREATE TABLE Carros (
    ID INT AUTO_INCREMENT,
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Ano YEAR,
    Preco DECIMAL(10,2),
    Status ENUM('Disponivel', 'Alugado', 'Manutencao'),
    PRIMARY KEY (ID)
);

CREATE TABLE Locacoes (
    ID INT AUTO_INCREMENT,
    ClienteID INT,
    CarroID INT,
    DataInicio DATE,
    DataFim DATE,
    PrecoTotal DECIMAL(10,2),
    PRIMARY KEY (ID),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID),
    FOREIGN KEY (CarroID) REFERENCES Carros(ID)
);

CREATE TABLE PrecosPorAno (
    Ano YEAR,
    Preco DECIMAL(10,2),
    PRIMARY KEY (Ano)
);

CREATE TABLE Vendas (
    ID INT AUTO_INCREMENT,
    FuncionarioID INT,
    LocacaoID INT,
    PRIMARY KEY (ID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(ID),
    FOREIGN KEY (LocacaoID) REFERENCES Locacoes(ID)
);
