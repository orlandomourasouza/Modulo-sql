create database db_escola_danca;

use db_escola_danca;

create table alunos (
	codigo smallint auto_increment,
	nascimento date not null ,
	nome varchar(70),
	sexo char(1) default 'F',
	endereco varchar(90),
	primary key (codigo),
	check (sexo in ('F','M'))
);

create table modalidade (
	id int auto_increment,
    nome_danca varchar(40),
    carga_horaria int,
    primary key(id)
);

create table instrutor (
	cpf char(14),
    nome varchar(40) not null,
    especialidade varchar(30) default 'fit dance',
    fone int,
    salario decimal(8,2) not null,
    primary key (cpf),
    check (especialidade in ('fit dance','forró','zumba','danca de salão','kuduro','lambada'))
);

create table matricula (
	valor decimal(9,2) not null,
    vencimento date,
    codigo_aluno smallint,
    id_modalidade int,
    cpf_instrutor char(14),
    constraint pk_matricula_escola primary key(codigo_aluno,id_modalidade,cpf_instrutor),
    foreign key (codigo_aluno) references alunos(codigo) on delete restrict,
    constraint fk_modalidade_matricula foreign key (id_modalidade) references modalidade(id),
    foreign key (cpf_instrutor) references instrutor(cpf) on delete cascade
);

insert into alunos (nascimento,nome, sexo,endereco) values (41,'2001-07-07','Kleyciely Alves','F','Rua alfa');

select * from alunos;

insert into alunos (nascimento,nome, sexo,endereco) values ('2002-03-07','Orlando Moura','M','Rua Rafael');

insert into instrutor values ('111.222','jonas silva', 'fit danca',83999,456.82);

select * from instrutor;

insert into modadelidade value (1001,'kuduro modo on',100), (1002,'forro miudinho',60),(1003,'kuduro modo off', 88);

select * from modadelidade;

alter table alunos add column e_mail varchar(50);

select * from alunos;

insert into matricula values (578.98,'2021-12-15',3,1003,'222.333');

select * from matrcula;

select * from alunos;

delete from alunos where codigo =3;

