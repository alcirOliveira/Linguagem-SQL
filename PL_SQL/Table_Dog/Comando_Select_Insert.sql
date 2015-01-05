CREATE TABLE dog (  -- Criando a tabela dog
   id_dog        NUMBER(5)   NOT NULL,   -- número de id de cada registro que for inserido na tabela
   name_dog      VARCHAR(20) NOT NULL,   -- nome
   breed_dog     VARCHAR(20) NOT NULL,   -- raça
   color_dog     VARCHAR(12) NOT NULL,   -- cor
   age_dog       NUMBER(3),              -- idade
   microchip_dog NUMBER(10)  NOT NULL,   -- número de registro
   CONSTRAINT PK_dog PRIMARY KEY(id_dog) -- chave primária para a coluna id_dog
);

-- criando sequence para usar na coluna id_dog
CREATE SEQUENCE id_dog
  START WITH 1
  INCREMENT BY 1
  CACHE 100;
  
  
DECLARE -- Declarando as variáveis
    v_nome dog.name_dog %type;
    v_breed dog.breed_dog %type;
    v_color dog.color_dog %type;
    v_age dog.age_dog %type;
    v_microchip dog.microchip_dog %type;

BEGIN
    -- Inserindo os dados na tabela manualmente
    INSERT INTO dog VALUES (id_dog.nextval, '&Nome', '&Breed', '&Color', &Age, &Microchip);
END;
  
SELECT * FROM dog;


-- Abaixo segue um programinha para virificar o dados registrado na tabela manualmente
SET SERVEROUTPUT ON;

DECLARE
    v_name dog.name_dog %type;
    v_breed dog.breed_dog %type;
    v_color dog.color_dog %type;
BEGIN
    SELECT name_dog, breed_dog, color_dog
       INTO v_name, v_breed, v_color
    FROM dog
    WHERE microchip_dog = &Microchip;

    DBMS_OUTPUT.PUT_LINE('Name: '||v_name);
    DBMS_OUTPUT.PUT_LINE('Breed: '||v_breed);
    DBMS_OUTPUT.PUT_LINE('Color: '||v_color);
END;