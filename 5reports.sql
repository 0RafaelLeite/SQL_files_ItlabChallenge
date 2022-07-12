--RELAT�RIOS ITFINAN�AS

-- 1.Lucro total por plano --------------------------------------------------------------------------------------------

SELECT PLANO, SUM(VALOR) AS [LUCRO TOTAL POR PLANO]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO
GROUP BY plano ORDER BY [LUCRO TOTAL POR PLANO] DESC;


-- 2. Lucro total do servi�o ------------------------------------------------------------------------------------------

SELECT SUM(VALOR) AS [LUCRO TOTAL]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO;


-- 3. Total de assinantes ativos por plano ----------------------------------------------------------------------------

SELECT PLANO, COUNT(Assinaturas.idAssinatura) AS [Assinantes ativos]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO where assinaturas.datavalidade <= getdate() or assinaturas.idplano = 1
GROUP BY plano ORDER BY [Assinantes ativos] DESC;

-- 4. Novos assinantes no �ltimo m�s ----------------------------------------------------------------------------------

SELECT PLANO, COUNT(Assinaturas.idAssinatura) AS [Novos assinantes ultimo m�s]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO WHERE datediff(day, datainicio,getdate()) <= 30 or assinaturas.idplano = 1
GROUP BY plano ORDER BY [Novos assinantes ultimo m�s] DESC;

-- 5. Novos assinantes no �ltimo ano ----------------------------------------------------------------------------------

SELECT PLANO, COUNT(Assinaturas.idAssinatura) AS [Novos assinantes ultimo ano]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO WHERE datediff(day, datainicio,getdate()) <= 365 or assinaturas.idplano = 1
GROUP BY plano ORDER BY [Novos assinantes ultimo ano] DESC;

-- 6. Estatisticas sobre dados de receita e despesa dos usu�rios ------------------------------------------------------

SELECT tipo, COUNT(Valor) AS [QUANTIDADE DE REGISTROS], STR(ROUND(AVG(valor),2),10, 2) AS [M�dia dos valores registrados], SUM(Valor) AS [SOMA DOS VALORES], MIN(Valor) AS [VALOR MINIMO], MAX(Valor) AS [VALOR M�XIMO] from [dbo].[RegistrosDeContas] group by tipo;

-- 7. Ranking de clientes com maior atividade no servi�o --------------------------------------------------------------

SELECT clientes.idcliente, clientes.NomeCompletoCliente AS [Nome do cliente], clientes.emailCliente AS Email, COUNT(RegistrosDeContas.idRegistroConta) AS [num� de registros], SUM(RegistrosDeContas.Valor) AS [Valor movimentado], Planos.Plano AS [Plano atual] FROM clientes LEFT JOIN RegistrosDeContas ON clientes.idCliente = RegistrosDeContas.idCliente LEFT JOIN assinaturas ON clientes.idCliente = assinaturas.idCliente LEFT join planos ON assinaturas.idPlano = Planos.idPlano GROUP BY clientes.idcliente, NomeCompletoCliente, clientes.emailCliente, planos.plano ORDER BY [num� de registros] DESC;

-- 7.1. Ranking top 15 clientes com maior atividade no servi�o --------------------------------------------------------

SELECT top 15 clientes.idcliente, clientes.NomeCompletoCliente AS [Nome do cliente], clientes.emailCliente AS Email, COUNT(RegistrosDeContas.idRegistroConta) AS [num� de registros], SUM(RegistrosDeContas.Valor) AS [Valor movimentado], Planos.Plano AS [Plano atual] FROM clientes LEFT JOIN RegistrosDeContas ON clientes.idCliente = RegistrosDeContas.idCliente LEFT JOIN assinaturas ON clientes.idCliente = assinaturas.idCliente LEFT join planos ON assinaturas.idPlano = Planos.idPlano GROUP BY clientes.idcliente, NomeCompletoCliente, clientes.emailCliente, planos.plano ORDER BY [num� de registros] DESC;

-- 8. Novas assinaturas por m�s no ultimo ano  ------------------------------------------------------------------------

SELECT DATENAME(month,DATAINICIO) AS  [M�s], COUNT(DATAINICIO) AS [Novas assinaturas] FROM ASSINATURAS WHERE DATAINICIO IS NOT NULL and datediff(day, DATAINICIO, getdate()) <= 365 GROUP BY DATENAME(month,DATAINICIO) ORDER BY DATENAME(month,DATAINICIO);

