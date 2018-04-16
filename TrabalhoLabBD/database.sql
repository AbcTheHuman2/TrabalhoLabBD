create database trabalholabbd
go
use trabalholabbd
go

create table quesito1(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table quesito2(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table quesito3(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table quesito4(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table quesito5(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table quesito6(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table quesito7(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table quesito8(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table quesito9(
id_escola int not null,
id_jurado int not null,
nota1 decimal(7,2),
nota2 decimal(7,2),
nota3 decimal(7,2),
nota4 decimal(7,2),
nota5 decimal(7,2),
maior decimal(7,2),
menor decimal(7,2),
valor_total decimal(7,2),
foreign key(id_escola) references escola(id),
foreign key(id_jurado) references jurado(id_jurado)
)

create table jurado(
id_jurado int not null,
primary key(id_jurado)
)

create table escola(
id int not null,
nome_escola varchar(max) not null,
total_pontos decimal(7,2),
nota_aux decimal(7,2),
primary key(id)
)

create table quesito(
id int not null,
nome varchar(max) not null,
primary key(id)
)

create table juri(
id_j int not null,
id_q int not null,
posicao int not null,
foreign key(id_q) references quesito(id),
foreign key(id_j) references jurado(id_jurado)
)

insert into escola values
(0, 'Acadêmicos do Tatuapé', 0, 0),
(1, 'Rosas de Ouro', 0, 0),
(2, 'Mancha Verde', 0, 0),
(3, 'Vai-Vai', 0, 0),
(4, 'X-9 Paulistana', 0, 0),
(5, 'Dragões da Real', 0, 0),
(6, 'Águia de Ouro', 0, 0),
(7, 'Nenê de Vila Matilde', 0, 0),
(8, 'Gaviões da Fiel', 0, 0),
(9, 'Mocidade Alegre', 0, 0),
(10, 'Tom Maior', 0, 0),
(11, 'Unidos de Vila Maria', 0, 0),
(12, 'Acadêmicos do Tucuruvi', 0, 0),
(13, 'Império de Casa Verde', 0, 0)

insert into quesito values
(0, 'Comissão de Frente'),
(1, 'Evolução'),
(2, 'Fantasia'),
(3, 'Bateria'),
(4, 'Alegoria'),
(5, 'Harmonia'),
(6, 'Samba-Enredo'),
(7, 'Mestre-Sala e Porta-Bandeira'),
(8, 'Enredo')

insert into jurado values
(0),
(1),
(2),
(3),
(4)

insert into juri values
(0, 0, 0),
(1, 0, 1),
(2, 0, 2),
(3, 0, 3),
(4, 0, 4),
(0, 1, 5),
(1, 1, 6),
(2, 1, 7),
(3, 1, 8),
(4, 1, 9),
(0, 2, 10),
(1, 2, 11),
(2, 2, 12),
(3, 2, 13),
(4, 2, 14),
(0, 3, 15),
(1, 3, 16),
(2, 3, 17),
(3, 3, 18),
(4, 3, 19),
(0, 4, 20),
(1, 4, 21),
(2, 4, 22),
(3, 4, 23),
(4, 4, 24),
(0, 5, 25),
(1, 5, 26),
(2, 5, 27),
(3, 5, 28),
(4, 5, 29),
(0, 6, 30),
(1, 6, 31),
(2, 6, 32),
(3, 6, 33),
(4, 6, 34),
(0, 7, 35),
(1, 7, 36),
(2, 7, 37),
(3, 7, 38),
(4, 7, 39),
(0, 8, 40),
(1, 8, 41),
(2, 8, 42),
(3, 8, 43),
(4, 8, 44)

create procedure sp_inserir(@quesito int, @escola int, @nota decimal(7,2), @posicao int)
as
	if (@quesito = 0)
	begin
		exec sp_quesito1 @escola, @nota, @posicao
	end
	else
	if(@quesito = 1)
	begin
		exec sp_quesito2 @escola, @nota, @posicao
	end
	else
	if(@quesito = 2)
	begin
		exec sp_quesito3 @escola, @nota, @posicao
	end
	else
	if(@quesito = 3)
	begin
		exec sp_quesito4 @escola, @nota, @posicao
	end
	else
	if(@quesito = 4)
	begin
		exec sp_quesito5 @escola, @nota, @posicao
	end
	else
	if (@quesito = 5)
	begin
		exec sp_quesito6 @escola, @nota, @posicao
	end
	else
	if(@quesito = 6)
	begin
		exec sp_quesito7 @escola, @nota, @posicao
	end
	else
	if(@quesito = 7)
	begin
		exec sp_quesito8 @escola, @nota, @posicao
	end
	else
	if(@quesito = 8)
	begin
		exec sp_quesito9 @escola, @nota, @posicao
	end

create procedure sp_quesito1(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito1(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito1
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito1
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito1
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito1
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito1
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito1
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito1
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito1
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito1
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito1
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end

create procedure sp_quesito2(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito2(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito2
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito2
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito2
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito2
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito2
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito2
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito2
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito2
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito2
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito2
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end
	
	create procedure sp_quesito3(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito3(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito3
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito3
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito3
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito3
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito3
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito3
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito3
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito3
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito3
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito3
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end

create procedure sp_quesito4(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito1(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito4
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito4
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito4
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito4
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito4
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito4
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito4
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito4
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito4
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito4
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end

create procedure sp_quesito5(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito5(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito5
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito5
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito5
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito5
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito5
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito5
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito5
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito5
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito5
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito5
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end
	
	create procedure sp_quesito6(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito6(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito6
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito6
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito6
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito6
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito6
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito6
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito6
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito6
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito6
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito6
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end
	
	create procedure sp_quesito7(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito7(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito7
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito7
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito7
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito7
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito7
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito7
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito7
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito7
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito7
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito7
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end
	
	create procedure sp_quesito8(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito8(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito8
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito8
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito8
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito8
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito8
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito8
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito8
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito8
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito8
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito8
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end
	
	create procedure sp_quesito9(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito1(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito9
		set nota2 = @nota
		where id_escola = @id_escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito9
		set nota3 = @nota
		where id_escola = @id_escola
		update quesito9
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito9
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito9
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito9
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito9
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito9
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito9
		set maior = dbo.fn_maiorNota(0, @id_escola),
		menor = dbo.fn_menorNota(0, @id_escola)
		where id_escola = @id_escola
		select @total = dbo.fn_notaTotal(@id_escola, 0)
		update quesito9
		set valor_total = @total
		where id_escola = @id_escola
		select @total = valor_total from quesito1 where id_escola = @id_escola
		exec sp_update @id_escola, @total, 5
	end
	
	create function fn_maiorNota(@quesito int, @id_escola int)
	returns decimal(7,2)
	as
	begin
	declare @nota1 float,
			@nota2 float,
			@nota3 float,
			@nota4 float,
			@nota5 float,
			@maior decimal(7,2)
	if (@quesito = 0)
	begin
	select
		@nota1 = nota1,
		@nota2 = nota2,
		@nota3 = nota3,
		@nota4 = nota4,
		@nota5 = nota5
	from
		quesito1
	where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 1)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito2
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 2)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito3
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 3)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito4
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 4)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito5
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 5)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito6
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 6)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito7
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 7)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito8
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 8)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito9
		where id_escola = @id_escola
	end
	end
	end
	end
	end
	end
	end
	end
	end
	set @maior = @nota1
	if (@maior <= @nota2)
	begin
		set @maior = @nota2
	end
	if (@maior <= @nota3)
	begin
		set @maior = @nota3
	end
	if (@maior <= @nota4)
	begin
		set @maior = @nota4
	end
	if (@maior <= @nota5)
	begin
		set @maior = @nota5
	end
	return @maior
end

	create function fn_menorNota(@quesito int, @id_escola int)
	returns decimal(7,2)
	as
	begin
	declare @nota1 float,
			@nota2 float,
			@nota3 float,
			@nota4 float,
			@nota5 float,
			@menor decimal(7,2)
	if (@quesito = 0)
	begin
	select
		@nota1 = nota1,
		@nota2 = nota2,
		@nota3 = nota3,
		@nota4 = nota4,
		@nota5 = nota5
	from
		quesito1
	where id_escola = @id_escola
	end
	else
	begin 
	if (@quesito = 1)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito2
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 2)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito3
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 3)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito4
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 4)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito5
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 5)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito6
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 6)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito7
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 7)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito8
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 8)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5
		from
			quesito9
		where id_escola = @id_escola
	end
	end
	end
	end
	end
	end
	end
	end
	end
	set @menor = @nota1
	if (@menor >= @nota2)
	begin
		set @menor = @nota2
	end
	if (@menor >= @nota3)
	begin
		set @menor = @nota3
	end
	if (@menor >= @nota4)
	begin
		set @menor = @nota4
	end
	if (@menor >= @nota5)
	begin
		set @menor = @nota5
	end
	return @menor
	end

create function fn_notaTotal(@id_escola int, @quesito int)
returns decimal(7,2)
as
begin
	declare @nota1 decimal(7,2),
			@nota2 decimal(7,2),
			@nota3 decimal(7,2),
			@nota4 decimal(7,2),
			@nota5 decimal(7,2),
			@maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@quesito = 0)
	begin
	select
		@nota1 = nota1,
		@nota2 = nota2,
		@nota3 = nota3,
		@nota4 = nota4,
		@nota5 = nota5,
		@maior = maior,
		@menor = menor
	from
		quesito1
	where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 1)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito2
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 2)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito3
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 3)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito4
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 4)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito5
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 5) begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito6
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 6)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito7
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 7)
	begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito8
		where id_escola = @id_escola
	end
	else
	begin
	if (@quesito = 8) begin
		select
			@nota1 = nota1,
			@nota2 = nota2,
			@nota3 = nota3,
			@nota4 = nota4,
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito9
		where id_escola = @id_escola
	end
	end
	end
	end
	end
	end
	end
	end
	end
	set @total = @nota1
	set @total = @total + @nota2
	set @total = @total + @nota3
	set @total = @total + IsNull(@nota4, 0)
	set @total = @total + IsNull(@nota5, 0)
	set @total = @total - @maior
	set @total = @total - @menor
	return @total
end

create function fn_verTotal(@id_escola int)
returns decimal(7,2)
as
begin
	declare @total decimal(7,2)
	select @total = valor_total from quesito1 where id_escola = @id_escola
	select @total = @total+valor_total from quesito2 where id_escola = 0
	select @total = @total+valor_total from quesito3 where id_escola = 0
	select @total = @total+valor_total from quesito4 where id_escola = 0
	select @total = @total+valor_total from quesito5 where id_escola = 0
	select @total = @total+valor_total from quesito6 where id_escola = 0
	select @total = @total+valor_total from quesito7 where id_escola = 0
	select @total = @total+valor_total from quesito8 where id_escola = 0
	select @total = @total+valor_total from quesito9 where id_escola = 0
	return @total
end

create procedure sp_update(@id_escola int, @total decimal(7,2), @posicao int)
as
	declare @nota_aux decimal (7,2)
	select @nota_aux = nota_aux from escola where id = @id_escola
	if (@posicao = 3)
	begin
		set @total = IsNull(@nota_aux, 0) + @total
	end
	if (@posicao = 4)
	begin
		set @total = IsNull(@nota_aux, 0) + @total
	end
	if (@posicao = 5)
	begin
		set @total = IsNull(@nota_aux, 0) + @total
		update escola
			set nota_aux = @total
			where id = @id_escola
	end
	update escola
		set total_pontos = @total
		where id = @id_escola

create procedure sp_verQuesito (@id_q int)
as
	if(@id_q = 0)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito1 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 1)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito2 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 2)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito3 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 3)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito4 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 4)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito5 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 5)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito6 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 6)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito7 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 7)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito8 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 8)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito9 q
		inner join escola es
		on q.id_escola = es.id
	end

create procedure sp_verTotal
as
	update escola
		set total_pontos = dbo.fn_verTotal(0)
		where id = 0
	update escola
		set total_pontos = dbo.fn_verTotal(1)
		where id = 1
	update escola
		set total_pontos = dbo.fn_verTotal(2)
		where id = 2
	update escola
		set total_pontos = dbo.fn_verTotal(3)
		where id = 3
	update escola
		set total_pontos = dbo.fn_verTotal(4)
		where id = 4
	update escola
		set total_pontos = dbo.fn_verTotal(5)
		where id = 5
	update escola
		set total_pontos = dbo.fn_verTotal(6)
		where id = 6
	update escola
		set total_pontos = dbo.fn_verTotal(7)
		where id = 7
	update escola
		set total_pontos = dbo.fn_verTotal(8)
		where id = 8
	update escola
		set total_pontos = dbo.fn_verTotal(9)
		where id = 9
	update escola
		set total_pontos = dbo.fn_verTotal(10)
		where id = 10
	update escola
		set total_pontos = dbo.fn_verTotal(11)
		where id = 11
	update escola
		set total_pontos = dbo.fn_verTotal(12)
		where id = 12
	update escola
		set total_pontos = dbo.fn_verTotal(13)
		where id = 13
	select nome_escola as nome, total_pontos as total
		from escola
		order by total desc