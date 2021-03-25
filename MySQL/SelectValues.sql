SELECT  Curso.Nome AS Curso, CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome) AS Nome, Matricula_Curso.ID_Aluno
    FROM Curso
    JOIN Matricula_Curso
    ON Curso.ID_Curso = Matricula_Curso.ID_Curso
    JOIN Pessoa
    ON Pessoa.ID_Pessoa = Matricula_Curso.ID_Pessoa;

SELECT DISTINCT  Disciplina.Nome AS Disciplina, Curso.Nome AS Curso, CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome) AS Aluno, Aluno.ID_Aluno
    FROM Curso_Disciplina
    JOIN Disciplina
    ON Disciplina.ID_Disciplina = Curso_Disciplina.ID_Disciplina
    JOIN Curso
    ON Curso_Disciplina.ID_Curso = Curso.ID_Curso
    JOIN Disciplina_Executada
    ON Disciplina_Executada.ID_Curso_Disciplina = Curso_Disciplina.ID_Curso_Disciplina
    JOIN Aluno
    ON Disciplina_Executada.ID_Aluno = Aluno.ID_Aluno
    JOIN Pessoa
    ON Aluno.ID_Pessoa = Pessoa.ID_Pessoa;

SELECT DISTINCT Disciplina.Nome AS Disciplina, CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome) AS Professor
    FROM Disciplina
    JOIN Professor
    ON Disciplina.ID_Professor = Professor.ID_Professor
    JOIN Pessoa
    ON Professor.ID_Pessoa = Pessoa.ID_Pessoa;

SELECT DISTINCT CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome) AS Coordenador, Disciplina.Nome AS Disciplina
    FROM Curso_Disciplina
    JOIN Disciplina
    ON Curso_Disciplina.ID_Disciplina = Disciplina.ID_Disciplina
    JOIN Curso
    ON Curso_Disciplina.ID_Curso = Curso.ID_Curso
    JOIN Coordenador
    ON Curso.ID_Coordenador = Coordenador.ID_Coordenador
    JOIN Pessoa
    ON Coordenador.ID_Pessoa = Pessoa.ID_Pessoa;

SELECT DISTINCT Coordenador.ID_Coordenador, CONCAT(Pessoa.Primeiro_nome," ",Pessoa.Ultimo_nome) AS Professor
    FROM Curso_Disciplina
    JOIN Curso
    ON Curso_Disciplina.ID_Curso = Curso.ID_Curso
    JOIN Coordenador
    ON Curso.ID_Coordenador = Coordenador.ID_Coordenador
    JOIN Disciplina
    ON Curso_Disciplina.ID_Disciplina = Disciplina.ID_Disciplina
    JOIN Professor
    ON Disciplina.ID_Professor = Professor.ID_Professor
    JOIN Pessoa
    ON Professor.ID_Pessoa = Pessoa.ID_Pessoa;