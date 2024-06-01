--CREATE DATABASE PeakPerformace
--GO
--USE PeakPerformace


--CREATE TABLE Funcionario
--(Matricula  INTEGER		NOT NULL IDENTITY(1001,1) PRIMARY KEY,
--Nome		  VARCHAR(50)   NOT NULL,
--Nascimento  DATE		    NOT NULL,
--Complemento VARCHAR(50),
--Bairro	  VARCHAR(20)	NOT NULL,
--Cidade	  VARCHAR(50)	NOT NULL,
--Cep         CHAR(8)		NOT NULL,
--Telefone    CHAR(11)		NOT NULL,
--Email       VARCHAR(50)	NOT NULL,
--Estado      CHAR(2)		NOT NULL,
--CPF         CHAR(11)		NOT NULL,
--CONSTRAINT U_Telefone UNIQUE (Telefone),
--CONSTRAINT U_Email UNIQUE (Email));

-------------------------------------------------

--CREATE TABLE Dependente
--(Id_Dependente INTEGER		NOT NULL IDENTITY(100,1) PRIMARY KEY,
-- Nome		   VARCHAR(50)	NOT NULL,
-- Nascimento	   DATE			NOT NULL,
-- Sexo		   CHAR(1)		NOT NULL,
-- Matricula INTEGER			NOT NULL,
-- CONSTRAINT Sx_Sexo CHECK (Sexo IN ('M', 'F')),
-- CONSTRAINT FK_Matricula FOREIGN KEY (Matricula) REFERENCES Funcionario(Matricula)
-- ON DELETE CASCADE);

-----------------------------------------------------------

--CREATE TABLE Psicologo
--(CPF				CHAR(11)	  NOT NULL	PRIMARY KEY,
-- Laudo				VARCHAR (500) NOT NULL,
-- Email				VARCHAR(20)	  NOT NULL,
-- Nascimento			DATE		  NOT NULL,
-- Telefone			CHAR(11)	  NOT NULL,
-- Logradouro			VARCHAR(50)	  NOT NULL,
-- Numero				VARCHAR(6)	  NOT NULL,
-- COMPLEMENTO		VARCHAR(50),
-- Estado				CHAR(2)       NOT NULL,
-- CEP				CHAR(8)       NOT NULL
-- CONSTRAINT E_Telefone  UNIQUE (Telefone),
-- CONSTRAINT E_Email		UNIQUE (Email));

-- --------------------------------------------------------------

-- CREATE TABLE Questionario
--(Id_Questionario INTEGER	   NOT NULL IDENTITY(100000,1)  PRIMARY KEY,
-- Descricao		 VARCHAR(100)  NOT NULL,
-- Analise         VARCHAR(500)  NOT NULL,
-- CPF			 CHAR(11)	   NOT NULL,
-- Matricula		 INTEGER	   NOT NULL,
-- CONSTRAINT FK_CPF		  FOREIGN KEY (CPF) REFERENCES Psicologo(CPF),
-- CONSTRAINT FK_Matricula2 FOREIGN KEY (Matricula) REFERENCES Funcionario(Matricula));

-----------------------------------------------------------------

-- CREATE TABLE Assunto
-- (Cod_Assunto		INTEGER		NOT NULL	IDENTITY(10,1) PRIMARY KEY,
--  Descricao			VARCHAR(50) NOT NULL);

-- ---------------------------------------------------------

--CREATE TABLE Questao
--(Id_Questao			INTEGER				NOT NULL IDENTITY(1,1) PRIMARY KEY,
-- Descricao			VARCHAR(100)		NOT NULL,
-- Resposta			VARCHAR(100)		NOT NULL,
-- Id_Questionario	INTEGER				NOT NULL,
-- Cod_Assunto		INTEGER				NOT NULL,
-- CONSTRAINT FK_Cod_Assunto FOREIGN KEY(Cod_Assunto) REFERENCES Assunto(Cod_Assunto),
-- CONSTRAINT FK_Id_Questionario	FOREIGN KEY (Id_Questionario) REFERENCES Questionario(Id_Questionario));

--------------------------------------------------------------------------------

--CREATE TABLE Modelo
--(Id_Questionario	INTEGER			NOT NULL	IDENTITY(100,1) PRIMARY KEY,
-- Descricao			VARCHAR(100)	NOT NULL,
-- Analise			VARCHAR(500)	NOT NULL);

---------------------------------------------------------------------------

--CREATE TABLE QuestaoModelo
--(Id_Questao			INTEGER				NOT NULL IDENTITY(1,1) PRIMARY KEY,
-- Descricao			VARCHAR(100)		NOT NULL,
-- Resposta			VARCHAR(100)		NOT NULL,
-- Id_Questionario	INTEGER				NOT NULL,
-- CONSTRAINT FK_Id_QuestionarioModelo	FOREIGN KEY (Id_Questionario) REFERENCES Modelo(Id_Questionario));