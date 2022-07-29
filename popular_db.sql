USE Locadora;

INSERT INTO Filial(cdFilial, endereco) VALUES (7893, "Rua 900");
INSERT INTO Filial(endereco) VALUES ("Rua 450");
INSERT INTO Filial(endereco) VALUES ("Rua 270");
INSERT INTO Filial(endereco) VALUES ("Rua 920");
INSERT INTO Filial(endereco) VALUES ("Rua 750");
INSERT INTO Filial(endereco) VALUES ("Rua 560");

INSERT INTO Pessoa(cdPessoa, nome, endereco) VALUES (453, "João da Silva", "Rua 12");
INSERT INTO Pessoa(nome, endereco) VALUES ("Eduardo Silveira", "Rua 25");
INSERT INTO Pessoa(nome, endereco) VALUES ("Guilherme Pereira", "Rua 75");
INSERT INTO Pessoa(nome, endereco) VALUES ("Tomas Conceição", "Rua 43");
INSERT INTO Pessoa(nome, endereco) VALUES ("Luis Neto", "Rua 94");
INSERT INTO Pessoa(nome, endereco) VALUES ("Regis Barreto", "Rua 19");

INSERT INTO PessoaFisica(cdPessoa, CPF, dtNascimento, sexo) VALUES (453, 883476, DATE '1996-08-04', "Masculino");
INSERT INTO PessoaFisica(cdPessoa, CPF, dtNascimento, sexo) VALUES (457, 106723, DATE '1979-12-23', "Masculino");
INSERT INTO PessoaFisica(cdPessoa, CPF, dtNascimento, sexo) VALUES (455, 720463, DATE '1996-01-19', "Masculino");

INSERT INTO PessoaJuridica(cdPessoa, CNPJ) VALUES (458, 89842);
INSERT INTO PessoaJuridica(cdPessoa, CNPJ) VALUES (456, 32819);
INSERT INTO PessoaJuridica(cdPessoa, CNPJ) VALUES (454, 95721);

INSERT INTO TipoVeiculo(tipo, tempoManutencao) VALUES ("P4", 1);
INSERT INTO TipoVeiculo(tipo, tempoManutencao) VALUES ("P6", 2);
INSERT INTO TipoVeiculo(tipo, tempoManutencao) VALUES ("M4", 5);
INSERT INTO TipoVeiculo(tipo, tempoManutencao) VALUES ("M6", 7);
INSERT INTO TipoVeiculo(tipo, tempoManutencao) VALUES ("G4", 8);
INSERT INTO TipoVeiculo(tipo, tempoManutencao) VALUES ("G6", 10);

INSERT INTO Veiculo(placa, tipo, cdChassi, cdMotor, cor, quilometragem, mediaKmDia) VALUES ("HSM-7839", "P6", 5332, 75638, "Prata", 40000, 9);
INSERT INTO Veiculo(placa, tipo, cdChassi, cdMotor, cor, quilometragem, mediaKmDia) VALUES ("JDK-5393", "G6", 4928, 94837, "Preto", 100000, 42);
INSERT INTO Veiculo(placa, tipo, cdChassi, cdMotor, cor, quilometragem, mediaKmDia) VALUES ("KOM-3420", "P6", 3928, 09274, "Azul", 80000, 5);
INSERT INTO Veiculo(placa, tipo, cdChassi, cdMotor, cor, quilometragem, mediaKmDia) VALUES ("LFW-4379", "G4", 1849, 31653, "Branco", 65000, 12);
INSERT INTO Veiculo(placa, tipo, cdChassi, cdMotor, cor, quilometragem, mediaKmDia) VALUES ("AOK-6522", "M6", 0484, 73849, "Vermelho", 90000, 21);
INSERT INTO Veiculo(placa, tipo, cdChassi, cdMotor, cor, quilometragem, mediaKmDia) VALUES ("MCS-0232", "M4", 6294, 10294, "Laranja", 150000, 20);
INSERT INTO Veiculo(placa, tipo, cdChassi, cdMotor, cor, quilometragem, mediaKmDia) VALUES ("LOW-3621", "G6", 9786, 92845, "Branco", 20000, 10);
INSERT INTO Veiculo(placa, tipo, cdChassi, cdMotor, cor, quilometragem, mediaKmDia) VALUES ("CDL-2103", "P4", 3629, 89923, "Preto", 10000, 35);

INSERT INTO VeiculoCarga(tipo, capacidade) VALUES("P4", 1000);
INSERT INTO VeiculoCarga(tipo, capacidade) VALUES("M4", 5000);
INSERT INTO VeiculoCarga(tipo, capacidade) VALUES("G4", 10000);

INSERT INTO VeiculoPassageiros(tipo, tamanho, passageiros, portas, arCondicionado, radio, tocaFitas, CD, direcaoHidraulica, cambioAutomatico)
VALUES ("P6", "Pequeno", 5, 2, false, true, false, true, false, false);
INSERT INTO VeiculoPassageiros(tipo, tamanho, passageiros, portas, arCondicionado, radio, tocaFitas, CD, direcaoHidraulica, cambioAutomatico)
VALUES ("M6", "Médio", 10, 3, true, true, false, true, true, true);
INSERT INTO VeiculoPassageiros(tipo, tamanho, passageiros, portas, arCondicionado, radio, tocaFitas, CD, direcaoHidraulica, cambioAutomatico)
VALUES ("G6", "Grande", 20, 2, false, false, false, true, true, false);

INSERT INTO FilialVeiculo(placa, cdFilial) VALUES ("HSM-7839", 7898);
INSERT INTO FilialVeiculo(placa, cdFilial) VALUES ("JDK-5393", 7894);
INSERT INTO FilialVeiculo(placa, cdFilial) VALUES ("KOM-3420", 7893);
INSERT INTO FilialVeiculo(placa, cdFilial) VALUES ("LFW-4379", 7897);
INSERT INTO FilialVeiculo(placa, cdFilial) VALUES ("AOK-6522", 7898);
INSERT INTO FilialVeiculo(placa, cdFilial) VALUES ("MCS-0232", 7896);
INSERT INTO FilialVeiculo(placa, cdFilial) VALUES ("LOW-3621", 7895);
INSERT INTO FilialVeiculo(placa, cdFilial) VALUES ("CDL-2103", 7897);

INSERT INTO Revisao(cdRevisao, placa, dia, aprovado, detalhes) VALUES (892, "JDK-5393", DATE '2021-04-03', true, "Sem problemas.");
INSERT INTO Revisao(placa, dia, aprovado, detalhes) VALUES ("KOM-3420", DATE '2022-04-22', false, "Amassado lateral.");
INSERT INTO Revisao(placa, dia, aprovado, detalhes) VALUES ("LFW-4379", DATE '2020-11-13', true, "Sem problemas.");
INSERT INTO Revisao(placa, dia, aprovado, detalhes) VALUES ("AOK-6522", DATE '2022-01-09', false, "Freio desgastado.");
INSERT INTO Revisao(placa, dia, aprovado, detalhes) VALUES ("MCS-0232", DATE '2019-08-30', true, "Sem problemas.");
INSERT INTO Revisao(placa, dia, aprovado, detalhes) VALUES ("LOW-3621", DATE '2020-10-03', true, "Sem problemas.");
INSERT INTO Revisao(placa, dia, aprovado, detalhes) VALUES ("CDL-2103", DATE '2022-02-26', true, "Sem problemas");
INSERT INTO Revisao(placa, dia, aprovado, detalhes) VALUES ("HSM-7839", DATE '2021-12-06', true, "Sem problemas");

INSERT INTO Seguro(cdSeguro, cdFilial, placa, cdPessoa, idHabilitacao, dtVencimentoHabilitacao) VALUES (382, 7893, "HSM-7839", 453, 54763, DATE '2028-05-23');
INSERT INTO Seguro(cdFilial, placa, cdPessoa, idHabilitacao, dtVencimentoHabilitacao) VALUES (7897, "MCS-0232", 454, 39585, DATE '2025-07-12');
INSERT INTO Seguro(cdFilial, placa, cdPessoa, idHabilitacao, dtVencimentoHabilitacao) VALUES (7895, "CDL-2103", 455, 17828, DATE '2023-11-03');

INSERT INTO Locacao(cdLocacao, cdFilialSaida, cdFilialRetorno, cdPessoa, placa, diaSaida, diaRetorno, concluido) 
VALUES (21, 7897, 7896, 453, "HSM-7839", DATE '2022-10-03', DATE '2022-11-03', true);
INSERT INTO Locacao(cdFilialSaida, cdFilialRetorno, cdPessoa, placa, diaSaida, diaRetorno, concluido) 
VALUES (7895, 7894, 454, "CDL-2103", DATE '2023-02-15', DATE '2023-02-18' , false);
