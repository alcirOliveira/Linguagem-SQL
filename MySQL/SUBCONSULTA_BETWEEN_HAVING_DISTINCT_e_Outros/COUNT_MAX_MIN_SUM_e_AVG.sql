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