-- consulta para mostrar a quantidade de locações por cliente

SELECT Clientes.Nome, COUNT(Locacoes.ID) AS QuantidadeDeLocacoes
FROM Clientes
JOIN Locacoes ON Clientes.ID = Locacoes.ClienteID
GROUP BY Clientes.Nome;

