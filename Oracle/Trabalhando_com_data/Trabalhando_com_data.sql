-- criando tabela funcionário
CREATE TABLE funcionario(
   cod_func NUMBER(3)   NOT NULL PRIMARY KEY,
   nome     VARCHAR(50) NOT NULL,
   dt_adm   DATE        NOT NULL,
   dt_desl  DATE,
   dt_nasc  DATE        NOT NULL
);

-- Inserindo os dados na tabela
INSERT INTO funcionario VALUES ( 1, 'Jose Antonio',    '10/01/2000',  NULL,         '21/10/1983');
INSERT INTO funcionario VALUES ( 2, 'Paula Fernandes', '18/05/1999',  '01/11/2011', '10/07/1975');
INSERT INTO funcionario VALUES ( 3, 'Pedro Henrique',  '03/02/2009',  NULL,         '13/09/1982');
INSERT INTO funcionario VALUES ( 4, 'Carlos Gomes',    '01/10/2011',  NULL,         '04/04/1987');
INSERT INTO funcionario VALUES ( 5, 'Fernanda Lima',   '10/05/2003',  '02/03/2011', '03/08/1974');
INSERT INTO funcionario VALUES ( 6, 'João Simon',      '02/04/2004',  NULL,         '07/10/1972');
INSERT INTO funcionario VALUES ( 7, 'Renato Antonio',  '06/01/2000',  NULL,         '02/03/1983');
INSERT INTO funcionario VALUES ( 8, 'Carla  Joaquina', '03/08/2000',  '04/01/2010', '06/10/1975');
INSERT INTO funcionario VALUES ( 9, 'Simão Andrade',   '08/03/2004',  NULL,         '01/09/1962');
INSERT INTO funcionario VALUES ( 10, 'Silvio Santos',  '02/04/2004',  NULL,         '02/07/1931');
INSERT INTO funcionario VALUES ( 11, 'Ana Maria',      '11/05/2006',  '17/08/2010', '13/04/1988');
INSERT INTO funcionario VALUES ( 12, 'Raul Seixas',    '10/05/2002',  NULL,         '11/01/1961');

-- Selecionando o nome dos funcionários que nasceram no ano de 1983
SELECT
   nome
FROM funcionario
  WHERE EXTRACT(YEAR FROM dt_nasc) = 1983;

-- Selecionando o nome e data de desligamento dos funcionários que foram desligados da empresa em 2011
SELECT
   nome,
   dt_desl
FROM funcionario
   WHERE EXTRACT(YEAR FROM dt_desl) = 2011;

-- Selecionando o nome e data de admissão dos funcionários que foram admitidos no mês de Janeiro de 2000 em ordem alfabética
SELECT
   nome,
   dt_adm
FROM funcionario
WHERE EXTRACT(MONTH FROM dt_adm) = 01
and EXTRACT(YEAR FROM dt_adm) = 2000
ORDER BY nome;

-- Selecionando o nome e idade dos funcionários que têm mais de 35 anos
SELECT
   nome,
   FLOOR((SYSDATE - dt_nasc) / 365) AS idade
FROM funcionario 
WHERE (SYSDATE - dt_nasc) / 365 > 30;

-- Selecionando o nome, data de admissão e tempo de casa dos funcionários que trabalham na empresa a mais de 5 anos
SELECT
   nome,
   dt_adm,
   FLOOR((SYSDATE - dt_adm) / 365) AS tempo_casa
FROM funcionario
WHERE (SYSDATE - dt_adm) / 365 > 5;

-- Selecionando o nome, data de admissão e tempo de casa dos funcionários que trabalham na empresa a menos de 5 anos
SELECT
   nome,
   dt_adm,
   FLOOR((SYSDATE - dt_adm) / 365) AS tempo_casa
FROM funcionario
WHERE (SYSDATE - dt_adm) / 365 < 5;

/*
   Selecionando o nome e data de desligamento dos funcionários, mostrando o dia por extenso abreviado,
   o número do dia, o mês por extenso e o ano, em ordem alfabética 
*/
SELECT
   nome,
   TO_CHAR(dt_desl, 'DY, DD/MONTH/YYYY') AS Desligamento
FROM funcionario
WHERE dt_desl IS NOT NULL
ORDER BY nome;
