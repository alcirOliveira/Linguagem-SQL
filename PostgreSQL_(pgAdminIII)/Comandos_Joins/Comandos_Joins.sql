-- Criando a tabela produto
CREATE TABLE produto ( 
   idprod INTEGER     NOT NULL PRIMARY KEY,
   espec  VARCHAR(20) NOT NULL,
   so     VARCHAR(20) NOT NULL,
   ram    INTEGER     NOT NULL,
   hd     INTEGER     NOT NULL
);

-- Inserindo dados na tabela produto
INSERT INTO produto VALUES(1, 'Pentium', 'Widows',    1024, 160);
INSERT INTO produto VALUES(2, 'Pentium', 'Linux',     1024, 250);
INSERT INTO produto VALUES(3, 'Celeron', 'Win2003',   2048, 250);
INSERT INTO produto VALUES(4, 'AMD',     'WinXP',     4096, 320);
INSERT INTO produto VALUES(5, 'AMD',     'WinVista',  4096, 512);
INSERT INTO produto VALUES(6, 'Core i5', 'Win8',      1024, 160);

-- Criando a tabela cliente
CREATE TABLE cliente ( 
   idcli INTEGER     NOT NULL PRIMARY KEY,
   nome  VARCHAR(40) NOT NULL,
   fone  VARCHAR(20),
   email VARCHAR(40)
);

-- Inserindo dados na tabela cliente
INSERT INTO cliente VALUES(1, 'ABC Brasil Turismo',   '2345-9876',     'abc@abc.com.br');
INSERT INTO cliente VALUES(2, 'Empresa Guaporé',      '1230-1277',     'eguapore@uol.com.br');
INSERT INTO cliente VALUES(3, 'Financeira Invest',    '4598-9999',     'fininvest@ig.com.br');
INSERT INTO cliente VALUES(4, 'Casa de Carnes Guaçu', '2309-1951',     'guacu@hotmail.com.br');
INSERT INTO cliente VALUES(5, 'Escola Santo Antonio', '4409-1876',     'esa@yahoo.com.br');
INSERT INTO cliente VALUES(6, 'Vinícula Uvanova',     '(41)4498-8756', 'vinuvanova@ig.com.br');
INSERT INTO cliente VALUES(7, 'Casa de Frangos Joel', '5505-0876',     'cfrangojoel@uol.com.br');


-- Criando a tabela pedido
-- ** (FK) chave estrangeira
CREATE TABLE pedido ( 
   idped   INTEGER   NOT NULL,
   dataped DATE      NOT NULL,
   idprod  INTEGER, 
   idcli   INTEGER,
   CONSTRAINT tabped_PK PRIMARY KEY (idped), 
   CONSTRAINT tabped_tabprod_FK FOREIGN KEY (idprod) REFERENCES produto (idprod),
   CONSTRAINT tabped_tabcli_FK  FOREIGN KEY (idcli)  REFERENCES cliente (idcli)
);

-- Inserindo dados na tabela pedido
INSERT INTO pedido VALUES(1,  '10/10/2009', 3, 2);
INSERT INTO pedido VALUES(2,  '09/07/2010', 2, 2);
INSERT INTO pedido VALUES(3,  '10/01/2011', 2, 4);
INSERT INTO pedido VALUES(4,  '10/10/2010', 1, 4);
INSERT INTO pedido VALUES(5,  '11/07/2009', 4, 4);
INSERT INTO pedido VALUES(6,  '10/08/2010', 3, 5);
INSERT INTO pedido VALUES(7,  '10/02/2011', 5, 1);
INSERT INTO pedido VALUES(8,  '10/02/2011', 1, 3);
INSERT INTO pedido VALUES(9,  '10/02/2011', 5, 6);
INSERT INTO pedido VALUES(10, '10/02/2011', 6, 5);

-- Listando os códigos dos pedidos com seus respectivos nomes de clientes e nomes de produtos
SELECT
   idped,
   nome,
   espec
FROM pedido ped
INNER JOIN cliente cli ON cli.idcli = ped.idcli
INNER JOIN produto prod ON prod.idprod = ped.idprod;

--ou com USING
SELECT
   idped,
   nome,
   espec
FROM pedido
INNER JOIN cliente USING(idcli)
INNER JOIN produto USING(idprod);


-- Listando os códigos dos pedidos, datas de emissão e especificação dos produtos solicitados 
SELECT
   idped,
   dataped,
   espec
FROM pedido ped
INNER JOIN produto prod ON ped.idprod = prod.idprod;

-- Ou
SELECT
   idped,
   dataped,
   espec
FROM pedido
INNER JOIN produto USING(idprod);


-- Listando os códigos dos pedidos com os sistemas operacionais solicitados
SELECT
   idped,
   so
FROM pedido ped
INNER JOIN produto prod ON ped.idprod = prod.idprod;

-- Ou
SELECT
   idped,
   so
FROM pedido
INNER JOIN produto USING(idprod);


-- Listando as datas de pedidos com os nomes de clientes, ordenados pelo nome do cliente
SELECT
   dataped,
   nome
FROM pedido ped
INNER JOIN cliente cli ON ped.idcli = cli.idcli
ORDER BY nome;

-- Ou
SELECT
   dataped,
   nome
FROM pedido
INNER JOIN cliente USING(idcli)
ORDER BY nome;


-- Listando os códigos dos pedidos, códigos de clientes e e-mails
SELECT
   idped,
   idcli,
   email
FROM pedido
NATURAL JOIN cliente;


-- Listando os nomes de clientes e telefones que não possuem registros de pedidos
SELECT
   nome,
   fone
FROM cliente
LEFT JOIN pedido USING(idcli)
WHERE idped IS NULL;