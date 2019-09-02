create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste value
('1','André','47'),
('2','José','44'),
('3','Mané','55');

select * from cursos;

drop table if exists testecursos;

desc cursos;

alter table gafanhotos change column prof profissao varchar(20);


insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritimos', 'Lógica de programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução a linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças rítimicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2108'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

update cursos set nome = 'HTML5' where idcurso = '1';

update cursos set nome = 'PHP', ano = '2015' where idcurso = '4';

update cursos set ano = '2018', carga = '0' where ano = '2050' limit 1; 

select * from cursos;

delete from cursos where carga = '0' limit 1;

truncate table cursos;

describe cursos;

select * from cursos order by nome;

select * from cursos order by nome desc;

select ano, carga from cursos order by carga;

select nome, sexo from gafanhotos order by sexo asc;

select * from cursos where ano = 2016 order by nome;

select nome, descricao from cursos where ano <= 2015 order by nome;

select nome, ano from cursos where ano between 2014 and 2016;

select nome, ano from cursos where ano in (2014, 2016);

select nome, carga, totaulas from cursos where carga > 35 and totaulas < 30;

select * from cursos where nome like '___a%';

select distinct carga from cursos order by carga; 

select count(*) from cursos where carga > 40;

select max(carga) from cursos;

select min(totaulas), nome from cursos where ano = 2016; 

select sum(totaulas) from cursos;

select sum(totaulas) from cursos where ano = 2016;

select avg(totaulas) from cursos where ano = 2016;


