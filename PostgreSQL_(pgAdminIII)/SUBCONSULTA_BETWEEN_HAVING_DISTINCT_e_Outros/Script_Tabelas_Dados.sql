-- criando tabela departamento
CREATE TABLE departamento(
   idDept   INTEGER     NOT NULL PRIMARY KEY,
   nomedept VARCHAR(20) NOT NULL,
   local    CHAR(2)     NOT NULL
);

-- Inserindo dados na tabela departamento
INSERT INTO departamento VALUES(1,  'Marketing',     'SP');
INSERT INTO departamento VALUES(2,  'Financeiro',    'SP');
INSERT INTO departamento VALUES(3,  'Informática',   'MG');
INSERT INTO departamento VALUES(4,  'Produção',      'SP');
INSERT INTO departamento VALUES(5,  'Vendas',        'RJ');
INSERT INTO departamento VALUES(6,  'Compras',       'SP');
INSERT INTO departamento VALUES(7,  'RH',            'RJ');
INSERT INTO departamento VALUES(8,  'Almoxarifado',  'RJ');
INSERT INTO departamento VALUES(9,  'Engenharia',    'MG');
INSERT INTO departamento VALUES(10, 'Contabilidade', 'SP');

-- Selecionando todos os registros da tabela departamento
SELECT * FROM departamento;


-- criando tabela funcionário
CREATE TABLE funcionario(
   idFunc INTEGER       NOT NULL PRIMARY KEY,
   nomeFunc VARCHAR(30) NOT NULL,
   cargo VARCHAR(15)    NOT NULL,
   idGer INTEGER,
   dataAdm DATE         NOT NULL,
   sal NUMERIC(7,2)     NOT NULL,
   com NUMERIC(7,2),
   idDept INTEGER       NOT NULL
);

INSERT INTO funcionario VALUES (1,  'Antônio Nunes',    'Programador', 3,    '10/10/2000', 3400.00, 600.00,  3);
INSERT INTO funcionario VALUES (2,  'Vilmar Almeida',   'Analista',    2,    '01/01/1999', 4300.00, NULL,    5);
INSERT INTO funcionario VALUES (3,  'Mauro Mendonça',   'Gerente',     3,    '10/04/1998', 6500.00, 2500.00, 1);
INSERT INTO funcionario VALUES (4,  'Paulo Gonçalves',  'Auxiliar',    5,    '09/02/1998', 1200.00, 640.00,  3);
INSERT INTO funcionario VALUES (5,  'Rogério Meira',    'Gerente',     5,    '09/06/1999', 6400.00, 6700.00, 4);
INSERT INTO funcionario VALUES (6,  'Lima Dantes',      'Analista',    1,    '10/10/2000', 3400.00, 470.00,  3);
INSERT INTO funcionario VALUES (7,  'Ana Paula',        'Presidente',  NULL, '09/04/1996', 8800.00, 3440.00, 5);
INSERT INTO funcionario VALUES (8,  'Mauricio Souza',   'Auxiliar',    2,    '03/02/1993', 1500.00, 8340.00, 6);
INSERT INTO funcionario VALUES (9,  'José Ignácio',     'Supervisor',  2,    '06/02/1994', 4400.00, 440.00,  6);
INSERT INTO funcionario VALUES (10, 'Victor Lima',      'Auxiliar',    1,    '30/06/2000', 2000.00, 340.00,  1);
INSERT INTO funcionario VALUES (11, 'Luis Serra',       'Programador', 2,    '08/07/1997', 3200.00, 6640.00, 2);
INSERT INTO funcionario VALUES (12, 'José Silva',       'Gerente',     2,    '09/05/2000', 7000.00, NULL,    3);

-- Selecionando todos os registros da tabela funcionario
SELECT * FROM funcionario;