CREATE DATABASE Faculdade;
USE Faculdade;

CREATE TABLE Pessoa
(
	ID_Pessoa INT NOT NULL AUTO_INCREMENT, 
	Primeiro_nome VARCHAR (25) NOT NULL,
	Ultimo_nome VARCHAR (25) NOT NULL,
	CPF VARCHAR (25) NOT NULL,
	Data_nascimento DATE DEFAULT ('1900/01/01'),

	PRIMARY KEY (ID_Pessoa)
);

CREATE TABLE Aluno
(
	ID_Aluno INT NOT NULL AUTO_INCREMENT,
	ID_Pessoa INT,

	PRIMARY KEY (ID_Aluno),
	FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa (ID_Pessoa)
);

CREATE TABLE Professor
(
	ID_Professor INT NOT NULL AUTO_INCREMENT,
	ID_Pessoa INT,

	PRIMARY KEY (ID_Professor),
	FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa (ID_Pessoa)
);

CREATE TABLE Coordenador
(
	ID_Coordenador INT NOT NULL AUTO_INCREMENT,
	ID_Pessoa INT,

	PRIMARY KEY (ID_Coordenador),
	FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa (ID_Pessoa)
);

CREATE TABLE Curso
(
	ID_Curso INT NOT NULL AUTO_INCREMENT,
	Nome VARCHAR(25),
	ID_Coordenador INT,

	PRIMARY KEY (ID_Curso),
	FOREIGN KEY (ID_Coordenador) REFERENCES Coordenador(ID_Coordenador)
);

CREATE TABLE Matricula_Curso
(
	ID_Matricula INT NOT NULL AUTO_INCREMENT,
	ID_Pessoa INT,
	ID_Aluno INT,
	ID_Curso INT,
	Status INT,

	PRIMARY KEY (ID_Matricula),
	FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa(ID_Pessoa),
	FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
	FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

CREATE TABLE Disciplina
(
	ID_Disciplina INT NOT NULL AUTO_INCREMENT,
	Nome VARCHAR(25),
	ID_Professor INT,

	PRIMARY KEY (ID_Disciplina),
	FOREIGN KEY (ID_Professor) REFERENCES Professor(ID_Professor)
);

CREATE TABLE Curso_Disciplina
(
	ID_Curso_Disciplina INT NOT NULL AUTO_INCREMENT,
	ID_Curso INT,
	ID_Disciplina INT,
	Periodo INT,
	Carga_Horaria INT,

	PRIMARY KEY (ID_Curso_Disciplina),
	FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso),
	FOREIGN KEY (ID_Disciplina) REFERENCES Disciplina(ID_Disciplina)
);

CREATE TABLE Disciplina_Executada
(
	ID_Disciplina_Executada INT NOT NULL AUTO_INCREMENT,
	ID_Aluno INT,
	ID_Curso_Disciplina INT,
	Nota_Avaliação_1Bimestre FLOAT(4,2),
	Nota_Avaliação_2Bimestre FLOAT(4,2),
	Nota_Avaliação_Final FLOAT(4,2),

	PRIMARY KEY (ID_Disciplina_Executada),
	FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
	FOREIGN KEY (ID_Curso_Disciplina) REFERENCES Curso_Disciplina(ID_Curso_Disciplina)
);

CREATE TABLE Cadastro_Aluno_Professor_Coordenador
(
	Nome VARCHAR (25) NOT NULL,
	CPF VARCHAR (25) NOT NULL,
	Data_nascimento DATE DEFAULT ('1900/01/01'),
	Aluno BOOLEAN,
	Professor BOOLEAN,
	Coordenador BOOLEAN
);

CREATE TABLE Cadastro_Maticulas_Cursos
(
	Nome VARCHAR (25) NOT NULL,
	Curso VARCHAR (25) NOT NULL,
	Periodo INT NOT NULL
);

CREATE TABLE Cadastro_Cursos
(
	Nome VARCHAR (25) NOT NULL,
	Coordenador VARCHAR (25) NOT NULL
);

CREATE TABLE Cadastro_Disciplinas
(
	Nome VARCHAR (25) NOT NULL,
	Professor VARCHAR (25) NOT NULL,
	Curso VARCHAR (25) NOT NULL,
	Periodo INT NOT NULL,
	Carga INT NOT NULL
);