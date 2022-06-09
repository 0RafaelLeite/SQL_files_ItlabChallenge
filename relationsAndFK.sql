--Estabelece as relações e chaves estrangeiras
use ItFinancas;

alter table RegistrosDeContas 
add constraint FKregistrosContas_IdCliente foreign key (idCliente) references Clientes (idCliente);

alter table RegistrosDeContas 
add constraint FKregistrosContas_IdOrigem foreign key (idOrigem) references Origens (idOrigem);

alter table CredenciaisCliente 
add constraint FKcredenciaisCliente_IdCliente foreign key (idCliente) references Clientes (idCliente);

alter table Comprovantesliquidacao 
add constraint FKcomprovantesLiquidacao_IdRegistroConta foreign key (idRegistroConta) references RegistrosDeContas (idRegistroConta);

alter table Clientes 
add constraint FKclientes_IdAssinatura foreign key (idAssinatura) references Assinaturas (idAssinatura);

alter table Assinaturas 
add constraint FKassinaturas_Idplano foreign key (idPlano) references Planos (idPlano);

alter table Cartoes 
add constraint FKcartoes_Idcliente foreign key (idCliente) references Clientes (idCliente);