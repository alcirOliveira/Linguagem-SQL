----------------------------------------------------------------------------------
-- GROUP BY e HAVING

-- Selecionando a quantidade de empregados por departamento
SELECT
   iddept,
   COUNT(*) AS Quantidade
FROM funcionario
GROUP BY idDept;

-- Selecionando a quantidade de empregados por departamento que ganham comissão
SELECT
   idDept,
   COUNT(*) AS Quantidade
FROM funcionario
WHERE com IS NOT NULL
GROUP BY idDept;

-- Selecionando a quantidade de empregados por departamento que começaram a trabalhar depois de 01/01/1998
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

-- Selecionando maior salário em cada cargo
SELECT
   cargo,
   MAX(sal) AS Maior_salario
FROM funcionario
GROUP BY cargo;

-- Selecionando menor salário em cada cargo
SELECT
   cargo,
   MIN(sal) AS Menor_salario
FROM funcionario
GROUP BY cargo;

-- Selecionando a média de salário em cada cargo
SELECT
   cargo,
   AVG(sal) AS Media_salario
FROM funcionario
GROUP BY cargo;

-- Selecionando a média maior que o valor de 3000
SELECT
   cargo,
   AVG(sal) AS Media_salario
FROM funcionario
GROUP BY cargo
HAVING AVG(sal) > 3000;