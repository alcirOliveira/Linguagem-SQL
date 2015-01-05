-- criando tabela funcionário
CREATE TABLE funcionario(
   id_func NUMBER(3) NOT NULL PRIMARY KEY,
   nome_func VARCHAR(50) NOT NULL,
   sal_func NUMBER(10,2) NOT NULL
);


-- Comando para verificar a estrutura da tabela
DESCRIBE table funcionario;
-- Forma abreviada
DESC table funcionario;

-- Incluindo coluna telefone_func com 12 caracteres, não nula, na tabela funcionário
ALTER TABLE funcionario ADD (telefone_func CHAR(12) NOT NULL);

-- Alterando o tamanho do campo nome_func para 70 caracteres
ALTER TABLE funcionario MODIFY ( nome_func VARCHAR(70) );

-- Alterando a coluna telefone para números inteiros
ALTER TABLE funcionario MODIFY ( telefone_func NUMBER(12) );

-- Alterando a coluna salário para aceitar valores nulos
ALTER TABLE funcionario MODIFY ( sal_func NUMBER(10,2) NULL );

-- Incluindo o campo email_func com 30 caracteres na tabela funcionário
ALTER TABLE funcionario ADD ( email_func CHAR(30) );

-- Trocando o nome do campo sal_func para salario_func
ALTER TABLE funcionario RENAME COLUMN sal_func TO salario_func;

-- Trocando o nome da tabela funcionario para o nome empregado
ALTER TABLE Funcionario RENAME TO empregado;

-- Comando para verificar a estrutura da tabela
DESCRIBE table empregado;

-- Incluindo a coluna idade para aceitar idade maior ou igual 16
ALTER TABLE empregado ADD ( idade NUMBER(3) CHECK (idade >= 16) );

-- Incluindo o campo data de admissão para aceitar a data do sistema como padrão
ALTER TABLE empregado ADD (dt_adm DATE DEfAULT SYSDATE);

-- Excluindo o campo telefone
ALTER TABLE empregado DROP (telefone_func);

-- Deletando a tabela empregado
DROP TABLE empregado;