-- consulta para mostrar a quantidade de locações por cliente

SELECT Clientes.Nome, COUNT(Locacoes.ID) AS QuantidadeDeLocacoes
FROM Clientes
JOIN Locacoes ON Clientes.ID = Locacoes.ClienteID
GROUP BY Clientes.Nome;

-- consulta de todas as a locações em realção aos funcionarios 

SELECT Vendas.ID, Funcionarios.Nome AS NomeDoVendedor, Locacoes.ClienteID, Locacoes.CarroID
FROM Vendas
JOIN Funcionarios ON Vendas.FuncionarioID = Funcionarios.ID
JOIN Locacoes ON Vendas.LocacaoID = Locacoes.ID;

-- consulta que calcule a quantidade de carro alugados em um mês

SELECT COUNT(*) AS QuantidadeDeCarrosAlugados
FROM Locacoes
WHERE MONTH(DataInicio) = 1 AND YEAR(DataInicio) = 2024;
