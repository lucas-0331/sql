CREATE DATABASE Funcionario;
USE Funcionario;

CREATE TABLE cadfun IF NOT EXISTS (
    id_cadfun = INTEGER NOT NULL PRIMARY KEY,
    nome = VARCHAR(45) NOT NULL,
    salario = DECIMAL(9,2) NOT NULL,
    depto = INTEGER NOT NULL,
    funcao = VARCHAR(45)
);