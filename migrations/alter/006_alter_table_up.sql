ALTER TABLE nota
ADD COLUMN materia_id INT NOT NULL,
ADD COLUMN aluno_id INT NOT NULL,
ADD CONSTRAINT fk_materia FOREIGN KEY(materia_id)
    REFERENCES materia(materia_id),
ADD CONSTRAINT fk_aluno FOREIGN KEY(aluno_id)
    REFERENCES aluno(aluno_id)