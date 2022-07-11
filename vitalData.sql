--Insere dados vitais para o funcionamento do Banco
use ItFinancas;

--DADOS ORIGENS--

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(1, 'Aluguel', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(2, 'Transporte', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(3, 'contas mensais de consumo', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(4, 'alimentação', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(5, 'saúde', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(6, 'serviços de assinatura', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(7, 'viajem', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(8, 'passeio', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(9, 'roupas', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(10, 'acessórios', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(11, 'salário', 'R', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(12, 'investimento regular', 'R', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(13, 'aluguel de imóveis', 'R', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(14, 'prêmios', 'R', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(15, 'investimentos', 'R', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(16, 'vendas', 'R', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(17, 'outros receita', 'R', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Origens (idOrigem, descricaoOrigem, tipoOrigem, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values(18, 'outros despesa', 'D', 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

--DADOS PLANOS--

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (1, 'free', 0, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (2, 'Standard', 19.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (3, 'Standard trimestral', 49.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (4, 'Standard anual', 199.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (5, 'Premium', 29.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (6, 'Premium trimestral', 79.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (7, 'Premium anual', 299.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (8, 'Empresarial 1', 59.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (9, 'Empresarial 1 trimestral', 159.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (10, 'Empresarial 1 anual', 599.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (11, 'Empresarial 2 trimestral', 359.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (12, 'Empresarial 2 Anual', 1199.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (13, 'Empresarial 3 trimestral', 899.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());

	insert into Planos (idPlano, plano, valor, ativo, userCriacao, dataCriacao, userAlteracao, dataAlteracao)
	values (14, 'Empresarial 3 anual', 2999.90, 1, 'rafael.leite', GETDATE(), 'rafael.leite', GETDATE());
