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