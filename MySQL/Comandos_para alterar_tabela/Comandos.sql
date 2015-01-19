-- criando tabela funcionário
CREATE TABLE funcionario(
   id_func INT(3) NOT NULL PRIMARY KEY, 
   nome_func VARCHAR(50) NOT NULL,
   sal_func DECIMAL(10,2) NOT NULL
);


-- Comando para verificar a estrutura da tabela
DESCRIBE funcionario;
-- Forma abreviada
DESC funcionario;

-- Incluindo coluna telefone_func com 12 caracteres, não nula, na tabela funcionário:
ALTER TABLE funcionario ADD (telefone_func CHAR(12) NOT NULL);

-- Alterando o tamanho do campo nome_func para 70 caracteres
ALTER TABLE funcionario CHANGE nome_func nome_func VARCHAR( 70 ) NOT NULL ;

-- Alterando a coluna telefone para números inteiros
ALTER TABLE funcionario CHANGE telefone_func telefone_func INT(12) NOT NULL;

-- Alterando a coluna salário para aceitar valores nulos
ALTER TABLE funcionario CHANGE sal_func sal_func DECIMAL(10, 2) NULL ;

-- Incluindo o campo email_func com 30 caracteres na tabela funcionário
ALTER TABLE funcionario ADD ( email_func CHAR(30) );

-- Trocando o nome do campo sal_func para salario_func
ALTER TABLE funcionario CHANGE sal_func salario_func DECIMAL(10, 2) NULL ;

-- Trocando o nome da tabela funcionario para o nome empregado
ALTER TABLE funcionario RENAME TO empregado;

-- Comando para verificar a estrutura da tabela
DESCRIBE empregado;

-- Incluindo a coluna idade para aceitar idade maior ou igual 16
ALTER TABLE empregado ADD ( idade INT(3) CHECK (idade >= 16) );

-- Incluindo o campo data de admissão para aceitar a data do sistema como padrão
ALTER TABLE empregado ADD dt_adm DATE;

-- Excluindo o campo telefone
ALTER TABLE empregado DROP telefone_func;

-- Deletando a tabela empregado
DROP TABLE empregado;