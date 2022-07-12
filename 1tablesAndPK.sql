--Cria as tabelas e define suas chaves primárias
use ItFinancas;

create table RegistrosDeContas(
idRegistroConta int NOT NULL IDENTITY(1,1) PRIMARY KEY,
idCliente int NOT NULL,
tipo char(1) NOT NULL,
recorrencia char (1) NOT NULL,
descricao varchar (60) NOT NULL,
idOrigem tinyint NOT NULL,
valor decimal (8,2) NOT NULL,
dataValidade date NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao datetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao datetime NOT NULL);

create table Origens (
idOrigem tinyint NOT NULL PRIMARY KEY,
descricaoOrigem varchar(30) NOT NULL,
tipoOrigem char (1) NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao datetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao datetime NOT NULL);

create table ComprovantesLiquidacao (
idLiquidacao int NOT NULL IDENTITY(1,1) PRIMARY KEY,
idRegistroConta int NOT NULL,
dataLiquidacao date NOT NULL,
linkComprovante varchar(200),
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao datetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao datetime NOT NULL);

create table Planos (
idPlano tinyint NOT NULL PRIMARY KEY,
plano varchar(30) NOT NULL,
valor decimal (8,2) NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao datetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao datetime NOT NULL);

create table Clientes (
idCliente int NOT NULL IDENTITY(1,1) PRIMARY KEY,
nomeCompletoCliente varchar(60) NOT NULL,
emailCliente varchar(50) NOT NULL,
telefoneCliente varchar(16),
CPF char(11),
CNPJ char (14),
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao datetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao datetime NOT NULL);

create table CredenciaisCliente(
idPerfil int NOT NULL IDENTITY(1,1) PRIMARY KEY,
idCliente int  NOT NULL,
emailCliente varchar(50) NOT NULL,
senhaCliente char(32) NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao datetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao datetime NOT NULL);

create table Assinaturas (
idAssinatura int NOT NULL IDENTITY(1,1) PRIMARY KEY,
idCliente int NOT NULL,
idPlano tinyint NOT NULL,
dataInicio date,
dataValidade date,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao datetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao datetime NOT NULL);

create table Cartoes (
idCartao int NOT NULL IDENTITY(1,1) PRIMARY KEY,
descricaoCartao varchar(40) NOT NULL,
limiteCartao decimal (8,2) NOT NULL,
idCliente int NOT NULL,
ativo bit NOT NULL,
userCriacao varchar (20) NOT NULL,
dataCriacao datetime NOT NULL,
userAlteracao varchar (20) NOT NULL,
dataAlteracao datetime NOT NULL);
