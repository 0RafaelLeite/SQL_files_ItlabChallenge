--RELATÓRIOS ITFINANÇAS

-- 1. Balanço de pessoas física e jurídica ativas no serviço-----------------------------------------------------------------


SELECT COUNT(CPF) AS [Pessoas física ativas], COUNT(CNPJ) AS [Pessoas jurídica ativas], (SELECT COUNT(DATAVALIDADE) FROM Assinaturas WHERE DATAVALIDADE > GETDATE()) AS [Clientes inativos] FROM Clientes left join assinaturas on 
Clientes.idCliente = assinaturas.idCliente where dataValidade <= getdate() or dataValidade is null

-- 2.Lucro total por plano --------------------------------------------------------------------------------------------

SELECT PLANO, SUM(VALOR) AS [Receita total por plano]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO
GROUP BY plano ORDER BY [Receita total por plano] DESC;


-- 3. Receita total do serviço ------------------------------------------------------------------------------------------

SELECT SUM(VALOR) AS [Receita total]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO;


-- 4. Total de assinantes ativos por plano ----------------------------------------------------------------------------

SELECT PLANO, COUNT(Assinaturas.idAssinatura) AS [Assinantes ativos]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO where assinaturas.datavalidade <= getdate() or assinaturas.idplano = 1
GROUP BY plano ORDER BY [Assinantes ativos] DESC;

-- 5. Novos assinantes no últimos 30 dias ----------------------------------------------------------------------------------

SELECT PLANO, COUNT(Assinaturas.idAssinatura) AS [Novos assinantes últimos 30 dias]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO WHERE datediff(day, datainicio,getdate()) <= 30 or assinaturas.idplano = 1
GROUP BY plano ORDER BY [Novos assinantes últimos 30 dias] DESC;

-- 6. Novos assinantes no último ano ----------------------------------------------------------------------------------

SELECT PLANO, COUNT(Assinaturas.idAssinatura) AS [Novos assinantes ultimo ano]  FROM PLANOS 
LEFT JOIN Assinaturas ON Assinaturas.IDPLANO = PLANOS.IDPLANO WHERE datediff(day, datainicio,getdate()) <= 365 or assinaturas.idplano = 1
GROUP BY plano ORDER BY [Novos assinantes ultimo ano] DESC;

-- 7. Estatisticas sobre dados de receita e despesa dos usuários ------------------------------------------------------

SELECT tipo, COUNT(Valor) AS [QUANTIDADE DE REGISTROS], STR(ROUND(AVG(valor),2),10, 2) AS [Média dos valores registrados], SUM(Valor) AS [SOMA DOS VALORES], MIN(Valor) AS [VALOR MINIMO], MAX(Valor) AS [VALOR MÁXIMO] from [dbo].[RegistrosDeContas] GROUP BY tipo;

-- 8. Ranking de clientes com maior atividade no serviço --------------------------------------------------------------

SELECT clientes.idcliente, clientes.NomeCompletoCliente AS [Nome do cliente], clientes.emailCliente AS Email, COUNT(RegistrosDeContas.idRegistroConta) AS [numº de registros], SUM(RegistrosDeContas.Valor) AS [Valor movimentado], Planos.Plano AS [Plano atual] FROM clientes LEFT JOIN RegistrosDeContas ON clientes.idCliente = RegistrosDeContas.idCliente LEFT JOIN assinaturas ON clientes.idCliente = assinaturas.idCliente LEFT join planos ON assinaturas.idPlano = Planos.idPlano GROUP BY clientes.idcliente, NomeCompletoCliente, clientes.emailCliente, planos.plano ORDER BY [numº de registros] DESC;

-- 8.1. Ranking top 15 clientes com maior atividade no serviço --------------------------------------------------------

SELECT TOP 15 clientes.idcliente, clientes.NomeCompletoCliente AS [Nome do cliente], clientes.emailCliente AS Email, COUNT(RegistrosDeContas.idRegistroConta) AS [numº de registros], SUM(RegistrosDeContas.Valor) AS [Valor movimentado], Planos.Plano AS [Plano atual] FROM clientes LEFT JOIN RegistrosDeContas ON clientes.idCliente = RegistrosDeContas.idCliente LEFT JOIN assinaturas ON clientes.idCliente = assinaturas.idCliente LEFT join planos ON assinaturas.idPlano = Planos.idPlano GROUP BY clientes.idcliente, NomeCompletoCliente, clientes.emailCliente, planos.plano ORDER BY [numº de registros] DESC;

-- 9. Novas assinaturas por mês no ultimo ano  ------------------------------------------------------------------------

SELECT DATENAME(month,DATAINICIO) AS  [Mês], COUNT(DATAINICIO) AS [Novas assinaturas] FROM ASSINATURAS WHERE DATAINICIO IS NOT NULL and datediff(day, DATAINICIO, getdate()) <= 365 GROUP BY DATENAME(month,DATAINICIO) ORDER BY [Novas assinaturas] desc;


