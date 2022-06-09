--Cria as tabelas e define suas chaves primárias
use ItFinancas;

create table RegistrosDeContas(
idRegistroConta int NOT NULL IDENTITY(1,1) PRIMARY KEY,
idCliente int NOT NULL,
tipo varchar(1) NOT NULL,
recorrencia varchar (1) NOT NULL,
descricao varchar (60) NOT NULL,
idOrigem tinyint NOT NULL,
valor float NOT NULL,
dataValidade date NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao smalldatetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao smalldatetime NOT NULL);

create table Origens (
idOrigem tinyint NOT NULL PRIMARY KEY,
descricaoOrigem varchar(30) NOT NULL,
tipoOrigem varchar (1) NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao smalldatetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao smalldatetime NOT NULL);

create table ComprovantesLiquidacao (
idLiquidacao int NOT NULL IDENTITY(1,1) PRIMARY KEY,
idRegistroConta int NOT NULL,
dataLiquidacao date NOT NULL,
linkComprovante varchar(200),
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao smalldatetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao smalldatetime NOT NULL);

create table Planos (
idPlano tinyint NOT NULL PRIMARY KEY,
plano varchar(15) NOT NULL,
valor float NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao smalldatetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao smalldatetime NOT NULL);

create table Clientes (
idCliente int NOT NULL IDENTITY(1,1) PRIMARY KEY,
nomeCompletoCliente varchar(60) NOT NULL,
emailCliente varchar(30) NOT NULL,
telefoneCliente varchar(16),
CPF varchar(11),
CNPJ varchar (14),
idAssinatura int NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao smalldatetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao smalldatetime NOT NULL);

create table CredenciaisCliente(
idPerfil int NOT NULL IDENTITY(1,1) PRIMARY KEY,
idCliente int  NOT NULL,
emailCliente varchar(40) NOT NULL,
senhaCliente varchar(20) NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao smalldatetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao smalldatetime NOT NULL);

create table Assinaturas (
idAssinatura int NOT NULL IDENTITY(1,1) PRIMARY KEY,
idPlano tinyint NOT NULL,
dataValidade date,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao smalldatetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao smalldatetime NOT NULL);

create table Cartoes (
idCartao int NOT NULL IDENTITY(1,1) PRIMARY KEY,
descricaoCartao varchar(40) NOT NULL,
limiteCartao float NOT NULL,
idCliente int NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao smalldatetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao smalldatetime NOT NULL);
