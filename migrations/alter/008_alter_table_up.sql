--7
UPDATE nota
SET status = 'REPROVADO'
WHERE aluno_id >= 9;

UPDATE exame
SET data_exame = '12/03/2021'
WHERE materia_id = 10;

UPDATE materia
SET nota_de_corte = 5
WHERE nota_de_corte > 7;

UPDATE professores
SET data_inicio = '01/02/2018'
WHERE professor_id = 1;

UPDATE aluno
SET nome = 'Matheus Almeida'
WHERE aluno_id = 1;