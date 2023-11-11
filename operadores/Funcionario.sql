CREATE DATABASE Empresa;
USE Empresa;

CREATE TABLE IF NOT EXISTS Funcionarios IF NOT EXISTS (
    codigo_funcionario INTEGER NOT NULL PRIMARY KEY,
    nome_completo VARCHAR(45) NOT NULL,
    departamento VARCHAR(2) NOT NULL,
    funcao VARCHAR(20) NOT NULL,
    salario DECIMAL(10,2)
);

-- Comando para inserir na tabela de funcionário;
INSERT INTO Funcionarios (codigo_funcionario,
                        nome_completo,
                        departamento,
                        funcao,
                        salario)
VALUES (1, 'Carlos Alberto', '03', 'Vendedor', 1530.00);

-- Comando para inserir abreviado;
INSERT INTO Funcionarios VALUES (2, 'Marcos Henrique', '02', 'Gerente', 1985.75);
INSERT INTO Funcionarios VALUES (3, 'Aparecida Silva', '03', 'Secretaria', 1200.50):
INSERT INTO Funcionarios VALUES (4, 'Solange Pacheco', '05', 'Supervisora', 5599.91);
INSERT INTO Funcionarios VALUES (5, 'Marcelo Souza', '03', 'Analista', 2250.11);
INSERT INTO Funcionarios VALUES (6, 'Celia Nascimento', '02', 'Secretaria', 1200.50);
INSERT INTO Funcionarios VALUES (7, 'Wilson de Macedo', '03', 'Programador', 1050.90);
INSERT INTO Funcionarios VALUES (8, 'Augusto Souza', '03', 'Programador', 1953.49);
INSERT INTO Funcionarios VALUES (9, 'Carlos Bastos', '05', 'Vendedor', 1530.00);
INSERT INTO Funcionarios VALUES (10, 'Pedro Silva', '03', 'Supervisor', 5599.99);
INSERT INTO Funcionarios VALUES (11, 'Ana Bastos', '05', 'Vendedora', 1530.00);
INSERT INTO Funcionarios VALUES (12, 'Paulo da Silva', '02', 'Vendedor', 1530.00);

-- Após construir o banco de dados que será manipulado, vamos começar!

-- Aqui estamos informando que vamos selecionar todos os atributos da tabela Funcionarios;
SELECT * FROM Funcionarios;

SELECT nome_completo, salario + 100 FROM Funcionarios;

SELECT nome_completo, salario, salario + 100 FROM Funcionarios;

SELECT nome_completo, salario * 1.20 FROM Funcionarios;

SELECT nome_completo, salario, salario * 1.20 FROM Funcionarios;

SELECT 2 + 3 * 5;

SELECT (2 + 3) * 5;

-- Comparações;

SELECT * FROM Funcionarios WHERE departamento = '05';

SELECT * FROM Funcionarios WHERE funcao = 'Vendedor';

SELECT * FROM Funcionarios WHERE salario <= 1700; 

-- Operadores;

SELECT * FROM Funcionarios WHERE (departamento = '03') AND (funcao = 'Programador');

SELECT * FROM Funcionarios WHERE (departamento = '02') OR (departamento = '05');

SELECT * FROM Funcionarios WHERE NOT (funcao = 'Vendedor');