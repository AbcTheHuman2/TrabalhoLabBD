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
id_q int not null,
id_j int not null,
posicao int not null,
foreign key(id_q) references quesito(id),
foreign key(id_j) references jurado(id)
)

insert into escola values
(1, 'Acadêmicos do Tatuapé', 0),
(2, 'Rosas de Ouro', 0),
(3, 'Mancha Verde', 0),
(4, 'Vai-Vai', 0),
(5, 'X-9 Paulistana', 0),
(6, 'Dragões da Real', 0),
(7, 'Águia de Ouro', 0),
(8, 'Nenê de Vila Matilde', 0),
(9, 'Gaviões da Fiel', 0),
(10, 'Mocidade Alegre', 0),
(11, 'Tom Maior', 0),
(12, 'Unidos de Vila Maria', 0),
(13, 'Acadêmicos do Tucuruvi', 0),
(14, 'Império de Casa Verde', 0)

insert into quesito values
(1, 'Comissao de Frente'),
(2, 'Evolução'),
(3, 'Fantasia'),
(4, 'Bateria'),
(5, 'Alegoria'),
(6, 'Harmonia'),
(7, 'Samba-Enredo'),
(8, 'Mestre-Sala e Porta-Bandeira'),
(9, 'Enredo')

insert into jurado values
(1),
(2),
(3),
(4),
(5)

insert into juri values
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(1, 5, 5),
(2, 6, 1),
(2, 7, 2),
(2, 8, 3),
(2, 9, 4),
(2, 10, 5),
(3, 11, 1),
(3, 12, 2),
(3, 13, 3),
(3, 14, 4),
(3, 15, 5),
(4, 16, 1),
(4, 17, 2),
(4, 18, 3),
(4, 19, 4),
(4, 20, 5),
(5, 21, 1),
(5, 22, 2),
(5, 23, 3),
(5, 24, 4),
(5, 25, 5),
(6, 26, 1),
(6, 27, 2),
(6, 28, 3),
(6, 29, 4),
(6, 30, 5),
(7, 31, 1),
(7, 32, 2),
(7, 33, 3),
(7, 34, 4),
(7, 35, 5),
(8, 36, 1),
(8, 37, 2),
(8, 38, 3),
(8, 39, 4),
(8, 40, 5),
(9, 41, 1),
(9, 42, 2),
(9, 43, 3),
(9, 44, 4),
(9, 45, 5)

create procedure sp_inserir(@quesito int, @escola int, @nota decimal(7,2), @posicao int)
as
	if (@quesito = 1)
	begin
		exec sp_quesito1 @escola, @nota, @posicao
	end
	else
	if(@quesito = 2)
	begin
		exec sp_quesito2 @escola, @nota, @posicao
	end
	else
	if(@quesito = 3)
	begin
		exec sp_quesito3 @escola, @nota, @posicao
	end
	else
	if(@quesito = 4)
	begin
		exec sp_quesito4 @escola, @nota, @posicao
	end
	else
	if(@quesito = 5)
	begin
		exec sp_quesito5 @escola, @nota, @posicao
	end
	else
	if (@quesito = 6)
	begin
		exec sp_quesito6 @escola, @nota, @posicao
	end
	else
	if(@quesito = 7)
	begin
		exec sp_quesito7 @escola, @nota, @posicao
	end
	else
	if(@quesito = 8)
	begin
		exec sp_quesito8 @escola, @nota, @posicao
	end
	else
	if(@quesito = 9)
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
		where id_escola = @escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito1
		set nota3 = @nota
		where id_escola = @escola
		update quesito1
		set maior = dbo.fn_maiorNota(1, @escola)
		set menor = dbo.fn_menorNota(1, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito1
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito1
		set nota4 = @nota
		where id_escola = @escola
		update quesito1
		set maior = dbo.fn_maiorNota(1, @escola)
		set menor = dbo.fn_menorNota(1, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito1
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito1
		set nota5 = @nota
		where id_escola = @escola
		update quesito1
		set maior = dbo.fn_maiorNota(1, @escola)
		set menor = dbo.fn_menorNota(1, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito1
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 5
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
		where id_escola = @escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito2
		set nota3 = @nota
		where id_escola = @escola
		update quesito2
		set maior = dbo.fn_maiorNota(2, @escola)
		set menor = dbo.fn_menorNota(2, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito2
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito2
		set nota4 = @nota
		where id_escola = @escola
		update quesito2
		set maior = dbo.fn_maiorNota(2, @escola)
		set menor = dbo.fn_menorNota(2, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito2
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito2
		set nota5 = @nota
		where id_escola = @escola
		update quesito2
		set maior = dbo.fn_maiorNota(2, @escola)
		set menor = dbo.fn_menorNota(2, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito2
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 5
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
		where id_escola = @escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito3
		set nota3 = @nota
		where id_escola = @escola
		update quesito3
		set maior = dbo.fn_maiorNota(3, @escola)
		set menor = dbo.fn_menorNota(3, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito3
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito3
		set nota4 = @nota
		where id_escola = @escola
		update quesito3
		set maior = dbo.fn_maiorNota(3, @escola)
		set menor = dbo.fn_menorNota(3, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito3
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito3
		set nota5 = @nota
		where id_escola = @escola
		update quesito3
		set maior = dbo.fn_maiorNota(3, @escola)
		set menor = dbo.fn_menorNota(3, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito3
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 5
	end

create procedure sp_quesito4(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito4(id_escola, nota1) values
		(@id_escola, @nota)
	end
	else
	if (@posicao = 2)
	begin
		update quesito4
		set nota2 = @nota
		where id_escola = @escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito4
		set nota3 = @nota
		where id_escola = @escola
		update quesito4
		set maior = dbo.fn_maiorNota(4, @escola)
		set menor = dbo.fn_menorNota(4, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito4
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito4
		set nota4 = @nota
		where id_escola = @escola
		update quesito4
		set maior = dbo.fn_maiorNota(4, @escola)
		set menor = dbo.fn_menorNota(4, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito4
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito4
		set nota5 = @nota
		where id_escola = @escola
		update quesito4
		set maior = dbo.fn_maiorNota(4, @escola)
		set menor = dbo.fn_menorNota(4, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito4
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 5
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
		where id_escola = @escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito5
		set nota3 = @nota
		where id_escola = @escola
		update quesito5
		set maior = dbo.fn_maiorNota(5, @escola)
		set menor = dbo.fn_menorNota(5, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito5
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito5
		set nota4 = @nota
		where id_escola = @escola
		update quesito5
		set maior = dbo.fn_maiorNota(5, @escola)
		set menor = dbo.fn_menorNota(5, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito5
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito5
		set nota5 = @nota
		where id_escola = @escola
		update quesito5
		set maior = dbo.fn_maiorNota(5, @escola)
		set menor = dbo.fn_menorNota(5, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito5
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 5
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
		where id_escola = @escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito6
		set nota3 = @nota
		where id_escola = @escola
		update quesito6
		set maior = dbo.fn_maiorNota(6, @escola)
		set menor = dbo.fn_menorNota(6, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito6
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito6
		set nota4 = @nota
		where id_escola = @escola
		update quesito6
		set maior = dbo.fn_maiorNota(6, @escola)
		set menor = dbo.fn_menorNota(6, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito6
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito6
		set nota5 = @nota
		where id_escola = @escola
		update quesito6
		set maior = dbo.fn_maiorNota(6, @escola)
		set menor = dbo.fn_menorNota(6, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito6
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 5
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
		where id_escola = @escola
	end
	else
	if (@posicao = 3)
	begin
		update quesito7
		set nota3 = @nota
		where id_escola = @escola
		update quesito7
		set maior = dbo.fn_maiorNota(7, @escola)
		set menor = dbo.fn_menorNota(7, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito7
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito7
		set nota4 = @nota
		where id_escola = @escola
		update quesito7
		set maior = dbo.fn_maiorNota(7, @escola)
		set menor = dbo.fn_menorNota(7, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito7
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito7
		set nota5 = @nota
		where id_escola = @escola
		update quesito7
		set maior = dbo.fn_maiorNota(7, @escola)
		set menor = dbo.fn_menorNota(7, @escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito7
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @escola
		exec sp_updateEscola @escola, @total, 5
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
		set maior = dbo.fn_maiorNota(8, @escola)
		set menor = dbo.fn_menorNota(8, @escola)
		where id_escola = @id_escola
		select @total = @dbo.fn_notaTotal(@escola, 1)
		update quesito8
		set total = @total
		where id_escola = @id_escola
		select @total = total from quesito1 where id_escola = @id_escola
		exec sp_updateEscola @id_escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito8
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito8
		set maior = dbo.fn_maiorNota(8, @id_escola)
		set menor = dbo.fn_menorNota(8, @id_escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@id_escola, 1)
		update quesito8
		set total = @total
		where id_escola = @id_escola
		select @total = total from quesito1 where id_escola = @id_escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito8
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito8
		set maior = dbo.fn_maiorNota(8, @id_escola)
		set menor = dbo.fn_menorNota(8, @id_escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@id_escola, 1)
		update quesito8
		set total = @total
		where id_escola = @escola
		select @total = total from quesito1 where id_escola = @id_escola
		exec sp_updateEscola @escola, @total, 5
	end
	
	create procedure sp_quesito9(@id_escola int, @nota decimal(7,2), @posicao int)
as
	declare @maior decimal(7,2),
			@menor decimal(7,2),
			@total decimal(7,2)
	if (@posicao = 1)
	begin
		insert into quesito9(id_escola, nota1) values
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
		set maior = dbo.fn_maiorNota(9, @id_escola)
		set menor = dbo.fn_menorNota(9, @id_escola)
		where id_escola = @escola
		select @total = @dbo.fn_notaTotal(@id_escola, 1)
		update quesito9
		set total = @total
		where id_escola = @@id_escola
		select @total = total from quesito1 where id_escola = @id_escola
		exec sp_updateEscola @escola, @total, 3
	end
		if (@posicao = 4)
	begin
		update quesito9
		set nota4 = @nota
		where id_escola = @id_escola
		update quesito9
		set maior = dbo.fn_maiorNota(9, @id_escola)
		set menor = dbo.fn_menorNota(9, @id_escola)
		where id_escola = @id_escola
		select @total = @dbo.fn_notaTotal(@id_escola, 1)
		update quesito9
		set total = @total
		where id_escola = @id_escola
		select @total = total from quesito1 where id_escola = @id_escola
		exec sp_updateEscola @escola, @total, 4
	end
		if (@posicao = 5)
	begin
		update quesito9
		set nota5 = @nota
		where id_escola = @id_escola
		update quesito9
		set maior = dbo.fn_maiorNota(9, @id_escola)
		set menor = dbo.fn_menorNota(9, @id_escola)
		where id_escola = @id_escola
		select @total = @dbo.fn_notaTotal(@id_escola, 1)
		update quesito9
		set total = @total
		where id_escola = @id_escola
		select @total = total from quesito1 where id_escola = @id_escola
		exec sp_updateEscola @escola, @total, 5
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
	if (@quesito = 1)
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
	if (@quesito = 2)
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
			quesito3
		where id_escola = @id_escola
	end
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
			quesito4
		where id_escola = @id_escola
	end
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
			quesito5
		where id_escola = @id_escola
	end
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
			quesito6
		where id_escola = @id_escola
	end
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
			quesito7
		where id_escola = @id_escola
	end
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
			quesito8
		where id_escola = @id_escola
	end
	end
	else
	begin
	if (@quesito = 9)
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
			@maior decimal(7,2)
	if (@quesito = 1)
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
	if (@quesito = 2)
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
			quesito3
		where id_escola = @id_escola
	end
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
			quesito4
		where id_escola = @id_escola
	end
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
			quesito5
		where id_escola = @id_escola
	end
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
			quesito6
		where id_escola = @id_escola
	end
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
			quesito7
		where id_escola = @id_escola
	end
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
			quesito8
		where id_escola = @id_escola
	end
	end
	else
	begin
	if (@quesito = 9)
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
		quesito1
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
			quesito2
		where id_escola = @id_escola
	end
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
			quesito3
		where id_escola = @id_escola
	end
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
			quesito4
		where id_escola = @id_escola
	end
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
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito5
		where id_escola = @id_escola
	end
	end
	else
	begin
	if (@quesito = 6) begin
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
			quesito7
		where id_escola = @id_escola
	end
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
			@nota5 = nota5,
			@maior = maior,
			@menor = menor
		from
			quesito8
		where id_escola = @id_escola
	end
	end
	else
	begin
	if (@quesito = 9) begin
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
	select @total = total from quesito1 where id_escola = @id_escola
	select @total = @total+total from quesito2 where id_escola = 0
	select @total = @total+total from quesito3 where id_escola = 0
	select @total = @total+total from quesito4 where id_escola = 0
	select @total = @total+total from quesito5 where id_escola = 0
	select @total = @total+total from quesito6 where id_escola = 0
	select @total = @total+total from quesito7 where id_escola = 0
	select @total = @total+total from quesito8 where id_escola = 0
	select @total = @total+total from quesito9 where id_escola = 0
	return @total
end

create procedure sp_update(@id_escola int, @total decimal(7,2), @posicao int)
as
	declare @nota_aux decimal (7,2)
	select @nota_aux = nota_aux from escola where id_escola = @id_escola
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
			where id_escola = @id_escola
	end
	update escola
		set nota_final = @total
		where id_escola = @id_escola

create procedure sp_verQuesito (@id_q int)
as
	if(@id_q = 1)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito1 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 2)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito2 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 3)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito3 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 4)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito4 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 5)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito5 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 6)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito6 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 7)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito7 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 8)
	begin
		select es.nome_escola, q.nota1, q.nota2, q.nota3, q.nota4, q.nota5,
		q.maior, q.menor, q.valor_total
		from quesito8 q
		inner join escola es
		on q.id_escola = es.id
	end
	if(@id_q = 9)
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
		set total_pontos = dbo.fn_verTotal(1)
		where id_escola = 1
	update escola
		set total_pontos = dbo.fn_verTotal(2)
		where id_escola = 2
	update escola
		set total_pontos = dbo.fn_verTotal(3)
		where id_escola = 3
	update escola
		set total_pontos = dbo.fn_verTotal(4)
		where id_escola = 4
	update escola
		set total_pontos = dbo.fn_verTotal(5)
		where id_escola = 5
	update escola
		set total_pontos = dbo.fn_verTotal(6)
		where id_escola = 6
	update escola
		set total_pontos = dbo.fn_verTotal(7)
		where id_escola = 7
	update escola
		set total_pontos = dbo.fn_verTotal(8)
		where id_escola = 8
	update escola
		set total_pontos = dbo.fn_verTotal(9)
		where id_escola = 9
	update escola
		set total_pontos = dbo.fn_verTotal(10)
		where id_escola = 10
	update escola
		set total_pontos = dbo.fn_verTotal(11)
		where id_escola = 11
	update escola
		set total_pontos = dbo.fn_verTotal(12)
		where id_escola = 12
	update escola
		set total_pontos = dbo.fn_verTotal(13)
		where id_escola = 13
	update escola
		set total_pontos = dbo.fn_verTotal(14)
		where id_escola = 14
	select nome_escola as nome, total_pontos as total
		from escola
		order by total desc