----------------------------------------------------------------------------------
-- ORDER BY e DISTINCT

-- Listando os cargos que existem na empresa (sem duplicidade) em ordem alfabética
SELECT 
   DISTINCT cargo
FROM funcionario
ORDER BY Cargo;

-- Listando o código, nome e salário dos empregados em ordem alfabética de nome
SELECT
   idFunc,
   nomeFunc,
   sal  
FROM funcionario
ORDER BY nomeFunc;

-- Listando o código, nome e salário dos empregados em ordem do maior para o menor salário da empresa
SELECT
   idFunc,
   nomeFunc,
   sal
FROM funcionario 
ORDER BY sal DESC;

-- Listando o nome do empregado, código do departamento e data de início na empresa, ordenando o resultado por nome
SELECT
   nomeFunc,
   idDept,
   dataAdm
FROM funcionario 
ORDER BY nomeFunc ;

-- Listando as localidades dos departamentos existentes, sem repetição e em ordem alfabética
SELECT
   DISTINCT local
FROM departamento
ORDER BY local;

-- Listando o nome, salário atual e o novo salário (supondo que fosse 11,5% de aumento) para todos os funcionários
SELECT
   nomefunc,
   sal AS Salario_Atual,
   sal*1.15 AS Salario_Novo
FROM funcionario;

-- Listando o código do empregado, o nome, a data de início e salário ordenando o resultado de forma decrescente pela coluna 4
SELECT
   idFunc,
   nomeFunc,
   dataAdm,
   sal
FROM funcionario
ORDER BY 4 DESC;

-- Listando os códigos e os empregados que ganham entre 3000,00 e 5000,00
SELECT
   idFunc,
   nomeFunc
FROM funcionario
WHERE sal > 3000 AND sal < 5000;

-- Listando o código do empregado, o nome, data de início e salário somente dos funcionários que são gerentes. O resultado deve ser apresentado em ordem alfabética de nome
SELECT
   idFunc, 
   nomeFunc, 
   dataAdm, 
   sal
FROM funcionario
WHERE cargo = 'Gerente'
ORDER BY nomeFunc ASC;

-- Listando os departamentos da empresa que estão localizados no estado de São Paulo e Rio de Janeiro em ordem alfabética
SELECT
   nomeDept,
   local
FROM departamento
WHERE local = 'SP'
OR local = 'RJ'
ORDER BY nomeDept ASC;