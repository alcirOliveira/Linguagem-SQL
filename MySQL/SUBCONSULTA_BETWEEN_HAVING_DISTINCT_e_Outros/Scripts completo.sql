-- criando tabela departamento
CREATE TABLE departamento(
   idDept   INTEGER(2)  NOT NULL PRIMARY KEY,
   nomedept VARCHAR(20) NOT NULL,
   local    CHAR(2)     NOT NULL
);

-- Comando para verificar a estrutura da tabela departamento
DESCRIBE TABLE departamento;

-- Inserindo dados na tabela departamento
INSERT INTO departamento VALUES(1,  'Marketing',     'SP');
INSERT INTO departamento VALUES(2,  'Financeiro',    'SP');
INSERT INTO departamento VALUES(3,  'Inform�tica',   'MG');
INSERT INTO departamento VALUES(4,  'Produ��o',      'SP');
INSERT INTO departamento VALUES(5,  'Vendas',        'RJ');
INSERT INTO departamento VALUES(6,  'Compras',       'SP');
INSERT INTO departamento VALUES(7,  'RH',            'RJ');
INSERT INTO departamento VALUES(8,  'Almoxarifado',  'RJ');
INSERT INTO departamento VALUES(9,  'Engenharia',    'MG');
INSERT INTO departamento VALUES(10, 'Contabilidade', 'SP');

-- Selecionando todos os registros da tabela departamento
SELECT * FROM departamento;


-- criando tabela funcion�rio
CREATE TABLE funcionario(
   idFunc   INTEGER(2)   NOT NULL PRIMARY KEY,
   nomeFunc VARCHAR(30)  NOT NULL,
   cargo    VARCHAR(15)  NOT NULL,
   idGer    INTEGER(2), 
   dataAdm  DATE         NOT NULL,
   sal      FLOAT(7,2)   NOT NULL,
   com      FLOAT(7,2),
   idDept   INTEGER(2)   NOT NULL
);

-- Comando para verificar a estrutura da tabela funcionario
DESCRIBE table funcionario;

INSERT INTO funcionario VALUES (1,  'Ant�nio Nunes',    'Programador', 3,    '2000/10/10', '3400,00', '600,00',  3);
INSERT INTO funcionario VALUES (2,  'Vilmar Almeida',   'Analista',    2,    '1999/01/01', '4300,00',  NULL,     5);
INSERT INTO funcionario VALUES (3,  'Mauro Mendon�a',   'Gerente',     3,    '1998/04/10', '6500,00', '2500,00', 1);
INSERT INTO funcionario VALUES (4,  'Paulo Gon�alves',  'Auxiliar',    5,    '1998/02/09', '1200,00', '640,00',  3);
INSERT INTO funcionario VALUES (5,  'Rog�rio Meira',    'Gerente',     5,    '1999/06/09', '6400,00', '6700,00', 4);
INSERT INTO funcionario VALUES (6,  'Lima Dantes',      'Analista',    1,    '2000/10/10', '3400,00', '470,00',  3);
INSERT INTO funcionario VALUES (7,  'Ana Paula',        'Presidente',  NULL, '1996/04/09', '8800,00', '3440,00', 5);
INSERT INTO funcionario VALUES (8,  'Mauricio Souza',   'Auxiliar',    2,    '1993/02/03', '1500,00', '8340,00', 6);
INSERT INTO funcionario VALUES (9,  'Jos� Ign�cio',     'Supervisor',  2,    '1994/02/06', '4400,00', '440,00',  6);
INSERT INTO funcionario VALUES (10, 'Victor Lima',      'Auxiliar',    1,    '2000/06/30', '2000,00', '340,00',  1);
INSERT INTO funcionario VALUES (11,  'Luis Serra',      'Programador', 2,    '1997/07/08', '3200,00', '6640,00', 2);
INSERT INTO funcionario VALUES (12, 'Jos� Silva',       'Gerente',     2,    '2000/05/09', '7000,00',  NULL,     3);

-- Selecionando todos os registros da tabela funcionario
SELECT * FROM funcionario;

----------------------------------------------------------------------------------
-- ORDER BY e DISTINCT

-- Listando os cargos que existem na empresa (sem duplicidade) em ordem alfab�tica
SELECT 
   DISTINCT cargo
FROM funcionario
ORDER BY Cargo;

-- Listando o c�digo, nome e sal�rio dos empregados em ordem alfab�tica de nome
SELECT
   idFunc,
   nomeFunc,
   sal  
FROM funcionario
ORDER BY nomeFunc;

-- Listando o c�digo, nome e sal�rio dos empregados em ordem do maior para o menor sal�rio da empresa
SELECT
   idFunc,
   nomeFunc,
   sal
FROM funcionario 
ORDER BY sal DESC;

-- Listando o nome do empregado, c�digo do departamento e data de in�cio na empresa, ordenando o resultado por nome
SELECT
   nomeFunc,
   idDept,
   dataAdm
FROM funcionario 
ORDER BY nomeFunc ;

-- Listando as localidades dos departamentos existentes, sem repeti��o e em ordem alfab�tica
SELECT
   DISTINCT local
FROM departamento
ORDER BY local;

-- Listando o nome, sal�rio atual e o novo sal�rio (supondo que fosse 11,5% de aumento) para todos os funcion�rios
SELECT
   nomefunc,
   sal AS Salario_Atual,
   sal*1.15 AS Salario_Novo
FROM funcionario;

-- Listando o c�digo do empregado, o nome, a data de in�cio e sal�rio ordenando o resultado de forma decrescente pela coluna 4
SELECT
   idFunc,
   nomeFunc,
   dataAdm,
   sal
FROM funcionario
ORDER BY 4 DESC;

-- Listando os c�digos e os empregados que ganham entre 3000,00 e 5000,00
SELECT
   idFunc,
   nomeFunc
FROM funcionario
WHERE sal > 3000 AND sal < 5000;

-- Listando o c�digo do empregado, o nome, data de in�cio e sal�rio somente dos funcion�rios que s�o gerentes. O resultado deve ser apresentado em ordem alfab�tica de nome
SELECT
   idFunc, 
   nomeFunc, 
   dataAdm, 
   sal
FROM funcionario
WHERE cargo = 'Gerente'
ORDER BY nomeFunc ASC;

-- Listando os departamentos da empresa que est�o localizados no estado de S�o Paulo e Rio de Janeiro em ordem alfab�tica
SELECT
   nomeDept,
   local
FROM departamento
WHERE local = 'SP'
OR local = 'RJ'
ORDER BY nomeDept ASC;


----------------------------------------------------------------------------------
-- BETWEEN, IN, IS e LIKE

-- Listando os nomes e sal�rio dos funcion�rios que ganham entre 1000,00 e 4000,00 de sal�rio
SELECT
   nomeFunc,
   sal
FROM funcionario
WHERE sal BETWEEN '1000,00' AND '4000,00';
-- Ou WHERE sal BETWEEN 1000.00 AND 4000.00;
-- Ou WHERE sal BETWEEN 1000 AND 4000;

-- Listando os dados dos funcion�rios que n�o ganham entre 5000,00 e 10000,00 de sal�rio
SELECT * 
FROM funcionario
WHERE sal BETWEEN 5000 AND 10000;

-- Listando os nomes e comiss�es dos funcion�rios que ganham comiss�o de 440,00 e 640,00
SELECT
   nomeFunc,
   com
FROM funcionario
WHERE com IN (440,640);

-- Listando os dados dos funcion�rios que n�o ganham sal�rio de 3400,00 e 4400,00
SELECT *
FROM funcionario
WHERE sal NOT IN (3400,4400);

-- Listando os nomes dos funcion�rios que n�o ganham comiss�o
SELECT
   nomeFunc
FROM funcionario
WHERE com IS NULL;

-- Listando os nomes dos funcion�rios que ganham comiss�o
SELECT
   nomefunc
FROM funcionario
WHERE com IS NOT NULL;

-- Listando os dados dos funcion�rios cujo nome se inicie com a letra �A� 
SELECT *
FROM funcionario 
WHERE nomeFunc LIKE 'A%';

-- Listando os dados dos funcion�rios cujo nome finalize com a letra �s�
SELECT *
FROM funcionario
WHERE nomeFunc LIKE '%s';

-- Listando os dados dos funcion�rios cuja segunda letra do nome seja �o�
SELECT *
FROM funcionario
WHERE nomeFunc LIKE '_o%';

-- Listando os nomes dos funcion�rios que n�o tenham a letra �i�
SELECT *
FROM funcionario
WHERE nomeFunc NOT LIKE '%i%';
 
-- Listando os nomes dos funcion�rios que tenham a letra �e� ou a letra �u� no nome
SELECT nomeFunc
FROM funcionario
WHERE nomeFunc LIKE '%e%' 
OR nomeFunc LIKE '%u%';

-- Listando os nomes dos funcion�rios que tenham a letra �e� e a letra �u� no nome
SELECT nomeFunc
FROM funcionario
WHERE nomeFunc LIKE  '%e%'
AND nomefunc like '%u%';

-- Listando os dados dos funcion�rios cuja a letra �n� no nome � a antepen�ltima
SELECT *
FROM funcionario
WHERE nomeFunc LIKE '%n__';

-- Listando os dados dos funcion�rios que tenham o nome �Lima�
SELECT *
FROM funcionario
WHERE nomeFunc LIKE '%Lima%';


----------------------------------------------------------------------------------
-- FUN��ES DE AGREGA��O: COUNT,  MAX,  MIN, SUM e AVG

-- Listando a quantidade de empregados: 
SELECT 
   COUNT(*) AS Total_nomeFunc
FROM funcionario;

-- Listando a quantidade de empregados no departamento de Inform�tica
SELECT
   COUNT(*) AS TOTAL_nomeFunc
FROM funcionario
WHERE idDept = 3;

-- Listando a quantidade de departamentos cadastrados
SELECT
   COUNT(*) AS Total_Depto
FROM departamento ;

-- Listando a quantidade de comiss�es pagas
SELECT
   COUNT(com) AS QTD_com
FROM funcionario;

-- Listando o maior e o menor sal�rio da empresa
SELECT
   MAX(sal) AS Maior_Salario,
   MIN(sal) AS Menor_Salario
FROM funcionario;

-- Listando a maior comiss�o paga para os empregados
SELECT
   MAX(com) AS Maior_Comissao
FROM funcionario;

-- Listando a soma dos sal�rios de todos os funcion�rios
SELECT
   SUM(sal) AS Soma_dos_Salarios
FROM funcionario;

-- Listando a m�dia dos sal�rios de todos os funcion�rios
SELECT
   AVG(sal) AS Media_dos_Salarios
FROM funcionario;

-- Listando o menor, maior e a m�dia salarial do departamento inform�tica
SELECT
   MIN(sal) AS Menor_Salario,
   MAX(sal) AS Maior_Salario,
   AVG(sal) AS Media_Salarial
FROM funcionario
WHERE idDept = 3;


----------------------------------------------------------------------------------
-- GROUP BY e HAVING

-- Selecionando a quantidade de empregados por departamento
SELECT
   iddept,
   COUNT(*) AS Quantidade
FROM funcionario
GROUP BY idDept;

-- Selecionando a quantidade de empregados por departamento que ganham comiss�o
SELECT
   idDept,
   COUNT(*) AS Quantidade
FROM funcionario
WHERE com IS NOT NULL
GROUP BY idDept;

-- Selecionando a quantidade de empregados por departamento que come�aram a trabalhar depois de 01/01/1998
SELECT
   idDept,
   COUNT(*) AS Quantidade
FROM funcionario
WHERE dataAdm > '1998/01/01'
GROUP BY idDept;

-- Selecionando a quantidade de empregados que existem em cada cargo
SELECT
   cargo,
   COUNT(*) AS Quantidade
FROM funcionario
GROUP BY cargo;

-- Selecionando os cargos que possuem mais de dois empregados
SELECT
   cargo,
   COUNT(*) AS Quantidade
FROM funcionario
GROUP BY cargo
HAVING COUNT(*) > 2;

-- Selecionando os departamentos que possuem mais de um empregado
SELECT
   iddept,
   COUNT(*) AS Quantidade
FROM funcionario
GROUP BY idDept
HAVING COUNT(*) > 1;

-- Selecionando maior sal�rio em cada cargo
SELECT
   cargo,
   MAX(sal) AS Maior_salario
FROM funcionario
GROUP BY cargo;

-- Selecionando menor sal�rio em cada cargo
SELECT
   cargo,
   MIN(sal) AS Menor_salario
FROM funcionario
GROUP BY cargo;

-- Selecionando a m�dia de sal�rio em cada cargo
SELECT
   cargo,
   AVG(sal) AS Media_salario
FROM funcionario
GROUP BY cargo;

-- Selecionando a m�dia maior que o valor de 3000
SELECT
   cargo,
   AVG(sal) AS Media_salario
FROM funcionario
GROUP BY cargo
HAVING AVG(sal) > 3000;


----------------------------------------------------------------------------------
-- SUBCONSULTA (subquery)

-- Selecionando o nome do funcion�rio com o maior sal�rio da empresa
SELECT
   nomeFunc,
   sal
FROM funcionario
WHERE sal = (
              SELECT 
                 MAX(sal)
              FROM funcionario
            );

-- Selecionando o nome e sal�rio dos funcion�rios cujo sal�rio � 8 vezes menor que a soma das comiss�es
SELECT
   nomeFunc,
   sal 
FROM funcionario
WHERE sal < (
              SELECT
                 sum(com) / 8
              FROM funcionario
            );

-- Selecionando os funcion�rios que pertencem ao departamento de c�digo 6
SELECT
   nomeFunc
FROM funcionario
WHERE idDept in (
                  SELECT
                     idDept
                  FROM funcionario
                  WHERE idDept = 6
                );

-- Selecionando os funcion�rios que n�o pertencem ao departamento de c�digo 3, em ordem alfab�tica
SELECT
   nomeFunc
FROM funcionario
WHERE idDept NOT IN (
                      SELECT
                         idDept
                      FROM funcionario
                      WHERE idDept = 3
                    ) 
ORDER BY nomeFunc;

-- Selecionando o departamento que pagou a menor comiss�o
SELECT
   idDept
FROM funcionario
WHERE com = (
              SELECT
                 MIN(com)
              FROM funcionario
            );

-- Selecionando o funcion�rio, com seu cargo, que ganhou o maior sal�rio (sal�rio mais comiss�o)
SELECT
   nomeFunc,
   cargo
FROM funcionario
WHERE sal + com = (
                    SELECT
                       MAX(sal + com)
                    FROM funcionario
                  );

-- Selecionando os funcion�rios que receberam comiss�es acima da m�dia
SELECT
   nomeFunc,
   com
FROM funcionario
WHERE com > (
              SELECT
                 AVG(com)
              FROM funcionario
            );