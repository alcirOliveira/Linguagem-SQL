-- criando tabela funcionário
CREATE TABLE funcionario(
   cod_func INTEGER(3) NOT NULL PRIMARY KEY,
   nome VARCHAR(50) NOT NULL,
   dt_adm DATE NOT NULL,
   dt_desl DATE,
   dt_nasc DATE NOT NULL
);

-- Inserindo os dados na tabela
INSERT INTO funcionario VALUES ( 1,  'Jose Antonio',    '2000/01/10',  NULL,         '1983/10/21');
INSERT INTO funcionario VALUES ( 2,  'Paula Fernandes', '1999/05/18',  '2011/11/01', '1975/07/10');
INSERT INTO funcionario VALUES ( 3,  'Pedro Henrique',  '2009/02/03',  NULL,         '1982/09/13');
INSERT INTO funcionario VALUES ( 4,  'Carlos Gomes',    '2011/10/01',  NULL,         '1987/04/04');
INSERT INTO funcionario VALUES ( 5,  'Fernanda Lima',   '2003/05/10',  '2011/03/02', '1974/08/03');
INSERT INTO funcionario VALUES ( 6,  'João Simon',      '2004/04/02',  NULL,         '1972/10/07');
INSERT INTO funcionario VALUES ( 7,  'Renato Antonio',  '2000/01/06',  NULL,         '1983/03/02');
INSERT INTO funcionario VALUES ( 8,  'Carla  Joaquina', '2000/08/03',  '2010/01/04', '1975/10/06');
INSERT INTO funcionario VALUES ( 9,  'Simão Andrade',   '2004/03/08',  NULL,         '1962/09/01');
INSERT INTO funcionario VALUES ( 10, 'Silvio Santos',   '2004/04/02',  NULL,         '1931/07/02');
INSERT INTO funcionario VALUES ( 11, 'Ana Maria',       '2006/05/11',  '2010/08/17', '1988/04/13');
INSERT INTO funcionario VALUES ( 12, 'Raul Seixas',     '2002/05/10',  NULL,         '1961/01/11');

-- Selecionando o nome e data de nascimento dos funcionários que nasceram no ano de 1983
SELECT
   nome,
   dt_nasc
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

-- Selecionando o nome e idade dos funcionários que têm mais de 40 anos
SELECT
   nome,
   FLOOR((DATEDIFF(NOW(), dt_nasc )) / 365) AS idade
FROM funcionario 
WHERE FLOOR((DATEDIFF(NOW(), dt_nasc )) / 365) > 40;

-- Selecionando o nome, data de admissão e tempo de casa dos funcionários que trabalham na empresa a mais de 10 anos
SELECT
   nome,
   dt_adm,
   FLOOR((DATEDIFF(NOW(), dt_adm )) / 365) AS tempo_casa
FROM funcionario
WHERE FLOOR((DATEDIFF(NOW(), dt_adm )) / 365) > 10;

-- Selecionando o nome, data de admissão e tempo de casa dos funcionários que trabalham na empresa a menos de 5 anos
SELECT
   nome,
   dt_adm,
   FLOOR((DATEDIFF(NOW(), dt_adm )) / 365) AS tempo_casa
FROM funcionario
WHERE FLOOR((DATEDIFF(NOW(), dt_adm )) / 365) < 5;

/*
   Selecionando o nome e data de desligamento dos funcionários, mostrando o dia por extenso abreviado,
   o número do dia, o mês por extenso e o ano, em ordem alfabética 
*/
SELECT
   nome,
   DATE_FORMAT (dt_desl, '%a, %d-%M-%Y') AS Desligamento
FROM funcionario
WHERE dt_desl IS NOT NULL
ORDER BY nome;