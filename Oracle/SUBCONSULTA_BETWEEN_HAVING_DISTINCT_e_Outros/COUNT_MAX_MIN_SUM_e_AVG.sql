----------------------------------------------------------------------------------
-- FUNÇÕES DE AGREGAÇÃO: COUNT,  MAX,  MIN, SUM e AVG

-- Listando a quantidade de empregados: 
SELECT 
   COUNT(*) AS Total_nomeFunc
FROM funcionario;

-- Listando a quantidade de empregados no departamento de Informática
SELECT
   COUNT(*) AS TOTAL_nomeFunc
FROM funcionario
WHERE idDept = 3;

-- Listando a quantidade de departamentos cadastrados
SELECT
   COUNT(*) AS Total_Depto
FROM departamento ;

-- Listando a quantidade de comissões pagas
SELECT
   COUNT(com) AS QTD_com
FROM funcionario;

-- Listando o maior e o menor salário da empresa
SELECT
   MAX(sal) AS Maior_Salario,
   MIN(sal) AS Menor_Salario
FROM funcionario;

-- Listando a maior comissão paga para os empregados
SELECT
   MAX(com) AS Maior_Comissao
FROM funcionario;

-- Listando a soma dos salários de todos os funcionários
SELECT
   SUM(sal) AS Soma_dos_Salarios
FROM funcionario;

-- Listando a média dos salários de todos os funcionários
SELECT
   AVG(sal) AS Media_dos_Salarios
FROM funcionario;

-- Listando o menor, maior e a média salarial do departamento informática
SELECT
   MIN(sal) AS Menor_Salario,
   MAX(sal) AS Maior_Salario,
   AVG(sal) AS Media_Salarial
FROM funcionario
WHERE idDept = 3;