-- Criando a tabela cadastroDVD
CREATE TABLE cadastroDVD ( 
   id_cad_DVD INTEGER NOT NULL PRIMARY KEY, 
   titulo_DVD CHAR(20) NOT NULL,
   preco_DVD NUMERIC(5,2) NOT NULL 
);

-- Inserindo os dados na tabela
INSERT INTO cadastroDVD VALUES ( 100, 'Lua Nova',           39.90);
INSERT INTO cadastroDVD VALUES ( 101, 'O concerto',         29.90);
INSERT INTO cadastroDVD VALUES ( 102, 'A Informante',       19.90);
INSERT INTO cadastroDVD VALUES ( 103, 'Um Sonho Possível',  39.90);
INSERT INTO cadastroDVD VALUES ( 104, 'Batman',             17.90);
INSERT INTO cadastroDVD VALUES ( 105, 'Avatar',             29.90);
INSERT INTO cadastroDVD VALUES ( 106, 'Chico Xavier',       39.90);
INSERT INTO cadastroDVD VALUES ( 107, 'Pânico 4',           29.90);
INSERT INTO cadastroDVD VALUES ( 108, 'Rango',              49.90);
INSERT INTO cadastroDVD VALUES ( 109, 'Rio',                22.90);

-- Selecionando todos os dados da tabela
SELECT * FROM cadastroDVD;

-- Mostra somente o titulo e preço registrado na tabela
SELECT 
   titulo_DVD, 
   preco_DVD 
FROM cadastroDVD;

-- Mostra todos os campos dos filmes com preço acima de 30,00 
SELECT * 
FROM cadastroDVD 
WHERE preco_DVD > 30.0;

-- Insirindo dois filmes na tabela
-- ID: 110 – Moulin Rouge – 34,90
-- ID: 111 – House – 29,90
INSERT INTO cadastroDVD VALUES (110, 'Moulin Rouge', 34.90);
INSERT INTO cadastroDVD VALUES (111, 'House', 29.90);

-- Listando a coluna título de todos os filmes inseridos na tabela, por ordem alfabética
SELECT 
   titulo_DVD 
FROM cadastroDVD 
ORDER BY titulo_DVD;

-- Alterando o preço do DVD de código 104 (Batman) para 24,90
UPDATE cadastroDVD SET preco_DVD = 24.90 WHERE id_cad_DVD = 104;

-- Para verificar a alteração de preço do filme Batman
SELECT
   titulo_DVD,
   preco_DVD
FROM cadastroDVD
WHERE id_cad_DVD = 104;

-- Listando o título, preço atual e o preço novo, supondo que fosse 30% de aumento, em todos os DVDs
SELECT 
   titulo_DVD, 
   preco_DVD AS Preço_Velho, 
   preco_DVD + (preco_DVD * 0.30) AS Preço_Novo 
FROM cadastroDVD;

-- Reajustando o preço do filme Batman em 12%
UPDATE cadastroDVD SET preco_DVD = preco_DVD + (( preco_DVD * 12 ) / 100) WHERE id_cad_Dvd = 104;
-- ou
UPDATE cadastroDVD SET preco_DVD = preco_DVD + (preco_DVD * 0.12) WHERE id_cad_Dvd = 104;

-- Aplicando um desconto de 20% no filme Lua Nova
UPDATE cadastroDVD SET preco_DVD = preco_DVD - (preco_DVD * 0.20) WHERE id_cad_Dvd = 100;

-- Excluindo os filmes com preço inferior a 20,00
DELETE FROM cadastroDVD WHERE preco_DVD < 20.00;

-- Excluindo o filme Rango
DELETE FROM cadastroDVD WHERE id_cad_Dvd = 108;