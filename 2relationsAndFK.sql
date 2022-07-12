--Estabelece as relações e chaves estrangeiras
use itfinancas;

alter table RegistrosDeContas 
add constraint FKregistrosContas_IdCliente foreign key (idCliente) references Clientes (idCliente);

alter table RegistrosDeContas 
add constraint FKregistrosContas_IdOrigem foreign key (idOrigem) references Origens (idOrigem);

alter table CredenciaisCliente 
add constraint FKcredenciaisCliente_IdCliente foreign key (idCliente) references Clientes (idCliente);

alter table Comprovantesliquidacao 
add constraint FKcomprovantesLiquidacao_IdRegistroConta foreign key (idRegistroConta) references RegistrosDeContas (idRegistroConta);

alter table Assinaturas 
add constraint FKAssinaturas_IdCliente foreign key (IdCliente) references Clientes (IdCliente);

alter table Assinaturas 
add constraint FKassinaturas_Idplano foreign key (idPlano) references Planos (idPlano);

alter table Cartoes 
add constraint FKcartoes_Idcliente foreign key (idCliente) references Clientes (idCliente);