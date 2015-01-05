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