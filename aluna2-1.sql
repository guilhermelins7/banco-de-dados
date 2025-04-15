-- Comandos DDL
-- Criação
-- Criar Banco de dados
CREATE DATABASE dbUniversidade;

-- Criar Tabela
USE dbUniversidade;
CREATE TABLE tbAluno (
	cd_Matricula INT PRIMARY KEY,
	cd_Nome VARCHAR(100),
);

-- Remover Banco de dados:
DROP DATABASE dbUniversidade;

-- Remover Tabela:
DROP TABLE tbAluno;

-- ALTERA COLUNA TABELA:
ALTER TABLE tbAluno DROP COLUMN nm_Aluno;

ALTER TABLE tbAluno ADD  dt_nascimento DATE;

-- Definir chaves primarias e estrangeiras:
ALTER TABLE <nome-tabela> ADD PRIMARY KEY <nome-coluna>;
ALTER TABLE <nome-tabela> ADD FOREIGN KEY <nome-coluna> REFERENCES <tabela-estrangeira>;


-- Definindo chaves primarias e estrangeiras no momento de criação:
USE dbUniversidade;
CREATE TABLE tbAluno (
	cd_Matricula INT PRIMARY KEY,
	nm_Nome VARCHAR(100),
	cd_Curso INT FOREIGN KEY REFERENCES tbCursos
);

CREATE DATABASE dbEmpresa;

USE dbEmpresa;
CREATE TABLE Funcionario (
	cd_Funcionario INT PRIMARY KEY,
	nm_Funcionario VARCHAR(255),
	dt_Admissao DATETIME,
	cd_Departamento INT
);

USE dbEmpresa;
CREATE TABLE Departamento (
	cd_Departamento INT PRIMARY KEY,
	ds_Local VARCHAR(255)
);

USE dbEmpresa
ALTER TABLE Funcionario ADD FOREIGN KEY (cd_Departamento) REFERENCES Departamento;

