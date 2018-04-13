create database trabalholabbd
go
use trabalholabbd
go

create table quesito(
id_escola int not null,
id int not null,
nome varchar(max) not null,
primary key(id),
foreign key(id_escola) references escola(id)
)

create table jurado(
id int identity(1,1) not null
)

create table escola(
id int not null,
nome varchar(max) not null,
nota_total decimal(7,2),
primary key(id)
)