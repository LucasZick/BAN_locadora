CREATE DATABASE IF NOT EXISTS Locadora;

USE Locadora;

CREATE TABLE IF NOT EXISTS Filial(
	cdFilial INT NOT NULL,
    endereco VARCHAR(50),
    PRIMARY KEY (cdFilial)
);

CREATE TABLE IF NOT EXISTS Pessoa(
	cdPessoa INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(50),
    PRIMARY KEY (cdPessoa)
);

CREATE TABLE IF NOT EXISTS PessoaJuridica(
	CNPJ INT NOT NULL,
	cdPessoa INT NOT NULL,
    PRIMARY KEY (CNPJ),
    FOREIGN KEY (cdPessoa) REFERENCES Pessoa(cdPessoa)
);

CREATE TABLE IF NOT EXISTS PessoaFisica(
	CPF INT NOT NULL,
	cdPessoa INT NOT NULL,
    dtNascimento DATE NOT NULL,
    sexo VARCHAR(20),
    PRIMARY KEY (CPF),
    FOREIGN KEY (cdPessoa) REFERENCES Pessoa(cdPessoa)
);

CREATE TABLE IF NOT EXISTS TipoVeiculo(
	tipo VARCHAR(2) NOT NULL,
	tempoManutencao INT,
    PRIMARY KEY (tipo)
);

CREATE TABLE IF NOT EXISTS Veiculo(
	placa VARCHAR(8) NOT NULL,
    tipo VARCHAR(2) NOT NULL,
    cdChassi INT NOT NULL,
    cdMotor INT NOT NULL,
    cor VARCHAR(15),
    quilometragem INT,
    mediaKmDia INT,
    PRIMARY KEY (placa),
    FOREIGN KEY (tipo) REFERENCES TipoVeiculo(tipo)
);

CREATE TABLE IF NOT EXISTS VeiculoCarga(
	tipo VARCHAR(2) NOT NULL,
	capacidade INT,
    PRIMARY KEY (tipo),
    FOREIGN KEY (tipo) REFERENCES TipoVeiculo(tipo)
);

CREATE TABLE IF NOT EXISTS VeiculoPassageiros(
	tipo VARCHAR(2) NOT NULL,
	tamanho VARCHAR(15),
    passageiros INT,
    portas INT,
    arCondicionado BOOLEAN,
    radio BOOLEAN,
    tocaFitas BOOLEAN,
    CD BOOLEAN,
    direcaoHidraulica BOOLEAN,
    cambioAutomatico BOOLEAN,
    PRIMARY KEY (tipo),
    FOREIGN KEY (tipo) REFERENCES TipoVeiculo(tipo)
);

CREATE TABLE IF NOT EXISTS Revisao(
	cdRevisao INT NOT NULL,
    placa VARCHAR(8) NOT NULL,
    dia DATE NOT NULL,
    aprovado BOOLEAN,
    detalhes VARCHAR(200),
    PRIMARY KEY (cdRevisao),
    FOREIGN KEY (placa) REFERENCES Veiculo(placa)
);

CREATE TABLE IF NOT EXISTS Locacao(
	cdLocacao INT NOT NULL,
	cdFilialSaida INT NOT NULL,
    cdFilialRetorno INT NOT NULL,
    cdPessoa INT NOT NULL,
    placa VARCHAR(8) NOT NULL,
    dia DATE NOT NULL,
    reservado BOOLEAN,
    PRIMARY KEY (cdLocacao),
    FOREIGN KEY (cdFilialSaida) REFERENCES Filial(cdFilial),
    FOREIGN KEY (cdFilialRetorno) REFERENCES Filial(cdFilial),
    FOREIGN KEY (cdPessoa) REFERENCES Pessoa(cdPessoa),
    FOREIGN KEY (placa) REFERENCES Veiculo(placa)
);
