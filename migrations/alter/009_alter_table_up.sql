--6
DELETE FROM exame
WHERE aluno_id IN (5, 8);

DELETE FROM nota
WHERE nota < 10;

DELETE FROM curso
WHERE area = 'tecnologia';