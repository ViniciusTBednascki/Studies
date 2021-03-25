INSERT INTO Cadastro_Aluno_Professor_Coordenador
VALUES
	('Yuri Roriz','283.999.559-06','1998-01-07',1,0,0),
	('Mateus Cideira','488.731.559-79','2001-04-12',1,0,0),
	('Rodolfo Vilar','072.210.699-80','2000-08-04',1,0,0),
	('Alexandre Colaço','011.337.759-26','1965-08-15',0,1,0),
	('Ioan Sabrosa','867.953.889-21','2001-02-11',1,0,0),
	('Daniil Lancastre','070.389.019-07','1998-05-09',1,0,0),
	('Kauan Madruga','898.873.539-06','1976-02-18',0,0,1),
	('Evelin Charneca','146.411.179-00','1997-11-07',1,0,0),
	('Louisa Lameiras','795.267.339-40','2002-02-06',1,0,0),
	('Marta Fialho','273.808.149-58','2001-12-04',1,0,0),
	('Henrique Fiães','044.962.029-80','1982-08-17',0,1,0),
	('Maxim Tristão','870.813.799-40','1974-12-10',1,1,1),
	('Uriel Henriques','064.679.369-14','2002-07-26',1,0,0),
	('Ravi Estrada','559.483.019-74','1999-12-02',1,0,0),
	('Penélope Azeredo','038.923.389-73','2002-06-07',1,0,0),
	('Dora Lisboa','841.446.019-43','1998-12-27',1,0,0),
	('Leonor Vilariça','964.601.139-04','1998-09-26',1,0,0),
	('Eusébio Lalanda','778.863.619-38','1993-12-14',1,1,0),
	('Anabela Anjos','031.028.799-50','2000-01-18',1,0,0),
	('Zayn Roriz','848.161.329-02','1999-11-17',1,0,0),
	('Davy Barata','981.523.579-60','2002-02-10',1,0,0),
	('Maryam Porto','389.200.599-00','2003-02-06',1,0,0),
	('Margarida Catela','391.892.749-03','1981-10-25',0,1,1),
	('Sílvio Roçadas','071.703.649-99','2001-02-15',1,0,0),
	('Clara Zambujal','632.546.729-92','2002-03-16',1,0,0),
	('Jeremias Baldaia','606.048.779-35','2004-11-15',1,0,0),
	('Adriela Salgueiro','980.723.729-71','1984-12-27',1,0,0),
	('Piedade Carvalho','312.268.949-92','1998-09-03',1,1,0),
	('Fausto Toledo','035.635.039-82','2000-06-10',1,0,0);

INSERT INTO Cadastro_Maticulas_Cursos
VALUES
	('Yuri Roriz','Engenharia Elétrica',1),
	('Mateus Cideira','Engenharia Civil',1),
	('Rodolfo Vilar','Engenharia Elétrica',2),
	('Ioan Sabrosa','Engenharia Civil',2),
	('Daniil Lancastre','Engenharia Elétrica',1),
	('Evelin Charneca','Farmácia',2),
	('Louisa Lameiras','Engenharia Elétrica',3),
	('Marta Fialho','Farmácia',1),
	('Maxim Tristão','Engenharia Elétrica',4),
	('Uriel Henriques','Engenharia Civil',3),
	('Ravi Estrada','Farmácia',2),
	('Penélope Azeredo','Engenharia Elétrica',3),
	('Dora Lisboa','Engenharia Elétrica',4),
	('Leonor Vilariça','Engenharia Civil',2),
	('Eusébio Lalanda','Farmácia',3),
	('Anabela Anjos','Engenharia Civil',4),
	('Zayn Roriz','Engenharia Elétrica',1),
	('Davy Barata','Engenharia Elétrica',3),
	('Maryam Porto','Farmácia',4),
	('Sílvio Roçadas','Engenharia Civil',1),
	('Clara Zambujal','Engenharia Civil',3),
	('Jeremias Baldaia','Engenharia Elétrica',2),
	('Adriela Salgueiro','Engenharia Elétrica',4),
	('Piedade Carvalho','Nutrição',1),
	('Fausto Toledo','Nutrição',2);

INSERT INTO Cadastro_Cursos
VALUES
	('Engenharia Elétrica','Maxim Tristão'),
	('Engenharia Civil','Maxim Tristão'),
	('Nutrição','Kauan Madruga'),
	('Farmácia','Margarida Catela');

INSERT INTO Cadastro_Disciplinas
VALUES
	('Calculo I','Alexandre Colaço','Engenharia Elétrica',1,80),
	('Calculo II','Alexandre Colaço','Engenharia Elétrica',2,80),
	('Calculo I','Alexandre Colaço','Engenharia Civil',1,40),
	('Geometria','Alexandre Colaço','Engenharia Civil',2,80),
	('Química dos Alimentos','Henrique Fiães','Nutrição',1,80),
	('Química I','Henrique Fiães','Farmácia',2,40),
	('Biologia Celular','Henrique Fiães','Nutrição',2,80),
	('Química II','Henrique Fiães','Farmácia',3,40),
	('Biologia Celular','Henrique Fiães','Farmácia',4,80),
	('Calculo III','Maxim Tristão','Engenharia Civil',3,80),
	('Calculo IV','Maxim Tristão','Engenharia Civil',4,80),
	('Física I','Maxim Tristão','Engenharia Civil',1,80),
	('Física II','Maxim Tristão','Engenharia Civil',2,80),
	('Física III','Maxim Tristão','Engenharia Civil',3,80),
	('Empreendedorismo ','Margarida Catela','Farmácia',2,40),
	('Empreendedorismo ','Margarida Catela','Engenharia Civil',2,40),
	('Empreendedorismo ','Margarida Catela','Engenharia Elétrica',2,40),
	('Empreendedorismo ','Margarida Catela','Engenharia Elétrica',2,40),
	('Anatomia I','Eusébio Lalanda','Nutrição',1,80),
	('Anatomia II','Eusébio Lalanda','Nutrição',2,80),
	('Bioquímica','Eusébio Lalanda','Nutrição',3,80),
	('Alimentos','Eusébio Lalanda','Nutrição',4,40),
	('Anatomia I','Piedade Carvalho','Farmácia',1,80),
	('Anatomia II','Piedade Carvalho','Farmácia',2,80),
	('Higiene','Piedade Carvalho','Farmácia',3,40),
	('Procedimentos Clínicos','Piedade Carvalho','Farmácia',4,80);
	
INSERT INTO Pessoa (Primeiro_nome, Ultimo_nome, CPF, Data_nascimento)
SELECT
	SUBSTRING_INDEX(SUBSTRING_INDEX(Nome, ' ', 1), ' ', -1),
	TRIM( SUBSTR(Nome, LOCATE(' ', Nome)) ), 
	CPF, 
	Data_nascimento
FROM Cadastro_Aluno_Professor_Coordenador;

INSERT INTO Aluno(ID_Pessoa)
SELECT Pessoa.ID_Pessoa 
    FROM Pessoa JOIN Cadastro_Aluno_Professor_Coordenador
    ON Cadastro_Aluno_Professor_Coordenador.Nome = CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome)
WHERE Cadastro_Aluno_Professor_Coordenador.Aluno = 1;

INSERT INTO Professor(ID_Pessoa)
SELECT Pessoa.ID_Pessoa 
    FROM Pessoa JOIN Cadastro_Aluno_Professor_Coordenador
    ON Cadastro_Aluno_Professor_Coordenador.Nome = CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome)
WHERE Cadastro_Aluno_Professor_Coordenador.Professor = 1;

INSERT INTO Coordenador(ID_Pessoa)
SELECT Pessoa.ID_Pessoa 
    FROM Pessoa JOIN Cadastro_Aluno_Professor_Coordenador
    ON Cadastro_Aluno_Professor_Coordenador.Nome = CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome)
WHERE Cadastro_Aluno_Professor_Coordenador.Coordenador = 1;

INSERT INTO Curso(Nome, ID_Coordenador)
SELECT Cadastro_Cursos.Nome, Coordenador.ID_Coordenador
    FROM Cadastro_Cursos 
    JOIN Pessoa
    ON Cadastro_Cursos.Coordenador = CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome)
    JOIN Coordenador
    ON Coordenador.ID_Pessoa = Pessoa.ID_Pessoa;

INSERT INTO Matricula_Curso(ID_Aluno,ID_Pessoa, ID_Curso,Status)
SELECT Aluno.ID_Aluno, Pessoa.ID_Pessoa, Curso.ID_Curso, Cadastro_Maticulas_Cursos.Periodo
    FROM Curso
    JOIN Cadastro_Maticulas_Cursos
    ON Cadastro_Maticulas_Cursos.Curso = Curso.Nome
    JOIN Pessoa
    ON Cadastro_Maticulas_Cursos.Nome = CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome)
    JOIN Aluno
    ON Aluno.ID_Pessoa = Pessoa.ID_Pessoa;

INSERT INTO Disciplina(Nome,ID_Professor)
SELECT Cadastro_Disciplinas.Nome, Professor.ID_Professor
    FROM Cadastro_Disciplinas
    JOIN Pessoa
    ON Cadastro_Disciplinas.Professor = CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome)
    JOIN Professor
    ON Professor.ID_Pessoa = Pessoa.ID_Pessoa;

INSERT INTO Curso_Disciplina(ID_Curso, ID_Disciplina, Periodo, Carga_Horaria)
SELECT Curso.ID_Curso, Disciplina.ID_Disciplina, Cadastro_Disciplinas.Periodo, Cadastro_Disciplinas.Carga
    FROM Disciplina
    JOIN Cadastro_Disciplinas
    ON Disciplina.Nome = Cadastro_Disciplinas.Nome
    JOIN Curso
    ON Curso.Nome = Cadastro_Disciplinas.Curso;

INSERT INTO Disciplina_Executada(ID_Aluno, ID_Curso_Disciplina)
SELECT Matricula_Curso.ID_Aluno,Curso_Disciplina.ID_Curso_Disciplina 
    FROM Curso_Disciplina
    JOIN Matricula_Curso
    ON Curso_Disciplina.ID_Curso = Matricula_Curso.ID_Curso
    WHERE Curso_Disciplina.Periodo = Matricula_Curso.Status;