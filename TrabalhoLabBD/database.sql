create database trabalholabbd
go
use trabalholabbd
go

create table quesito(
id int not null,
id_escola int not null,
nome varchar(max) not null,
nota1 decimal(7,1),
nota2 decimal(7,1),
nota3 decimal(7,1),
nota4 decimal(7,1),
nota5 decimal(7,1),
nota_total decimal(7,1),
primary key(id),
foreign key(id_escola) references escola(id)
)

create table jurado(
id int not null,
nome varchar(max) not null,
primary key(id)
)

create table escola(
id int not null,
nome varchar(max) not null,
total_pontos decimal(7,1),
primary key(id)
)

create table nota(
id int not null,
valor_nota decimal(7,1) not null,
primary key(id)
)