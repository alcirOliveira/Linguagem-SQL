-- criando tabela departamento
CREATE TABLE departamento(
   idDept   INTEGER(2)  NOT NULL PRIMARY KEY,
   nomedept VARCHAR(20) NOT NULL,
   local    CHAR(2)     NOT NULL
);

-- Comando para verificar a estrutura da tabela departamento
DESCRIBE TABLE departamento;

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
   idFunc   INTEGER(2)   NOT NULL PRIMARY KEY,
   nomeFunc VARCHAR(30)  NOT NULL,
   cargo    VARCHAR(15)  NOT NULL,
   idGer    INTEGER(2), 
   dataAdm  DATE         NOT NULL,
   sal      FLOAT(7,2)   NOT NULL,
   com      FLOAT(7,2),
   idDept   INTEGER(2)   NOT NULL
);

-- Comando para verificar a estrutura da tabela funcionario
DESCRIBE table funcionario;

INSERT INTO funcionario VALUES (1,  'Antônio Nunes',    'Programador', 3,    '2000/10/10', '3400,00', '600,00',  3);
INSERT INTO funcionario VALUES (2,  'Vilmar Almeida',   'Analista',    2,    '1999/01/01', '4300,00',  NULL,     5);
INSERT INTO funcionario VALUES (3,  'Mauro Mendonça',   'Gerente',     3,    '1998/04/10', '6500,00', '2500,00', 1);
INSERT INTO funcionario VALUES (4,  'Paulo Gonçalves',  'Auxiliar',    5,    '1998/02/09', '1200,00', '640,00',  3);
INSERT INTO funcionario VALUES (5,  'Rogério Meira',    'Gerente',     5,    '1999/06/09', '6400,00', '6700,00', 4);
INSERT INTO funcionario VALUES (6,  'Lima Dantes',      'Analista',    1,    '2000/10/10', '3400,00', '470,00',  3);
INSERT INTO funcionario VALUES (7,  'Ana Paula',        'Presidente',  NULL, '1996/04/09', '8800,00', '3440,00', 5);
INSERT INTO funcionario VALUES (8,  'Mauricio Souza',   'Auxiliar',    2,    '1993/02/03', '1500,00', '8340,00', 6);
INSERT INTO funcionario VALUES (9,  'José Ignácio',     'Supervisor',  2,    '1994/02/06', '4400,00', '440,00',  6);
INSERT INTO funcionario VALUES (10, 'Victor Lima',      'Auxiliar',    1,    '2000/06/30', '2000,00', '340,00',  1);
INSERT INTO funcionario VALUES (11,  'Luis Serra',      'Programador', 2,    '1997/07/08', '3200,00', '6640,00', 2);
INSERT INTO funcionario VALUES (12, 'José Silva',       'Gerente',     2,    '2000/05/09', '7000,00',  NULL,     3);

-- Selecionando todos os registros da tabela funcionario
SELECT * FROM funcionario;