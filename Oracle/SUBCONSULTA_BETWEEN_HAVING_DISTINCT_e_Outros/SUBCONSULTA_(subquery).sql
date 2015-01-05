----------------------------------------------------------------------------------
-- SUBCONSULTA (subquery)

-- Selecionando o nome do funcionário com o maior salário da empresa
SELECT
   nomeFunc,
   sal
FROM funcionario
WHERE sal = (
              SELECT 
                 MAX(sal)
              FROM funcionario
            );

-- Selecionando o nome e salário dos funcionários cujo salário é 8 vezes menor que a soma das comissões
SELECT
   nomeFunc,
   sal 
FROM funcionario
WHERE sal < (
              SELECT
                 sum(com) / 8
              FROM funcionario
            );

-- Selecionando os funcionários que pertencem ao departamento de código 6
SELECT
   nomeFunc
FROM funcionario
WHERE idDept in (
                  SELECT
                     idDept
                  FROM funcionario
                  WHERE idDept = 6
                );

-- Selecionando os funcionários que não pertencem ao departamento de código 3, em ordem alfabética
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

-- Selecionando o departamento que pagou a menor comissão
SELECT
   idDept
FROM funcionario
WHERE com = (
              SELECT
                 MIN(com)
              FROM funcionario
            );

-- Selecionando o funcionário, com seu cargo, que ganhou o maior salário (salário mais comissão)
SELECT
   nomeFunc,
   cargo
FROM funcionario
WHERE sal + com = (
                    SELECT
                       MAX(sal + com)
                    FROM funcionario
                  );

-- Selecionando os funcionários que receberam comissões acima da média
SELECT
   nomeFunc,
   com
FROM funcionario
WHERE com > (
              SELECT
                 AVG(com)
              FROM funcionario
            );