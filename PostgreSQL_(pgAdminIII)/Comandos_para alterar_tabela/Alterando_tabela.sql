-- criando tabela funcionário

CREATE TABLE funcionario(

   id_func INTEGER NOT NULL PRIMARY KEY,

   nome_func VARCHAR(50) NOT NULL,

   sal_func NUMERIC(10,2) NOT NULL
);


-- Comando para verificar a estrutura da tabela
 SELECT * FROM information_schema.columns WHERE table_name = 'funcionario'
-- Selecionando as três colunas 
SELECT column_name, data_type, character_maximum_length FROM information_schema.columns WHERE table_name = 'funcionario'

-- Incluindo coluna telefone_func com 12 caracteres, não nula, na tabela funcionário
ALTER TABLE funcionario ADD COLUMN telefone_func CHAR(12) NOT NULL;

-- Alterando o tamanho do campo nome_func para 70 caracteres
ALTER TABLE funcionario ALTER COLUMN nome_func TYPE VARCHAR(70);

-- Alterando a coluna telefone para números inteiros
ALTER TABLE funcionario ALTER COLUMN telefone_func TYPE INTEGER USING (telefone_func::INTEGER);

-- Alterando a coluna salário para aceitar valores nulos
ALTER TABLE funcionario ALTER COLUMN sal_func DROP NOT NULL;

-- Incluindo o campo email_func com 30 caracteres na tabela funcionário
ALTER TABLE funcionario ADD COLUMN email_func CHAR(30);

-- Trocando o nome do campo sal_func para salario_func
ALTER TABLE funcionario RENAME COLUMN sal_func TO salario_func;

-- Trocando o nome da tabela funcionario para o nome empregado
ALTER TABLE Funcionario RENAME TO empregado;

-- Comando para verificar a estrutura da tabela
SELECT column_name, data_type, character_maximum_length FROM information_schema.columns WHERE table_name = 'empregado';

-- Incluindo a coluna idade para aceitar idade maior ou igual 16
ALTER TABLE empregado ADD COLUMN idade INTEGER CHECK (idade >= 16);

-- Incluindo o campo data de admissão para aceitar a data do sistema como padrão
ALTER TABLE empregado ADD COLUMN dt_adm DATE DEFAULT CURRENT_DATE;

-- Excluindo o campo telefone
ALTER TABLE empregado DROP COLUMN telefone_func;

-- Deletando a tabela empregado
DROP TABLE empregado;