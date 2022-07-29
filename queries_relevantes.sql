#QUAIS FILIAIS POSSUEM CARROS PRETOS
SELECT fv.cdFilial FROM FilialVeiculo fv INNER JOIN Veiculo v ON v.placa = fv.placa WHERE v.cor = "Preto";

#A - CARROS DISPONIVEIS NA FILIAL 7897
SELECT placa FROM FilialVeiculo WHERE cdFilial = 7897;

#B - RESERVAS NA FILIAL 7895
SELECT * FROM Locacao WHERE diaRetorno > NOW() AND concluido = false AND cdFilialSaida = 7895;

#C - VEICULOS ATUALMENTE ALUGADOS NA FILIAL 7897
SELECT * FROM Locacao WHERE diaSaida > NOW() AND diaRetorno < NOW() AND concluido = false AND cdFilialSaida = 7897;