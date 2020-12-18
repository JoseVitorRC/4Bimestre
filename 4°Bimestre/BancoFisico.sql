-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE redator (
 codRedator int PRIMARY KEY,
nome varchar(99),
 sobrenome varchar(255),
cidade varchar(99),
ddd varchar(99),
email varchar(99),
codTurma int,
dia int,
mes int,
ano int
)

CREATE TABLE noticia (
codNoticia int PRIMARY KEY,
noticia text(99999999),
titulo varchar(255),
 codRedator int,
codCategoria int,
FOREIGN KEY( codRedator) REFERENCES redator (codRedator)
)

CREATE TABLE categoria (
codCategoria int PRIMARY KEY,
categoria varchar(255)
)

CREATE TABLE turma (
codTurma int PRIMARY KEY,
turma varchar(99)
)

CREATE TABLE dia (
dia int PRIMARY KEY,
codNoticia int,
FOREIGN KEY(codNoticia) REFERENCES noticia (codNoticia)
)

CREATE TABLE ano (
ano int PRIMARY KEY,
codNoticia int,
FOREIGN KEY(codNoticia) REFERENCES noticia (codNoticia)
)

CREATE TABLE mes (
mes int PRIMARY KEY,
codNoticia int,
FOREIGN KEY(codNoticia) REFERENCES noticia (codNoticia)
)

ALTER TABLE redator ADD FOREIGN KEY(codTurma) REFERENCES turma (codTurma)
ALTER TABLE redator ADD FOREIGN KEY(dia) REFERENCES dia (dia)
ALTER TABLE redator ADD FOREIGN KEY(mes) REFERENCES mes (mes)
ALTER TABLE redator ADD FOREIGN KEY(ano) REFERENCES ano (ano)
ALTER TABLE noticia ADD FOREIGN KEY(codCategoria) REFERENCES categoria (codCategoria)
