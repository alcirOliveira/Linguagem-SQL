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