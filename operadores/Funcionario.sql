CREATE DATABASE Empresa;
USE Empresa;

CREATE TABLE IF NOT EXISTS Funcionarios (
    codigo_funcionario INTEGER NOT NULL PRIMARY KEY,
    nome_completo VARCHAR(45) NOT NULL,
    departamento VARCHAR(2) NOT NULL,
    funcao VARCHAR(20) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL
);

-- Comando para inserir na tabela de funcionário;
INSERT INTO Funcionarios (codigo_funcionario,
                        nome_completo,
                        departamento,
                        funcao,
                        salario,
                        data_admissao)
VALUES (1, 'Carlos Alberto', '03', 'Vendedor', 1530.00, 19980315);

-- Comando para inserir abreviado;
INSERT INTO Funcionarios VALUES (2, 'Marcos Henrique', '02', 'Gerente', 1985.75, 19890917),
                                (3, 'Aparecida Silva', '03', 'Secretaria', 1200.50, 20010103),
                                (4, 'Solange Pacheco', '05', 'Supervisora', 3258.00, 19991224),
                                (5, 'Marcelo Souza', '03', 'Analista', 2250.11, 19950612),
                                (6, 'Celia Nascimento', '02', 'Secretaria', 1200.50, 20010802),
                                (7, 'Wilson de Macedo', '03', 'Programador', 1050.90, 19940930),
                                (8, 'Augusto Souza', '03', 'Programador', 1050.90, 19980331),
                                (9, 'Carlos Bastos', '05', 'Vendedor', 1530.00, 20030329),
                                (10, 'Pedro Silva', '03', 'Supervisor', 3258.00, 19780716),
                                (11, 'Ana Bastos', '05', 'Vendedora', 1530.00, 19910919),
                                (12, 'Paulo da Silva', '02', 'Vendedor', 1530.00, 19901130),
                                (13, 'Mateus Soares', '04', 'Supervisor', 3258.00, 19960227),
                                (14, 'Paula Santos', '01', 'Gerente', 1985.75, 19950130),
                                (15, 'Zeca Alves', '02', 'Programador', 1050.90, 20091120),
                                (16, 'Vanessa Matos', '05', 'Programadora', 1050.90, 20060711),
                                (17, 'Tais Costa', '02', 'Analista', 2250.11, 20151020),
                                (18, 'Ana Carolina', '03', 'Gerente', 1985.75, 20001213);

-- Questão 1
SELECT nome_completo, salario, departamento FROM Funcionarios WHERE departamento = '05';

-- Questão 2
SELECT nome_completo, salario, funcao FROM Funcionarios WHERE funcao LIKE 'Programador%';

-- Questão 3
SELECT nome_completo, salario, funcao FROM Funcionarios WHERE funcao LIKE 'Vendedor%';

-- Questão 4
SELECT nome_completo, salario, funcao, data_admissao FROM Funcionarios WHERE data_admissao > 19990405;

-- Questão 5
SELECT * FROM Funcionarios WHERE departamento = '05' AND salario > 1200.00;

-- Questão 6
SELECT nome_completo, data_admissao FROM Funcionarios WHERE data_admissao >= 20001201 AND data_admissao <= 20001225;

-- Questão 7
SELECT * FROM Funcionarios WHERE data_admissao < 20060920;

-- Questão 8
SELECT nome_completo, monthname(data_admissao) FROM Funcionarios WHERE departamento = '05';

-- Questão 9
SELECT  lower(nome_completo), departamento FROM Funcionarios WHERE departamento = '02' OR departamento = '03';

-- Questão 10
SELECT nome_completo, departamento FROM Funcionarios WHERE departamento = '02' OR departamento = '03';

-- Questão 11
SELECT nome_completo, funcao FROM Funcionarios WHERE funcao LIKE 'vendedor%' OR funcao LIKE 'supervisor%';

-- Questão 12
SELECT nome_completo, salario, funcao FROM Funcionarios WHERE salario >= 1000.00 AND salario <= 2000.00 AND funcao = 'Supervisor';

-- Questão 13
SELECT * FROM Funcionarios WHERE funcao = 'Supervisor';

-- Questão 14
SELECT * FROM Funcionarios WHERE funcao LIKE 'Vendedor%';

-- Questão 15
SELECT * FROM Funcionarios WHERE funcao LIKE 'Supervisor%' AND salario < 2100.00;

-- Questão 16
SELECT * FROM Funcionarios WHERE data_admissao > 20000101;

-- Questão 17
SELECT * FROM Funcionarios WHERE data_admissao < 20101231 AND (funcao = 'Supervisor' OR funcao = 'Programador');

-- Questão 18
SELECT nome_completo, salario, salario * 1.20 FROM Funcionarios;