--1
SELECT professor.nome
FROM professores AS professor
WHERE professor.data_inicio LIKE '%1999%';

--2
SELECT * from professores AS professor
WHERE professor.especializacao LIKE 'Física%'
OR professor.especializacao LIKE 'Matemática%';

SELECT materia.nome, professor.nome
FROM professores AS professor, materia AS materia
WHERE aluno.curso_id = materia.curso_id 
    AND professor.professor_id = materia.materia_id 
    AND professor.especializacao LIKE 'Física%'
    OR professor.especializacao LIKE 'Matemática%'

--3
SELECT * FROM aluno
WHERE curso_id = 12
ORDER BY nome;

--4
SELECT * FROM aluno
WHERE nome LIKE '%Matheus%' AND curso_id = 7;

--5
SELECT nome FROM curso ORDER BY nome;

--6
SELECT aluno.aluno_id, aluno.nome
FROM aluno AS aluno, exame AS exame
WHERE exame.materia_id = 7 AND aluno.aluno_id = exame.aluno_id
ORDER BY aluno.nome;

--7
SELECT aluno.aluno_id, aluno.nome, curso.nome
FROM aluno as aluno, curso AS curso
WHERE aluno.nome LIKE 'M%'AND aluno.curso_id = curso.curso_id
ORDER BY aluno.nome, curso.nome ASC;

--8
SELECT professor.nome
FROM professores AS professor, materia AS materia
WHERE materia.materia_id = 9 AND professor.professor_id = materia.professor_id;

--9
SELECT aluno.nome
FROM aluno AS aluno, nota AS nota
WHERE nota.status = 'REPROVADO' and nota.aluno_id = aluno.aluno_id;

--10
SELECT
    COUNT(*)
FROM nota
WHERE status = 'REPROVADO';